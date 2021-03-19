#!/usr/bin/env bash
myrepo="smita0208/machine-learning-model"

kubectl run machine-learning-model\
    --image=$myrepo\
    --port=80 --labels app=machine-learning-model

#kubectl get pods
# List pods Sorted by Restart Count
kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'

kubectl port-forward machine-learning-model 8000:80