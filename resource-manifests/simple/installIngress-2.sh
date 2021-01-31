  #!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED installIngress2.sh ***
***************
'
    echo "An error occurred in installIngress2.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

unset DOCKER_HOST
unset DOCKER_TLS_VERIFY
unset DOCKER_TLS_PATH

echo "1/7 Create the app first"
kubectl create deployment hello-app --image=gcr.io/google-samples/hello-app:1.0

echo "2/7 Create service"
kubectl expose deployment hello-app --port=8080 --target-port=8080

echo "3/7 add helm charts stable"
helm version
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update

echo "4/7 install nginx-ingress"
helm install nginx-ingress nginx-stable/nginx-ingress

echo "5/7 verify nginx-ingress-nginx-ingress"
kubectl get deployment nginx-ingress-nginx-ingress
kubectl get service nginx-ingress-nginx-ingress
kubectl rollout status deployment nginx-ingress-nginx-ingress

echo "6/7 Check in GKE cloud console that there are no activity errors."
echo "is external ip present ?"
kubectl get service nginx-ingress-nginx-ingress
sleep 60

newIp=""
while [ -z $newIp ]; do
    sleep 5
    newIp=`kubectl get service nginx-ingress-nginx-ingress --output=jsonpath='{.status.loadBalancer.ingress[0].ip}'`
    echo "newIp : $newIp"
done

export NGINX_INGRESS_IP=$(kubectl get service nginx-ingress-nginx-ingress -ojson | jq -r '.status.loadBalancer.ingress[].ip')
echo $NGINX_INGRESS_IP

# ok, this is a better way to do find and replace, create template.yaml and replace ip
cat <<EOF > ingress-resource.yaml
apiVersion: networking.k8s.io/v1beta1
kind: Ingress
metadata:
  name: ingress-resource
  annotations:
    kubernetes.io/ingress.class: "nginx"
    nginx.ingress.kubernetes.io/ssl-redirect: "false"
spec:
  rules:
  - host: ${NGINX_INGRESS_IP}.xip.io
    http:
      paths:
      - backend:
          serviceName: hello-app
          servicePort: 8080
        path: /hello
EOF

kubectl apply -f ingress-resource.yaml

kubectl get ingress ingress-resource

curl http://$NGINX_INGRESS_IP.xip.io/hello

trap : 0

echo >&2 '
************
*** DONE installIngress ***
************'