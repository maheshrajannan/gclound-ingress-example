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
# You will not install ingress each time. 
# AS long as you have something repeatable but less
# helm version <-- will get an error could not find tiller
# Read about K8 service account and how only sas are managed by K8.
# TODO: check if it exists. MINOR.
# https://cloud.google.com/community/tutorials/nginx-ingress-gke
echo "1/7 Create the service account tiller."
kubectl --namespace kube-system create serviceaccount tiller
sleep 60
kubectl --namespace kube-system get serviceaccount tiller
kubectl --namespace kube-system describe serviceaccount tiller

# Read about cluster role binding.
# TODO: check if it exists. MINOR.
# Create the cluster role binding.
echo "2/7 Create the cluster role binding."
kubectl create clusterrolebinding tiller-cluster-rule  --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
sleep 60
kubectl describe clusterrolebinding tiller-cluster-rule
kubectl get clusterrolebinding tiller-cluster-rule

echo "3/7 add helm charts stable"
helm repo add stable https://charts.helm.sh/stable
# TODO: check
# helm repo add nginx-stable https://helm.nginx.com/stable
# helm repo update
# https://cloud.google.com/community/tutorials/nginx-ingress-gke
echo "added helm charts stable"
sleep 60
echo "4/7 Create the service account."
helm init --service-account tiller
sleep 60
echo "5/7 patch deploy tiller, to fix the bug :( ."
kubectl --namespace kube-system patch deploy tiller-deploy  -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'

# TODO: check if it exists. MINOR.
echo "6/7 Deploy NGINX Ingress Controller with RBAC enabled"
helm install --name nginx-ingress stable/nginx-ingress --set rbac.create=true --set controller.publishService.enabled=true
# ==> v1/Deployment
# NAME                           READY  UP-TO-DATE  AVAILABLE  AGE
# nginx-ingress-controller       0/1    1           0          1s
# nginx-ingress-default-backend  0/1    1           0          1s
kubectl rollout status deployment nginx-ingress-controller
kubectl rollout status deployment nginx-ingress-default-backend
#kubectl --namespace default get services -o wide -w nginx-ingress-controller
kubectl --namespace default get services -o wide
echo "7/7 Check in GKE cloud console that there are no activity errors."

trap : 0

echo >&2 '
************
*** DONE installIngress ***
************'