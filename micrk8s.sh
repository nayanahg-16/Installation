#!/bin/bash
snap install microk8s -y
snap install kubectl -y
microk8s config > ~/.kube/config
microk8s start
microk8s config > ~/.kube/config
alias kubectl="micok8s kubectl"
