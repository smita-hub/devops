#!/usr/bin/env bash

myrepo="smita0208/machine-learning-model"

echo "Docker ID and Image: $myrepo"
cat ~/my_credential.txt | docker login --username smita0208 --password-stdin &&\
    docker image tag machine-learning-model $myrepo

docker push $myrepo