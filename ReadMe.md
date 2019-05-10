## KUBE_overview.pngにあるように11個のyamlファイルを作成する。

IngressService (Traffic)
ClusterIPService(multi-client)
ClusterIPService(multi-server)
ClusterIPService(redis)
ClusterIPService(postgres)
Deployment (multi-client)
Deployment (multi-server)
Deployment (multi-worker)
Deployment (Redis)
Deployment (Postgres)
Postgres PVC

kubectl apply -f k8s
kubectl get services
minikube ip
kubectl get pods
kubectl apply -f k8s
kubectl logs server-deployment-67db448f57-s85f8
minikube start
kubectl get storageclass
kubectl describe storageclass
kubectl apply -f k8s
kubectl get pods
kubectl get pods
kubectl get pods
kubectl get pods
kubectl get pv
kubectl get pvc

# Secret
kubectl create secret generic pgpassword --from-literal PGPASSWORD=12345asdf
kubectl get secrets

# NGINX INGRESS
https://github.com/kubernetes/ingress-nginx

# INgress-nginx for Mandatory Command (LOCAL)
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
minikube addons enable ingress

# for GKE
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/cloud-generic.yaml


# Dashboard
minikube dashboard


------ 

# Google CLoud 
