#!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED deployBasicIngress.sh ***
***************
'
    echo "An error occurred in deployBasicIngress.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e
# TODO: move to another script. MEDIUM.
echo "1/5 Deploy the sample application ."
kubectl apply -f web-deployment.yaml 

echo "2/15 Deploy the sample Service ."
kubectl apply -f web-service.yaml 
kubectl get services

echo "3/5 Deploy the sample Service ."
kubectl apply -f basic-ingress.yaml 
# INFO: This is to prevent silent Errors.
kubectl rollout status deployment web

kubectl get ingress basic-ingress

# TODO:
echo "4/5 Sleeping and Curling to endpoint."
sleep 60
sh ingressIpPort.sh
echo "5/5 DONE deployBasicIngress."


trap : 0

echo >&2 '
************
*** DONE deployBasicIngress ***
************'