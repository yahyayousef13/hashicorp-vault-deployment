# hashicorp-vault-deployment
Deployment of HashiCorp Vault using Docker, Kubernetes, and Jenkins CI/CD Pipeline
# HashiCorp Vault Deployment

## Overview
This project automates the deployment of HashiCorp Vault using Docker, Kubernetes, and Jenkins CI/CD pipelines.

## Prerequisites
- Docker
- Kubernetes (Minikube or AWS EKS)
- Jenkins with required plugins
- JFrog Artifactory or Docker Hub account

## Setup
1. Clone the repository:
git clone https://github.com/username/hashicorp-vault-deployment.git cd hashicorp-vault-deployment

markdown
Copy code


2. Build Docker Image:
docker build -t hashicorp-vault:latest ./docker

css
Copy code


3. Push to Repository:
docker push <jfrog-url>/hashicorp-vault:latest

css
Copy code


4. Deploy to Kubernetes:

kubectl apply -f k8s/

markdown
Copy code

## Pipeline Execution
- Configure Jenkins with this repository.
- Use `Jenkinsfile` for CI/CD automation.

## Troubleshooting
- Verify Docker and Kubernetes setups:
docker ps kubectl get pods

Copy code

6. Commit and Push Changes

Step 7: Add and Push Files to GitHub

bash
Copy code
git add .
git commit -m "Initial project setup for Vault deployment"
git push origin main