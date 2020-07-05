  237  ls
  238  sh RunTranslator.sh 
  239  sh StopTranslator.sh 
  240  pwd
  241  cd translator-frontend/
  242  clear
  243  ls
  244  clear
  245  ls
  246  ls *.sh
  247  sh InstallTranslatorFrontEndLocalNginx.sh 
  248  sh StopTranslatorFrontEndLocalNginx.sh 
  249  sh InstallTranslatorFrontEndNpm.sh 
  250  echo $my_pass | sudo -S sudo brew services start nginx
  251  echo $my_pass | sudo -S sudo brew services stop nginx
  252  echo $my_pass | sudo -S sudo brew services start nginx
  253  brew reinstall nginx
  254  sudo chown -R $(whoami) /usr/local/bin /usr/local/include /usr/local/share
  255  chmod u+w /usr/local/bin /usr/local/include /usr/local/share
  256  brew reinstall nginx
  257  sudo rm -rf /usr/local/Cellar/nginx/1.15.12.reinstall
  258  clear
  259  brew reinstall nginx
  260  cd ../
  261  clear
  262  ls *.sh
  263  sh RunTranslator.sh 
  264  brew reinstall nginx
  265  sh RunTranslator.sh 
  266  sh StopTranslator.sh 
  267  MindfulGoals101
  268  clear
  269  sh RunTranslator.sh 
  270  clear
  271  sh StopTranslator.sh 
  272  clear
  273  ls
  274  clear
  275  ls
  276  sh RunTranslatorDocker.sh 
  277  sh RunTranslatorDocker.sh
  278  sh StopTranslator.sh 
  279  MindfulGoals101
  280  ls *.sh
  281  sh RunTranslatorDocker.sh 
  282  clear
  283  ls *.sh
  284  ls *.sh
  285  sh StopAllContainers.sh 
  286  sh RunTranslatorDocker.sh 
  287  sh StopAllContainers.sh 
  288  sh RunTranslatorDocker.sh 
  289  sh StopAllContainers.sh 
  290  sh RunTranslatorDocker.sh 
  291  sh StopAllContainers.sh 
  292  sh StopAllContainers.sh 
  293  sh RunTranslatorDocker.sh 
  294  sh StopAllContainers.sh 
  295  sh RunTranslatorDocker.sh 
  296  sh RunTranslatorDocker.sh 
  297  sh StopAllContainers.sh 
  298  clear
  299  sh RunTranslatorDocker.sh 
  300  sh StopAllContainers.sh 
  301  sh StopAllContainers.sh 
  302  sh RunTranslatorDocker.sh 
  303  sh StopAllContainers.sh 
  304  sh RunTranslatorDocker.sh 
  305  sh StopAllContainers.sh 
  306  clear
  307  sh RunTranslatorDocker.sh 
  308  sh StopAllContainers.sh 
  309  ls *.sh
  310  minikube status
  311  minikube start
  312  minikube start
  313  exit
  314  minikube delete
  315  minikube install
  316  minikube status
  317  minikube start
  318  minikube delete
  319  brew reinstall minikube
  320  minikube start
  321  minikube delete
  322  minikube --vm-driver=virtualbox start
  323  clear
  324  minikube delete
  325  minikube --vm-driver=virtualbox start
  326  sh RunKubernetesDeployments.sh 
  327  minikube service translator-frontend-lb
  328  sh StopKubernetesDeployments.sh 
  329  sh RunKubernetesDeployments.sh 
  330  minikube stop
  331  minikube start
  332  minikube start
  333  sh RunKubernetesDeployments.sh 
  334  minikube stop
  335  minikube start
  336  minikube start
  337  sh RunKubernetesDeployments.sh 
  338  minikube stop
  339  minikube start
  340  kubectl get deployments
  341  cd ../
  342  kubectl apply -f resource-manifests/translator-frontend-deployment.yaml
  343  cd Translator-k8s/
  344  kubectl apply -f resource-manifests/translator-frontend-deployment.yaml
  345  kubectl get deployments
  346  kubectl create -f resource-manifests/service-translator-frontend-lb.yaml
  347  minikube service translator-frontend-lb
  348  kubectl get deployments
  349  kubectl get logs sa-logic
  350  kubectl get log sa-logic
  351  kubectl log sa-logic
  352  kubectl get deployments
  353  kubectl get services
  354  kubectl get log sa-logickubectl get pods
  355  kubectl get pods
  356  kubectl log sa-logic-74f988cff4-lkzwj
  357  kubectl logs sa-logic-74f988cff4-lkzwj
  358  minikube stop && minikube start
  359  sh RunKubernetesDeployments.sh 
  360  kubectl logs sa-web-app-858996745c-k98kn
  361  kubectl get pods
  362  kubectl logs sa-logic-74f988cff4-z8k4d
  363  curl 'http://192.168.99.107:32624/sentiment'   -H 'Referer: http://192.168.99.107:32086/'   -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36'   -H 'Content-Type: application/json'   --data-binary '{"sentence":"hi"}'   --compressed
  364  minikube service sa-web-app-lb --url| cut -d "/" -f 3-
  365  minikube stop && minikube start && sh RunKubernetesDeployments.sh 
  366  history | grep lb
  367  minikube service sa-web-app-lb --url| cut -d "/" -f 3-
  368  minikube stop && minikube start && sh RunKubernetesDeployments.sh 
  369  clear
  370  minikube stop && minikube start && sh RunKubernetesDeployments.sh 
  371  clear
  372  minikube stop && minikube start && sh RunKubernetesDeployments.sh 
  373  minikube stop && minikube start && sh RunKubernetesDeployments.sh 
  374  ls
  375  cd sa-logic/
  376  ls
  377  cd ../
  378  cd logs
  379  ls
  380  tail -f sa-logic.log 
  381  tail -f sa-webapp.log 
  382  ls
  383  tail -f translator-frontend.log 
  384  clear
  385  ls -lrt
  386  tail -f translator-frontend.log 
  387  tail -f translator-frontend.log 
  388  tail -f translator-frontend.log 
  389  minikube stop && minikube start && sh RunKubernetesDeployments.sh 
  390  minikube stop && minikube start && sh RunKubernetesDeployments.sh 
  391  minikube stop
  392  ls *.sh
  393  sh StopAllContainers.sh 
  394  sh RunKubernetesDeployments.sh 
  395  ls *.sh
  396  sh RunTranslator.sh 
  397  sh StopTranslator.sh 
  398  sh RunTranslatorDocker.sh 
  399  clear
  400  sh StopAllContainers.sh 
  401  clear
  402  sh RunTranslatorDocker.sh 
  403  sh StopAllContainers.sh 
  404  ls *.sh
  405  sh RunKubernetesDeployments.sh 
  406  history | grep minikube
  407  minikube stop && minikube start && sh RunKubernetesDeployments.sh
  408  minikube stop
  409  ls *.sh
  410  sh deleteGCloudCluster.sh 
  411  ls *.sh
  412  sh gCloudDeployment.sh 
  413  Y
  414  kubectl get service
  415  minikube service translator-frontend-lb
  416  sh deleteGCloudCluster.sh & sh gCloudDeployment.sh 
  417  clear
  418  sh deleteGCloudCluster.sh & sh gCloudDeployment.sh 
  419  exit
  420  ls -lrt
  421  tail -f translator-frontend.log 
  422  cd ../
  423  sh deleteGCloudCluster.sh &
  424  Y
  425  sh delete gcloudCluster.sh &
  426  clear
  427  history | grep minikube
  428  minikube start --memory 5120 --cpus=4 --vm-driver=virtualbox
  429  sh RunKubernetesDeployments.sh 
  430  minikube addons enable ingress
  431  clear
  432  vi webapp-ingress.yaml
  433  kubectl get svc
  434  kubectl get pods -n kube-system
  435  kubectl get svc
  436  minikube stop && minikube delete
  437  sh RunKubernetesDeployments.sh 
  438  minikube stop && minikube delete
  439  sh gCloudDeployment.sh 
  440  ls *.sh
  441  sh deleteGCloudCluster.sh 
  442  Y
  443  clear
  444  sls
  445  ls
  446  mv webapp-ingress.yaml resource-manifests/
  447  sh RunKubernetesDeployments.sh 
  448  ls
  449  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  450  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  451  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  452  history | grep ingress
  453  minikube addons enable ingress
  454  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  455  kubectl --version
  456  kubectl -version
  457  kubectl version
  458  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  459  kubectl get ingress
  460  kubectl delete test-ingress
  461  kubectl delete ingress test-ingress
  462  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  463  kubectl get ingress test-ingress
  464  kubectl get ingress sa-webapp-ingress
  465  kubectl apply -f resource-manifests/service-sa-web-app-np.yaml 
  466  /Volumes/VirtualBox/VirtualBox_Uninstall.tool ; exit;
  467  /Volumes/VirtualBox/VirtualBox_Uninstall.tool ; exit;
  468  /Volumes/VirtualBox/VirtualBox_Uninstall.tool ; exit;
  469  clear
  470  ls
  471  vi /etc/hosts
  472  sudo vi /etc/hosts
  473  kubectl apply -f resource-manifests/sa-web-app-service-np.yaml 
  474  kubectl get svc
  475  ls *.sh
  476  sh RunKubernetesDeployments.sh 
  477  minikube delete
  478  sh RunKubernetesDeployments.sh 
  479  brew reinstall virtualbox
  480  minikube stop
  481  minikube delete
  482  brew uninstall virtualbox
  483  brew uninstall VirtualBox
  484  /Volumes/VirtualBox/VirtualBox_Uninstall.tool ; exit;
  485  sh RunKubernetesDeployments.sh 
  486  clear
  487  /Volumes/VirtualBox/VirtualBox_Uninstall.tool ; exit;
  488  clear
  489  sh RunKubernetesDeployments.sh 
  490  gcloud container clusters create translator3 --num-nodes=1
  491  gcloud compute addresses describe sa-web-app-lb-ip --region us-central1
  492  gcloud compute addresses create sa-web-app-lb-ip --region us-central1
  493  gcloud compute addresses describe sa-web-app-lb-ip --region us-central1
  494  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  495  kubectl get ingress
  496  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  497  kubectl get ingress
  498  sudo vi /etc/hosts
  499  exit
  500  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  501  kubectl get ingress
  502  kubectl get svc
  503  ls
  504  sh RunKubernetesDeployments.sh 
  505  kubectl get ingress
  506  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  507  kubectl get ingress
  508  kubectl get svc
  509  kubectl get ingress
  510  minikube service sa-web-app-lb --url
  511  ls *.sh
  512  sh StopKubernetesDeployments.sh 
  513  ls *.sh
  514  sh gCloudDeployment.sh 
  515  kubectl apply -f resource-manifests/service-sa-web-app-lb.yaml 
  516  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  517  kubectl get ingress
  518  kubectl get ingress
  519  kubectl get ingress
  520  kubectl get ingress
  521  kubectl get ingress
  522  kubectl get svc
  523  kubectl get svc
  524  kubectl get ingress
  525  kubectl get ingress
  526  kubectl get ingress
  527  helm --version
  528  helm
  529  brew install helm
  530  clear
  531  kubectl get sc
  532  kubectl get svc
  533  kubectl get ingress
  534  sudo vi /etc/hosts
  535  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  536  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  537  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  538  sudo vi /etc/hosts
  539  kubectl get ingress
  540  kubectl get ingress
  541  kubectl describe ingress translator-k8s
  542  kubectl describe ingress sa-webapp-ingress
  543  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  544  kubectl describe ingress sa-webapp-ingress
  545  gcloud compute addresses create web-static-ip --global
  546  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  547  kubectl describe ingress sa-webapp-ingress
  548  kubectl get ingress
  549  kubectl delete ingress sa-webapp-ingress
  550  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  551  kubectl get ingress
  552  kubectl get ingress
  553  kubectl get ingress
  554  kubectl get ingress
  555  kubectl get ingress
  556  kubectl describe ingress
  557  kubectl get ingress
  558  kubectl delete ingress sa-webapp-ingress
  559  kubectl apply -f resource-manifests/webapp-basic-ingress.yaml 
  560  kubectl apply -f resource-manifests/webapp-basic-ingress.yaml 
  561  kubectl get ingress basic-ingress
  562  kubectl get ingress sa-webapp-basic-ingress
  563  kubectl get ingress sa-webapp-basic-ingress
  564  kubectl describe ingress sa-webapp-basic-ingress
  565  kubectl get ingress sa-webapp-basic-ingress
  566  kubectl get ingress sa-webapp-basic-ingress
  567  kubectl apply -f resource-manifests/webapp-basic-ingress.yaml 
  568  kubectl get ingress sa-webapp-basic-ingress
  569  kubectl delete ingress sa-webapp-basic-ingress
  570  kubectl apply -f resource-manifests/webapp-basic-ingress.yaml 
  571  kubectl get ingress sa-webapp-basic-ingress
  572  kubectl get ingress sa-webapp-basic-ingress
  573  kubectl get ingress sa-webapp-basic-ingress
  574  gcloud compute addresses describe ADDRESS --global
  575  gcloud compute addresses describe web-static-ip --global
  576  kubectl delete ingress sa-webapp-basic-ingress
  577  kubectl apply -f resource-manifests/webapp-basic-ingress.yaml 
  578  kubectl get ingress sa-webapp-basic-ingress
  579  kubectl get ingress sa-webapp-basic-ingress
  580  kubectl get ingress sa-webapp-basic-ingress
  581  kubectl get ingress sa-webapp-basic-ingress
  582  kubectl get ingress sa-webapp-basic-ingress
  583  clear
  584  gcloud compute addresses describe web-static-ip --global
  585  kubectl get ingress sa-webapp-basic-ingress
  586  kubectl apply -f resource-manifests/sa-web-app-service-np.yaml 
  587  kubectl apply -f resource-manifests/webapp-basic-ingress.yaml 
  588  kubectl get ingress sa-webapp-basic-ingress
  589  kubectl get ingress sa-webapp-basic-ingress
  590  kubectl get ingress
  591  kubectl delete ingress sa-webapp-basic-ingress
  592  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  593  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  594  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  595  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  596  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  597  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  598  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  599  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  600  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  601  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  602  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  603  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  604  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  605  kubect get ingress
  606  kubectl get ingress
  607  kubectl get ingress
  608  sleep 1
  609  sleep 100
  610  kubectl get ingress
  611  kubectl get svc
  612  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  613  kubectl get ingress
  614  kubectl describe ingress sa-webapp-ingress
  615  kubectl get ingress
  616  kubectl delete ingress sa-webapp-ingress
  617  kubectl apply -f resource-manifests/webapp-ingress.yaml 
  618  kubectl get ingress
  619  kubectl get ingress
  620  ls *.sh
  621  sh deleteGCloudCluster.sh 
  622* kubectl 
  623  kubectl get svc
  624  kubectl delete svc sa-web-app-np
  625  kubectl delete svc sa-web-app
  626  kubectl delete svc sa-logic
  627  kubectl get deployment
  628  kubectl get deployments
  629  sh deleteGCloudCluster.sh 
  630  helm install stable/nginx-ingress --name routing --namespace kube-system --set rbac.create=false
  631  helm -version
  632  helm -v
  633  helm --v
  634  which helm
  635  kubectl get pods -o-wide
  636  kubectl get pods -o -wide
  637  sh deleteGCloudCluster.sh 
  638  Y
  639  sh gCloudDeployment.sh 
  640  helm init
  641  helm --help
  642  helm --help | grep init
  643  helm install stable/nginx-ingress --name routing --namespace kube-system --set rbac.create=false
  644  brew reinstall helm
  645  helm init
  646  kubectl cluster-info
  647  helm init
  648  helm version
  649  helm3 install nginx stable/nginx-ingress --namespace nginx --set rbac.create=true --set controller.publishService.enabled=true
  650  helm install nginx stable/nginx-ingress --namespace nginx --set rbac.create=true --set controller.publishService.enabled=true
  651  brew uninstall helm
  652  brew install helm@2
  653  clear
  654  ls
  655  ls
  656  ls
  657  clear
  658  helm init
  659  which helm
  660  brew install helm@2
  661  helm@2 init
  662  helm -v
  663  brew link --force helm@2
  664  helm init
  665  helm install stable/nginx-ingress --name routing --namespace kube-system --set rbac.create=false
  666  kubectl get deployments -n kube-system
  667  kubectl delete deployment tiller-deploy -n kube-system
  668  helm install stable/nginx-ingress --name routing --namespace kube-system --set rbac.create=false
  669  helm init
  670  helm init --service-account tiller --history-max 200 --upgrade
  671  clear
  672  helm install stable/nginx-ingress --name routing --namespace kube-system --set rbac.create=false
  673  kubectl get deployments -n kube-system
  674  vi rbac.yaml
  675  kubectl apply -f rbac.yaml 
  676  helm init --service-account tiller --history-max 200 --upgrade
  677  helm install stable/nginx-ingress --name routing --namespace kube-system --set rbac.create=false
  678  ls *.sh
  679  sh gCloudDeployment.sh 
  680  helm init
  681  kubectl get deployments -n kube-system
  682  kubectl get pods -n kube-system -w
  683  kubectl get pods -n kube-system -w | grep nginx
  684  kubectl get pods -n kube-system -w
  685  helm install --name nginx-ingress stable/nginx-ingress
  686  kubectl get clusterrolebinding
  687  kubectl get clusterrolebinding tiller-cluster-rule
  688  kubectl get clusterrolebinding | more
  689  brew uninstall helm@2
  690  curl -o get_helm.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get
  691  chmod +x get_helm.sh
  692  ./get_helm.sh
  693  helm init
  694  helm init
  695  kubectl get deployments -n kube-system
  696  kubectl run hello-app --image=gcr.io/google-samples/hello-app:1.0 --port=8080
  697  kubectl expose deployment hello-app
  698  kubectl expose deployment hello-app
  699  kubectl get deployments
  700  kubectl get deployment
  701  kubectl get deployment -o wide
  702  kubectl get deployment -o wide
  703  kubectl run hello-app --image=gcr.io/google-samples/hello-app:1.0 --port=8080
  704  kubectl get pods
  705  kubectl create deployment hello-app --image=gcr.io/google-samples/hello-app:1.0
  706  clear
  707  kubectl get deployment hello-app -o yaml
  708  kubectl get deployment hello-app -o yaml > resource-manifests/hello-app.yaml
  709  vi resource-manifests/hello-app.yaml 
  710  mv resource-manifests/hello-app.yaml resource-manifests/hello-app-dep.yaml 
  711  vi resource-manifests/hello-app-dep.yaml 
  712  vi resource-manifests/hello-app-dep.yaml 
  713  kubectl apply -f resource-manifests/hello-app-dep.yaml 
  714  kubectl get pods
  715  kubectl delete pod hello-app
  716  kubectl expose deployment hello-app
  717  kubectl expose deployment hello-app --port=8080
  718  helm install --name nginx-ingress stable/nginx-ingress
  719  clear
  720  kubectl create serviceaccount --namespace kube-system tiller
  721  kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
  722  helm init --service-account tiller
  723  helm install --name nginx-ingress stable/nginx-ingress --set rbac.create=true --set controller.publishService.enabled=true
  724  kubectl --namespace kube-system create serviceaccount tiller
  725  kubectl create clusterrolebinding tiller-cluster-rule  --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
  726  kubectl --namespace kube-system patch deploy tiller-deploy  -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
  727  helm list
  728  helm repo update
  729  helm install --name nginx-ingress stable/nginx-ingress
  730  kubectl get service nginx-ingress-controller
  731  vi resource-manifests/ingress-ex.yaml
  732  vi resource-manifests/ingress-ex.yaml
  733  kubectl apply -f resource-manifests/ingress-ex.yaml 
  734  kubectl get ingress ingress-resource
  735  kubectl get service nginx-ingress-controller
  736  history > history.md
