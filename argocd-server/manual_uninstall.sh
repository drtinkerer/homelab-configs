#!/bin/bash

helm uninstall argo-cd -n argo-cd
kubectl delete crd applications.argoproj.io applicationsets.argoproj.io appprojects.argoproj.io argocdextensions.argoproj.io
