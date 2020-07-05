CommandsUsed.md

https://cloud.google.com/community/tutorials/nginx-ingress-gke

follow the one for with RBAC

gcloud container clusters create nginx-tutorial --num-nodes=2

Maheshs-MBP-3:gclound-ingress-example maheshrajannan$ helm version
Client: &version.Version{SemVer:"v2.16.9", GitCommit:"8ad7037828e5a0fca1009dabe290130da6368e39", GitTreeState:"clean"}
Error: could not find tiller
Maheshs-MBP-3:gclound-ingress-example maheshrajannan$ 


https://discourse.brew.sh/t/install-specific-version-of-kubernetes-helm/6342/5 -->failed

for installing nginx following gcloud suggestion

https://cloud.google.com/community/tutorials/nginx-ingress-gke

The gcloud one failed..without RBAC so try the one with RBAC option.

-->

https://medium.com/@madeeshafernando/error-release-name-failed-namespaces-default-is-forbidden-user-99b3b6cb2720

kubectl --namespace kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller-cluster-rule \
 --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

helm init --service-account tiller <-- from cloud.google.com nginx-ingress-gke

kubectl --namespace kube-system patch deploy tiller-deploy \
 -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'

 The last step patching the tiller-deploy helped.

kubectl apply -f resource-manifests/hello-app-dep.yaml 

kubectl expose deployment hello-app --port=8080

kubectl get pods

helm install --name nginx-ingress stable/nginx-ingress --set rbac.create=true --set controller.publishService.enabled=true

for me,

==> v1/Service
NAME                           TYPE          CLUSTER-IP     EXTERNAL-IP  PORT(S)                     AGE
nginx-ingress-controller       LoadBalancer  10.47.250.250  <pending>    80:31027/TCP,443:32467/TCP  2s
nginx-ingress-default-backend  ClusterIP     10.47.252.187  <none>       80/TCP      

==> v1/Service
NAME                           TYPE          CLUSTER-IP    EXTERNAL-IP  PORT(S)                     AGE
nginx-ingress-controller       LoadBalancer  10.7.248.226  pending      80:30890/TCP,443:30258/TCP  1s
nginx-ingress-default-backend  ClusterIP     10.7.245.75   none         80/TCP                      1s


for me,

Maheshs-MBP-3:Translator-k8s maheshrajannan$ kubectl get service nginx-ingress-controller
NAME                       TYPE           CLUSTER-IP      EXTERNAL-IP      PORT(S)                      AGE
nginx-ingress-controller   LoadBalancer   10.47.250.250   35.193.193.174   80:31027/TCP,443:32467/TCP   2m29s
Maheshs-MBP-3:Translator-k8s maheshrajannan$ 


NAME                       TYPE           CLUSTER-IP     EXTERNAL-IP      PORT(S)                      AGE
nginx-ingress-controller   LoadBalancer   10.7.248.226   35.226.162.176   80:30890/TCP,443:30258/TCP   3m

Maheshs-MBP-3:gclound-ingress-example maheshrajannan$ kubectl apply -f resource-manifests/ingress-res.yaml 
ingress.extensions/ingress-resource created
Maheshs-MBP-3:gclound-ingress-example maheshrajannan$ kubectl get ingress ingress-resource
NAME               HOSTS   ADDRESS          PORTS   AGE
ingress-resource   *       35.193.193.174   80      106s
Maheshs-MBP-3:gclound-ingress-example maheshrajannan$ 


Now it works.
others
https://medium.com/faun/ingress-controller-kubernetes-e215884318a5

brew install helm@2 <-- in mac because helm 3 has breaking changes
