#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="smita0208/smita-flask-app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run smita-flask-app\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=smita-flask-app


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward smita-flask-app 8000:80

