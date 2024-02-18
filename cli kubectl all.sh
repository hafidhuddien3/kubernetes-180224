#!/bin/bash

# namespace

kubectl apply -f namespace

kubectl apply 
-f frontend-ns.yaml
-f backend-ns.yaml
-f mongodb-ns.yaml

# frontend

kubectl apply 
-f karsajobs-ui-service.yml
-f karsajobs-ui-deployment.yml
-n frontend

# backend

kubectl apply 
-f karsajobs-service.yml
-f karsajobs-deployment.yml
-n backend

# mongodb

kubectl apply 
-f mongo-configmap.yml
-f mongo-secret.yml
-f mongo-service.yml
-f mongo-statefulset.yml
-f mongo-pv-pvc.yml
-n mongodb