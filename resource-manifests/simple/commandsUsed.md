  helm version
  kubectl --namespace kube-system create serviceaccount tiller
  kubectl create clusterrolebinding tiller-cluster-rule  --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
  helm init --service-account tiller
  kubectl --namespace kube-system patch deploy tiller-deploy  -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
  kubectl apply -f web-deployment.yaml 
  kubectl apply -f web-service.yaml 
  kubectl apply -f basic-ingress.yaml 
  kubectl get ingress 