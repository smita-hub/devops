[![smita-hub](https://circleci.com/gh/smita-hub/devops.svg?style=svg)](https://circleci.com/gh/smita-hub/devops)


### Project Overview


In this project(Microservices at scale using AWS and Kubernetes), I have applied the skills I have acquired in this course to operationalize a Machine Learning Microservice API and I have used AWS cloud9 IDE for all my project work. 

There is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. To read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests the ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.



### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project below concepts are applied:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested




## Setup the Environment

* Create a virtualenv and activate it.
* Run `make install` to install the necessary dependencies required for running the application like Hadoling and from requirements.txt

### Running `app.py` in different cases.

1. Standalone in my local:  `python app.py`
2. To run in Docker:  `./run_docker.sh`
3. To run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Setup and Configure Minikube locally
* Create Flask app in Container
* Run via kubectl
