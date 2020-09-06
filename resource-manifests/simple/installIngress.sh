  #!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED installIngress.sh ***
***************
'
    echo "An error occurred in installIngress.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e

unset DOCKER_HOST
unset DOCKER_TLS_VERIFY
unset DOCKER_TLS_PATH

# TODO: works only one by one. add fail safety
# helm init. should not do this. agh!
# sleep 10
# helm version
# Read about K8 service account and how only sas are managed by K8.
# TODO: check if it exists. MINOR.
# https://cloud.google.com/community/tutorials/nginx-ingress-gke
echo "1/10 Create the service account tiller."
kubectl --namespace kube-system create serviceaccount tiller
sleep 60

# Read about cluster role binding.
# TODO: check if it exists. MINOR.
# Create the cluster role binding.
echo "2/10 Create the cluster role binding."
kubectl create clusterrolebinding tiller-cluster-rule  --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
sleep 10
echo "3/10 Create the service account."
helm init --service-account tiller
echo "4/10 patch deploy tiller, to fix the bug :( ."
kubectl --namespace kube-system patch deploy tiller-deploy  -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
sleep 60

# TODO: check if it exists. MINOR.
echo "5/10 Deploy NGINX Ingress Controller with RBAC enabled"
helm install --name nginx-ingress stable/nginx-ingress --set rbac.create=true --set controller.publishService.enabled=true
kubectl --namespace default get services -o wide -w nginx-ingress-controller
# TODO: move to another script. MEDIUM.
echo "6/10 Deploy the sample application ."
kubectl apply -f web-deployment.yaml 
kubectl apply -f web-service.yaml 
kubectl apply -f basic-ingress.yaml 
kubectl get ingress
sleep 30
kubectl get ingress
echo "When you face this error, The server encountered a temporary error and could not complete your request.<p>Please try again in 30 seconds. Try curl after 30 seconds"


trap : 0

echo >&2 '
************
*** DONE installIngress ***
************'