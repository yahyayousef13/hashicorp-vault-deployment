#!/bin/bash
echo "Checking Kubernetes cluster..."
kubectl get nodes
kubectl get pods
kubectl get services
