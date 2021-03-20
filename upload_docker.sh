#!/usr/bin/env bash

##@@ echo "Loading my.profile"
# Load my.profile to export application related variables
. /home/ec2-user/environment/devops/my.profile

echo "Docker ID and Image: $myrepo"
cat ~/my_credential.txt | docker login --username $docker_user --password-stdin &&\
    docker image tag $myapp_name $myrepo

docker push $myrepo