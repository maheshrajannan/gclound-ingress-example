# gclound-ingress-example

https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer


hmmm...for what i was trying to do, altoghether a different method is needed.

don't try to tweak without doing a functional google search..

When i try to use nginx ingress for API re-routing, it will not work because the API payload is not being passed to the actual service...nginx is only transferring the form params.

SUPER!!!

This is what i need. rinormalwauki is great.

https://www.orange-networks.com/blogs/210-ingress-controller-simplified-routing-in-kubernetes

TODO:#1

Please note: by default, Tiller is deployed with an insecure 'allow unauthenticated users' policy.
To prevent this, run `helm init` with the --tiller-tls-verify flag.
For more information on securing your installation see: https://v2.helm.sh/docs/securing_installation/

TODO:#2

It may take a few minutes for the LoadBalancer IP to be available.
You can watch the status by running 'kubectl --namespace default get services -o wide -w nginx-ingress-controller'

TODO:#3
Maheshs-MBP-3:GKE maheshrajannan$ gcloud compute addresses create translator-web \
>     --global \
>     --ip-version IPV4
Created [https://www.googleapis.com/compute/v1/projects/translator-258700/g

https://cloud.google.com/kubernetes-engine/docs/concepts/ingress-xlb

helm repo add stable https://charts.helm.sh/stable

https://cloud.google.com/compute/docs/ip-addresses/reserve-static-external-ip-address

gcloud compute addresses create ADDRESS_NAME \
    --global \
    --ip-version [IPV4 | IPV6]

gcloud compute addresses create ingress-static-ip --global --ip-version IPV6

Created [https://www.googleapis.com/compute/v1/projects/translator-258700/global/addresses/ingress-static-ip].    

Maheshs-MBP-3:simple maheshrajannan$ kubectl get ingress
NAME            HOSTS   ADDRESS        PORTS   AGE
basic-ingress   *       34.72.76.129   80      9s


34.117.136.110

http://34.117.136.110:80

http://34.117.136.110:80

4/5 Sleeping and Curling to endpoint.
NAME            HOSTS   ADDRESS          PORTS   AGE
basic-ingress   *       34.117.136.110   80      61s

IPv6 addresses can only be global and can only be used with global HTTP(S), SSL proxy, and TCP proxy load balancers.

Maheshs-MBP-3:simple maheshrajannan$ gcloud compute addresses list
NAME               ADDRESS/RANGE   TYPE      PURPOSE  NETWORK  REGION  SUBNET  STATUS
ingress-static-ip  34.117.136.110  EXTERNAL                                    RESERVED
translator-web     34.117.111.50   EXTERNAL                                    RESERVED
Maheshs-MBP-3:simple maheshrajannan$ 

Maheshs-MBP-3:simple maheshrajannan$ gcloud compute addresses delete translator-web --global

Maheshs-MBP-3:simple maheshrajannan$ gcloud compute addresses delete ingress-static-ip --global

address: '2600:1901:0:cd55::'

Maheshs-MBP-3:simple maheshrajannan$ gcloud compute addresses describe ingress-static-ip
For the following address:
 - [ingress-static-ip]

TODO: helm 3

https://github.com/kubernetes/ingress-nginx/tree/master/charts/ingress-nginx

DONE: helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

TODO: update and test translator also.

Updates are available for some Cloud SDK components.  To install them,
please run:
  $ gcloud components update

TODO: tiller tls verify flag

$HELM_HOME has been configured at /Users/maheshrajannan/.helm.

Tiller (the Helm server-side component) has been installed into your Kubernetes Cluster.

Please note: by default, Tiller is deployed with an insecure 'allow unauthenticated users' policy.
To prevent this, run `helm init` with the --tiller-tls-verify flag.
For more information on securing your installation see: https://v2.helm.sh/docs/securing_installation/

TODO:

https://cloud.google.com/community/tutorials/nginx-ingress-gke

helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update

TODO: DOING
upgrading gcloud components as newer versions of gcloud comes with helm

To revert your SDK to the previously installed version, you may run:
  $ gcloud components update --version 295.0.0

  brew install helm