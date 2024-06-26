# MultiCloudDevOpsProject

In This repository you will find the infrastructure provisioning, configuration management, containerization, CI/CD pipeline setup, monitoring, logging, and AWS integration for deploying an application using Terraform, Ansible, Docker, and Jenkins.

## Table of Contents

1. [Infrastructure Provisioning with Terraform](#infrastructure-provisioning-with-terraform)
2. [Configuration Management with Ansible](#configuration-management-with-ansible)
3. [Containerization with Docker](#containerization-with-docker)
4. [Continuous Integration with Jenkins](#continuous-integration-with-jenkins)
5. [Automated Deployment Pipeline](#automated-deployment-pipeline)
6. [Monitoring and Logging](#monitoring-and-logging)
7. [AWS Integration](#aws-integration)

## !! Terraform !!

### We should always provision our resources as a first step of any project and we do that by using terraform, I have used modules and variables to make the scripts as clean and reuseable as possible ! 
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/terra1.jfif" width="1000" >
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/terra2.jfif" width="1000" >
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/terra3.jfif" width="1000" >

### and after applying the remote backend

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/backend1.PNG" width="1000" >
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/backend2.PNG" width="1000" >
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/backend3.jfif" width="1000" >
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/backend4.jfif" width="1000" >

### We check our mointoring Module

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/monitoring1.PNG" width="1000" >
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/monitoring2.PNG" width="1000" >

## !! Ansible !! 
### after provisioning resources we need to configure them ,and that's why we need Ansible ! 
# (inventory)
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/ansible1.PNG" width="1000" >
# (ansible.cfg) 
### "note we're using the same key we used with EC2"

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/ansible2.PNG" width="1000" >

### Next we use Ansible roles to configura each of our tools ! 

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/ansible2.PNG" width="1000" >

### We run the playbook and wait for the confirmation that all tasks were made !

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/ansible3.PNG" width="1000" >

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/ansible4.PNG" width="1000" >

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/ansible5.jfif" width="1000" >

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/ansible6.jfif" width="1000" >

## !! Docker !!

### Docker it was installed and configured with Ansible 
### we only need the dockerhub credentials for jenkins integration ! 

## !! MiniKube !! 

### we need to install minkube to deploy the app on it and it uses the docker as a driver

<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/minkube1.jfif" width="1000" >

## !! jenkins !! 
### we login to jenkins and install the required plugins Called Sonarqube scanner 
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/jenkins1.PNG" width="1000">

### we then set up credentials !
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/jenkins2.PNG" width="1000" >

### we need 3 credentials in total ! 
#### - DockerHub is used to push the image 
#### - Sonarqube is used to connect to sonarqube server 
#### - github is used to connect to github and pull the app

### we then set up shared library and create the pipeline !
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/jenkins3.PNG" width="1000" >
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/jenkins4.PNG" width="1000" >

### Finally we run the pipeline
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/jenkins5.PNG" width="1000" >
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/jenkins6.PNG" width="700" >

### checking the sonarqube server for the code review
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/sonar1.jfif" width="1000" >

### checking the cluster for the app
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/app1.jfif" width="1000" >

### accessing the app
<img src="https://github.com/norhanhatem0187/MultiCloudDevOpsProject/blob/dev/screenshots/app2.jfif" width="1000" >

# And by this we deployed the application !

