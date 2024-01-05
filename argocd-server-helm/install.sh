#!/bin/bash
helm install -f ./values.yaml argo-cd argo/argo-cd -n argo-cd --version 5.52.0 --create-namespace
