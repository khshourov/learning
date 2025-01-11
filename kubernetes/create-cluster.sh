#!/bin/bash

minikube delete
unset KUBECONFIG

minikube start \
--profile=kubernetes-cluster \
--memory=6144 \
--cpus=4 \
--disk-size=30g \
--kubernetes-version=v1.26.1 \
--driver=docker \
--ports=8080:80 --ports=8443:443 \
--ports=30080:30080 --ports=30443:30443

minikube update-context

minikube profile kubernetes-cluster
minikube addons enable ingress
minikube addons enable metrics-server
