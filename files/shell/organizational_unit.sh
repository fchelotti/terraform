#!/bin/bash

# create_cluster.sh
# Version: 1.0
# Descripcion: Script to create a cron job to copy organization-unit.json file to the Jenkins pod in Kubernetes cluster.
# SO: RedHat 8

# Variables
TERRAFORM_PATH=/root/repos/terraform
JSON_PATH=/root/repos/terraform/files/json
JENKINS_PATH=/var/jenkins_home/files/

# Update repository from GitHub
if [ -d $TERRAFORM_PATH ]; then
    cd $TERRAFORM_PATH
    git checkout develop
    git pull
else
    mkdir -p /root/repos
    cd /root/repos
    git clone git@github.com:fchelotti/terraform.git
fi

# Identify Jenkins pod name
POD_NAME=$(kubectl get pods -n jenkins | grep jenkins | awk '{print $1}')

# Copy organization-unit.json file to Jenkins pod
kubectl cp $JSON_PATH/organization-unit.json jenkins/$POD_NAME:$JENKINS_PATH
