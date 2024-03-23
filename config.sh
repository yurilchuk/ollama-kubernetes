#!/bin/bash

# Baixe o arquivo yaml
curl -O https://raw.githubusercontent.com/yurilchuk/ollama-kubernetes/main/ollama-kube.yaml

# Obtenha os valores do ConfigMap
NFS_PATH=$(kubectl get configmap ollama-config -o jsonpath='{.data.nfs-path}')
SERVER_IP=$(kubectl get configmap ollama-config -o jsonpath='{.data.server-ip}')
STORAGE=$(kubectl get configmap ollama-config -o jsonpath='{.data.storage}')

# Substitua as variáveis no arquivo yaml
sed -i "s|<NFS_PATH>|${NFS_PATH}|g" ollama-kube.yaml
sed -i "s|<SERVER_IP>|${SERVER_IP}|g" ollama-kube.yaml
sed -i "s|<STORAGE>|${STORAGE}|g" ollama-kube.yaml

# Aplique o arquivo yaml
kubectl apply -f ollama-kube.yaml