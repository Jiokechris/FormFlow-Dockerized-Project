# FormFlow Capstone – Automated AWS Deployment with Terraform, Docker & GitHub Actions

## Project Overview

This project demonstrates the implementation of a complete Infrastructure as Code (IaC) and Continuous Integration/Continuous Deployment (CI/CD) pipeline for deploying a containerized three-tier web application on Amazon Web Services (AWS).

The infrastructure is provisioned using **Terraform**, application components are containerized with **Docker**, images are stored in **Docker Hub**, and deployments are automated using **GitHub Actions** with **SSH-based deployment** to an Amazon EC2 instance.

The project showcases modern DevOps practices including infrastructure automation, containerization, version-controlled deployments, and continuous delivery.

---

# Architecture

```
                 Developer

                     │

             Git Push (main)

                     │

                     ▼

              GitHub Repository

                     │

                     ▼

             GitHub Actions CI/CD

                     │

      ┌──────────────┴──────────────┐

      ▼                             ▼

 Build Docker Images         Push to Docker Hub

      │                             │

      └──────────────┬──────────────┘

                     ▼

              SSH into EC2

                     │

          Pull Latest Images

                     │

          Docker Compose Deploy

                     │

      ┌──────────────┴──────────────┐

      ▼                             ▼

Frontend Container          Backend Container

                │

                ▼

          MySQL Container
```

---

# Technologies Used

## Cloud

- Amazon Web Services (AWS)
  - Amazon EC2
  - Amazon VPC
  - Internet Gateway
  - Public Subnet
  - Route Tables
  - Security Groups

## Infrastructure as Code

- Terraform

## Containerization

- Docker
- Docker Compose

## CI/CD

- GitHub Actions

## Container Registry

- Docker Hub

## Version Control

- Git
- GitHub

---

# Infrastructure Components

The Terraform configuration provisions the following AWS resources:

- Virtual Private Cloud (VPC)
- Internet Gateway
- Public Subnet
- Route Table
- Route Table Association
- Security Group
- EC2 Instance

---

# Project Structure

```
project-root/

├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── locals.tf
│   ├── main.tf
│   ├── outputs.tf
│   └── user_data.sh
│
├── frontend/
│   └── Dockerfile
│
├── backend/
│   └── Dockerfile
│
├── docker-compose.yml
│
└── .github/
    └── workflows/
        └── deploy.yml
```

---

# Features

- Infrastructure provisioned with Terraform
- Dockerized frontend, backend, and database
- Automated image builds
- Docker Hub image publishing
- Automated deployment using GitHub Actions
- SSH-based deployment to EC2
- Automatic Docker image updates
- Environment variable management using GitHub Secrets
- Versioned deployments using Git commit SHA

---

# Deployment Workflow

1. Developer pushes code to GitHub.
2. GitHub Actions starts automatically.
3. Docker images are built.
4. Images are tagged using the Git commit SHA.
5. Images are pushed to Docker Hub.
6. GitHub Actions connects to the EC2 instance through SSH.
7. The application repository is updated.
8. A new `.env` file is generated.
9. Docker Compose pulls the latest images.
10. Containers are restarted.
11. Updated application becomes available.

---

# GitHub Secrets

The following repository secrets are required.

| Secret | Description |
|---------|-------------|
| AWS_ACCESS_KEY_ID | AWS Access Key |
| AWS_SECRET_ACCESS_KEY | AWS Secret Key |
| AWS_REGION | AWS Region |
| DOCKER_USERNAME | Docker Hub Username |
| DOCKER_PASSWORD | Docker Hub Access Token |
| EC2_HOST | EC2 Public IP |
| EC2_USER | SSH Username |
| EC2_SSH_KEY | EC2 Private Key |
| MYSQL_DATABASE | Database Name |
| MYSQL_ROOT_PASSWORD | Root Password |
| MYSQL_USER | Database User |
| MYSQL_PASSWORD | Database Password |
| MYSQL_HOST | Database Host |
| REACT_APP_API_BASE_URL | Backend API URL |

---

# Docker Images

Frontend

```
jioke1/formflow-frontend
```

Backend

```
jioke1/formflow-backend
```

---

# Terraform Commands

Initialize Terraform

```bash
terraform init
```

Validate Configuration

```bash
terraform validate
```

Preview Changes

```bash
terraform plan
```

Deploy Infrastructure

```bash
terraform apply
```

Destroy Infrastructure

```bash
terraform destroy
```

---

# Docker Commands

Build Containers

```bash
docker compose build
```

Run Containers

```bash
docker compose up -d
```

View Running Containers

```bash
docker compose ps
```

Stop Containers

```bash
docker compose down
```

---

# CI/CD Pipeline

The GitHub Actions workflow performs the following tasks automatically:

- Checkout Repository
- Generate Image Version
- Login to Docker Hub
- Build Frontend Image
- Build Backend Image
- Push Images
- SSH into EC2
- Pull Latest Images
- Restart Docker Containers
- Remove Old Docker Images

---

# Lessons Learned

This project provided practical experience in:

- Infrastructure as Code
- Cloud Infrastructure Deployment
- Docker Containerization
- GitHub Actions Automation
- Docker Hub Registry Management
- Secure Secret Management
- SSH-based Remote Deployment
- Cloud Networking
- Infrastructure Troubleshooting

---

# Future Improvements

Potential enhancements include:

- HTTPS using AWS Certificate Manager
- Application Load Balancer
- Multi-AZ deployment
- Auto Scaling Group
- Amazon RDS
- Remote Terraform State (S3 + DynamoDB)
- Monitoring with Amazon CloudWatch
- Kubernetes deployment using Amazon EKS

---

# Author

**Group2 Techcruch cohort7 Cloud Computing track**

Techcrush Group2 Project

GitHub: https://github.com/Jiokechris

---

# License

This project was developed for educational purposes as part of a Cloud Computing and DevOps Capstone Project.