#!/usr/bin/env bash

##@@ echo "Loading my.profile"
# Load my.profile to export the application related variables
. /home/ec2-user/environment/devops/my.profile

docker build --tag=$myapp_name .
docker image ls -a
docker run -p $Port1:80 $myapp_name