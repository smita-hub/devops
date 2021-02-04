[![smita-hub](https://circleci.com/gh/smita-hub/devops.svg?style=svg)](https://circleci.com/gh/smita-hub/devops)

Operationalize-a-Machine-Learning-Microservice-API
Deploy a containerized Python flask application to serve out predictions (inference) about housing prices through API calls. It uses a a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features.

Project Tasks
Test your project code using linting
Complete a Dockerfile to containerize this application
Deploy your containerized application using Docker and make a prediction
Improve the log statements in the source code for this application
Configure Kubernetes and create a Kubernetes cluster
Deploy a container using Kubernetes and make a prediction
Upload a complete Github repo with CircleCI to indicate that your code has been tested
Getting Started
Setup the Environment
Create a virtualenv and activate it
Run make install to install the necessary dependencies
Running app.py
Standalone: python app.py
Run in Docker: ./run_docker.sh
Run in Kubernetes: ./run_kubernetes.sh
Kubernetes Steps
Setup and Configure Docker locally
Setup and Configure Kubernetes locally
Create Flask app in Container
Run via kubectl
