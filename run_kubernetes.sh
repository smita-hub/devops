#!/usr/bin/env bash

##@@ echo "Loading my.profile and shortcut.sh"
# Task1: Load my.profile to export application related variables like dockerid , app name ,port etc.
. /home/ec2-user/environment/devops/my.profile
. /home/ec2-user/environment/devops/shortcut.sh

# Task2: Run pod using the alias created in shortcut.sh
podrun

#Task3.a: List pods using the alias created in shortcut.sh
podinfo
# Task3.b List pods Sorted by Restart Count using the alias created in shortcut.sh
poddetail

#Task 4 :Forward ports to the host using the alias created in shortcut.sh
portforward