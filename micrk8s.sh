#!/bin/bash
snap install microk8s -y
snap install kubectl -y

microk8s start
microk8s config > ~/.kube/config
alias kubectl="micok8s kubectl"

================================================

for agocd

mkdir -p ~/.kube
microk8s config > ~/.kube/config
chmod 600 ~/.kube/config
kubectl get nodes
curl -sL https://github.com/operator-framework/operator-lifecycle-manager/releases/download/v0.38.0/install.sh | bash -s v0.38.0
kubectl create -f https://operatorhub.io/install/argocd-operator.yaml
kubectl get csv -n operators

