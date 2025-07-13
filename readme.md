
# Particle41 DevOps Assessment

Welcome to my submission for the Particle41 DevOps Team Challenge. This repository demonstrates a full DevOps lifecycle — from writing a minimal microservice to containerizing it, deploying it to AWS using Terraform, and setting up CI/CD through Jenkins.

---

## 📁 Repository Structure

```
particle41/
├── app/                    # Application code and Dockerfile
│   ├── cicd/               # Jenkins setup and 
│   │   └── terraform/      # Terraform to create Jenkins instance
│   │   └── Jenkinsfile     
│   ├── .dockerignore
│   ├── Dockerfile
│   ├── index.js
│   └── package.json
├── terraform/              # Terraform to create VPC, ECS, ALB, etc.
└── .gitignore
└── readme.md

```

---

## ✅ Objective

Build and deploy a simple web service called `SimpleTimeService`, which:

- Returns a JSON response with the visitor’s IP and the current timestamp
- Is containerized using Docker and published to DockerHub and ECR
- Runs as a non-root user
- Is deployed on ECS via Terraform infrastructure
- Uses Jenkins for CI/CD pipeline

---

## 🚀 Live App Endpoint

Access the app (replace `<PUBLIC-IP>` with actual Jenkins server IP):

```
http://<PUBLIC-IP>:8080
```

---

## 🛠️ Prerequisites

To deploy and test the project, install the following tools:

- AWS account
- Dockerhub account
- Terraform installation
- Git installation

---

## 🔐 Credentials Setup

Make sure you configure the following credentials in Jenkins:

- **AWS Credentials:** Access Key ID & Secret Key 
- **GitHub Credentials:** Username and Personal Access Token 
- **DockerHub Credentials:** Username and Password

---

## 🧑‍💻 Step-by-Step Deployment Guide

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/<your-username>/particle41.git
cd particle41
```

---

### 2️⃣ Deploy Jenkins Infrastructure (for CI/CD)

Navigate to `app/cicd/terraform` and run:

```bash
terraform init
terraform apply
```

> This will create a Jenkins EC2 instance 

---

### 3️⃣ Deploy Main Infrastructure (ECS, VPC, ALB, etc.)

Navigate to the `terraform/` directory:

```bash
terraform init
terraform apply
```

> This sets up:
> - VPC with 2 public & 2 private subnets  
> - ECS cluster & task definition  
> - Application Load Balancer (ALB)  
> - ECS service in private subnets  
> - IAM roles, Security Groups, and auto-scaling group 

---

### 4️⃣ Set Up Jenkins CI/CD Pipeline

- Open Jenkins at `http://<jenkins-instance-ip>:8080`
- Install plugins:
  - Docker Pipeline
  - AWS Credentials
  - GitHub
- Create credentials (AWS, DockerHub, GitHub)
- Create a new Pipeline job
- Use the pipeline script from `app/cicd/Jenkinsfile`

Pipeline steps:
- Clone code from GitHub
- Install Node.js dependencies
- Build Docker image
- Push to DockerHub and Amazon ECR
- Deploy container to ECS 

---


### 🔎 Access App

Visit: `http://<jenkins_ip>:8081`

Example Response:

```json
{
  "timestamp": "2025-07-13T13:57:00.123Z",
  "ip": "127.0.0.1"
}
```

---

## 📦 DockerHub Image

Image pushed to DockerHub:
```
docker pull <your-dockerhub-username>/simpletimeservice:latest
```

---

## 📄 Terraform Best Practices

- Used variables and `terraform.tfvars`
- Output defined for ALB URL
- Used remote state backend (optional for extra credit)
- Code is modular and readable

---

## 🏆 Extra Credit Implemented

- ✅ CI/CD with Jenkins
- ✅ Image pushed to DockerHub & ECR
- ✅ Terraform infrastructure for Jenkins and app
- ✅ Application runs as non-root user in Docker

---

## 📌 Notes

- Application is a Node.js server
- Dockerfile uses non-root user for security
- No secrets are committed to GitHub
- Designed with IaC & DevOps best practices

---

## 📧 Submission

Please clone the repository from:  
🔗 https://github.com/<eswar-sai-kumar>/particle41

If you have any questions or issues, feel free to contact me.

Mail: eswarsaikumarlakkimsetti@gmail.com
LinkedIn: https://www.linkedin.com/in/lakkimsetti-eswar-sai-kumar/

---

**Made by Lakkimsetti Eswar Sai Kumar**
