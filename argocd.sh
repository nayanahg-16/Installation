argocd installation on cluster:

kubectl create namespace argocd
kubectl apply -n argocd \
  -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl get pods -n argocd
kubectl get svc -n argocd
kubectl edit svc argocd-server -n argocd
change it NodePort
------------------------------------------------------------------------------------------

argo cd ui login credentials:

kubectl get secret argocd-initial-admin-secret -n argocd \
-o jsonpath="{.data.password}" | base64 --decode
5bOrZ7cfCCaYDc9troot@ip-10-0-8-0:~# 

argocd ui password
username: admin
password: 5bOrZ7cfCCaYDc9t

---------------------------------------
cluster info for application 
cluster url:https://kubernetes.default.svc
Repo URL: https://github.com/nayanahg-16/Jenkins-Zero-To-Hero
