##@@ echo "Loading my.profile"
# Load my.profile to export the application related variables
. /home/ec2-user/environment/devops/my.profile


podrun()
{
    kubectl run $myapp_name\
    --image=$myrepo\
    --port=80 --labels app=$myapp_name

}

podinfo()
{
    kubectl get pods
}

poddetail()
{
    kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'
}

portforward()
{
    kubectl port-forward $myapp_name $Port1:80
}