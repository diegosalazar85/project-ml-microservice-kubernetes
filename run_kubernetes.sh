#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="diegosalazar85/project-ml-microservices-kubernetes"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project-ml-microservices-kubernetes\
    --image=$dockerpath\
    --port=80 --labels app=project-ml-microservices-kubernetes

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a hos
kubectl port-forward project-ml-microservices-kubernetes 8000:80