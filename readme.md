# TASK 1 🚀 Node.js App with Docker + CI/CD via GitHub Actions

This repository contains a sample **Node.js web application** containerized with **Docker** and deployed through a **CI/CD pipeline using GitHub Actions**. The purpose is to automate testing, building, and Docker image deployment to DockerHub on every push to the `main` branch.

---

## 📁 Project Structure

sample-node-project/
├── app/

│ ├── public/

│ │ └── styles/

│ │ └── styles.css

│ ├── routes.js

│ └── server/

│ └── views/

│ └── index.ejs

├── app.js

├── package.json

├── package-lock.json

├── Dockerfile

├── docker-compose.yml

├── .dockerignore

├── .gitignore

├── .github/

│ └── workflows/

│ └── main.yaml

└── README.md

---

## ⚙️ What I Did

1. **Created a Node.js web app** using Express with EJS views and static files.
2. **Wrote a `Dockerfile`** to containerize the app using Node.js 24-alpine.
3. **Used a non-root user** inside the Docker image for better security.
4. **Wrote a GitHub Actions workflow** to:
   - Automatically run on every push to `main`
   - Log in to DockerHub using GitHub Secrets
   - Build and tag the Docker image
   - Push the image to DockerHub using `github.sha` as the tag
5. **Pushed the full project** to [GitHub](https://github.com/Praneetb2929/nodejs-elevatelabs)
6. Verified deployment by checking GitHub Actions logs and DockerHub for the pushed image.

---

## 🐳 Docker Setup

### 🔧 Build & Run Locally (Optional)

```bash
docker build -t nodejs-demo-app .
docker run -p 3000:3000 nodejs-demo-app
```
## 🤖 GitHub Actions Workflow
Located in .github/workflows/main.yaml, this pipeline performs:

Checkout code
Login to DockerHub
Build Docker image
Push Docker image with commit SHA tag

## 🔐 GitHub Secrets Used:
DOCKER_USERNAME
DOCKER_PASSWORD (or Docker Hub access token)

## 📷 Screenshots
✅ VS Code Project View

<img width="1919" height="848" alt="Image" src="https://github.com/user-attachments/assets/1decf1da-cd07-4312-9ef2-ffbf02937a9b" />
<img width="1735" height="873" alt="Image" src="https://github.com/user-attachments/assets/51b19590-f48d-4a22-a9a0-12e7eb71ba22" />


✅ Docker Hub
<img width="1868" height="439" alt="Image" src="https://github.com/user-attachments/assets/e258b69f-b79e-4126-882a-e40b7a7663a0" />


# TASK 2   Node.js CI/CD Pipeline with Jenkins & Docker
This project demonstrates a simple CI/CD pipeline using **Jenkins**, **Docker**, and **GitHub**. It builds a Docker image of a Node.js application and pushes it to **DockerHub** on every commit.


## 🚀 Features

- Pull code from GitHub
- Build Docker image
- Push Docker image to DockerHub
- Jenkins Declarative Pipeline

## 🔧 Technologies Used

- Jenkins
- Docker
- GitHub
- Node.js

## 🔐 Prerequisites

- DockerHub account (credentials added in Jenkins as `dockerhub`)
- Jenkins with Docker installed
- GitHub repository with Jenkinsfile

## ⚙️ Jenkins Pipeline

The Jenkinsfile contains 4 stages:

1. **Clone Repository** – Pulls the Node.js app from GitHub  
2. **Build Docker Image** – Builds the image with a tag using the Jenkins build number  
3. **Login to DockerHub** – Uses Jenkins credentials to login securely  
4. **Push Docker Image** – Pushes the image to DockerHub  

> 📦 Image Name: `praneetz/nodejs-demo-app`

# 📸 Screenshots


## Jenkins Dashboard 
 <img width="1819" height="1069" alt="Image" src="https://github.com/user-attachments/assets/96abce37-d317-4e01-b814-864dba0215e7" />
 
## Pipeline Build Log 
 <img width="1911" height="1079" alt="Image" src="https://github.com/user-attachments/assets/0931f589-be5e-4814-9e4b-1cf5937e25d0" />
<img width="1919" height="1029" alt="Image" src="https://github.com/user-attachments/assets/1a41cd8a-b9cd-4942-891c-7ae373f244ab" />

## DockerHub Image 
<img width="1904" height="583" alt="Image" src="https://github.com/user-attachments/assets/ff0a7e9c-7309-462c-a8ee-bd315ccf748f" />
## 🪛 How to Use

1. Clone this repository in Jenkins.
2. Set up credentials with ID `dockerhub`.
3. Trigger the pipeline.
4. Check DockerHub for new image tags.


# 🛠️ Task 3: Infrastructure as Code (IaC) with Terraform

## 📌 Objective

Use **Terraform** to provision a **local Docker container** by building a custom image from a `Dockerfile`.


---

## 🚀 Tools Used

- [Terraform](https://www.terraform.io/)
- [Docker](https://www.docker.com/)
- VS Code (Optional)
- Localhost / Terminal

---

## 🔧 Terraform Configuration

The `main.tf` file is configured to:

- Use Docker as the provider
- Build a custom image using your local `Dockerfile`
- Create and run a container from the image
- Map container port `3000` to host port `8080`

<img width="1581" height="1027" alt="Image" src="https://github.com/user-attachments/assets/8d65cc01-029e-4db8-84ac-fbe5080f0dbd" />

## 🧪 Steps to Execute
## ✅ 1. Initialize Terraform

<img width="1362" height="677" alt="Image" src="https://github.com/user-attachments/assets/ca7b0f55-ef99-47bd-9b56-d5f15f2388ce" />

## ✅ 2. Preview the plan

<img width="1710" height="799" alt="Image" src="https://github.com/user-attachments/assets/466e4678-020e-4ae2-afd0-e8ac59baaa3d" />

## ✅ 2. Apply the plan

<img width="1728" height="765" alt="Image" src="https://github.com/user-attachments/assets/ad6a3b2a-d6e0-4e72-a69c-29ae67eb9b75" />

## ✅ 4. Check running container

<img width="1702" height="159" alt="Image" src="https://github.com/user-attachments/assets/8099c63c-cecc-44c0-80bf-5ca236ed7f19" />

## ✅ 5. Access the app

<img width="1919" height="1079" alt="Image" src="https://github.com/user-attachments/assets/2cdb93dd-0ec5-4f87-a732-da9d5d7caff9" />

## ✅ 6. Destroy Infrastructure

<img width="1685" height="798" alt="Image" src="https://github.com/user-attachments/assets/aef846d6-9666-4900-9b7c-e9b8fc4d53b4" />

# Task 4 – Version-Controlled DevOps Project with Git
Overview
This repository demonstrates Git best practices for managing a DevOps project.
It follows a clear branching strategy, uses pull requests for collaboration, and maintains a clean commit history with .gitignore rules.

# Git Workflow
## 1. Initialize Repository
<img width="1546" height="90" alt="Image" src="https://github.com/user-attachments/assets/c935ee01-3f5b-4c21-a790-051e5682ffac" />
<img width="1627" height="588" alt="Image" src="https://github.com/user-attachments/assets/46dc7a79-dd1f-4b61-9891-4448d87de337" />

## 2. Branching Strategy
We use:
main → Production-ready code
dev → Development branch
feature/ → Feature-specific branches

<img width="1101" height="497" alt="Image" src="https://github.com/user-attachments/assets/4126b6f1-7db2-4492-91c9-9a8d4bd33091" />
<img width="1288" height="382" alt="Image" src="https://github.com/user-attachments/assets/730ad335-22af-4eab-a7bc-4d518f0c509f" />

## 3. Pull Requests
Push your feature branch to GitHub.
Open a PR from feature/... → main.
After testing, open a PR from dev → main.

<img width="1554" height="896" alt="Image" src="https://github.com/user-attachments/assets/9701460a-3d3d-4018-8083-0964b6acf543" />

## 4. Using .gitignore
Present in the Github Repo

## 5. Tagging Releases
<img width="1148" height="289" alt="Image" src="https://github.com/user-attachments/assets/6c684493-46eb-4a35-9169-cc7dcb308af9" />
<img width="574" height="470" alt="Image" src="https://github.com/user-attachments/assets/ad17ac3c-d6e5-4044-913a-094d5c33d305" />

#  Task 5 – Build a Kubernetes Cluster Locally with Minikube
Objective: Deploy and manage applications in Kubernetes using Minikube and kubectl.

Steps
## 1. Start Minikube
```bash
minikube start
kubectl cluster-info
kubectl get nodes
```
<img width="1813" height="974" alt="Image" src="https://github.com/user-attachments/assets/6f880f29-e5b6-4368-b42c-30a912129ada" />
## 2. Create Deployment
File: deployment.yaml
```bash
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: my-app-container
        image: nginx:latest
        ports:
        - containerPort: 80
```
## Apply:
```bash
kubectl apply -f deployment.yaml
kubectl get pods
```
<img width="1243" height="547" alt="Image" src="https://github.com/user-attachments/assets/dd793e83-f717-4aa7-bead-6040920433c3" />

## 3. Create Service
File: service.yaml
```bash
apiVersion: v1
kind: Service
metadata:
  name: hello-service
spec:
  selector:
    app: my-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: NodePort
```
## Apply:
```bash
kubectl apply -f service.yaml
kubectl get svc
```
<img width="1206" height="284" alt="Image" src="https://github.com/user-attachments/assets/8579257d-7da5-4096-90f8-052c5416594f" />

## 4. Access Service
```bash
minikube service hello-service
```
<img width="1457" height="470" alt="Image" src="https://github.com/user-attachments/assets/51b5d30d-19e4-4e85-8315-8884f80ecd24" />
<img width="1905" height="797" alt="Image" src="https://github.com/user-attachments/assets/3e6d61c9-b0be-41cc-9f38-46dbe29cbbcd" />

## 5. Scale Deployment
```bash
kubectl scale deployment my-app --replicas=4
kubectl get pods
```
<img width="1433" height="545" alt="Image" src="https://github.com/user-attachments/assets/bf026ff4-4258-4e5b-b332-040607189cb7" />

## 6. Describe Pods & View Logs
```bash
kubectl describe pod <pod-name>
kubectl logs <pod-name>
```
<img width="1570" height="811" alt="Image" src="https://github.com/user-attachments/assets/94be55f8-e1b6-4d25-813e-cc10b19501e2" />
