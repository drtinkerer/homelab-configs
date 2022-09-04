#!/bin/bash

echo "[TASK 1] Pull required containers"
kubeadm config images pull >/dev/null 2>&1

echo "[TASK 2] Initialize Kubernetes Cluster"
kubeadm init --apiserver-advertise-address=10.0.0.11 --control-plane-endpoint="10.0.0.10:6443" --upload-certs --pod-network-cidr=192.168.0.0/16
