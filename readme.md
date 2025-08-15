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


# Task 6: Host a Static Website with GitHub Pages

This task demonstrates how I deployed a simple HTML static website using **GitHub Pages**.

---

## 🚀 Live Website
[Click here to visit my website](https://praneetb2929.github.io/nodejs-elevatelabs/)  
*(Replace `<repo-name>` with the actual repository name.)*

---

## 📂 Project Structure
├── index.html # Main HTML file
├── style.css # Optional CSS file for styling

---

## 📝 Steps to Deploy

### 1️⃣ Create Website Files
I created a simple `index.html` file and added optional `style.css` for styling.

<img width="856" height="679" alt="Image" src="https://github.com/user-attachments/assets/d2775143-11c1-43b3-8738-ecc61c535fa0" />
<img width="785" height="696" alt="Image" src="https://github.com/user-attachments/assets/8100c262-11ad-4fbc-912a-c0198143b429" />

---

### 2️⃣ Push to GitHub Repository
I created a new GitHub repository and pushed my files.


---

### 3️⃣ Enable GitHub Pages
1. Go to **Settings → Pages**  
2. Under **Source**, select `Deploy from a branch`  
3. Choose:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
4. Click **Save**

<img width="1750" height="885" alt="Image" src="https://github.com/user-attachments/assets/3bd10aa7-ed01-408a-824e-76cf0f891ea7" />

---

### 4️⃣ Get Live Link
Once saved, GitHub provides a live site link in the same **Pages** section.

<img width="1917" height="624" alt="Image" src="https://github.com/user-attachments/assets/4b6f0ec3-5f0e-48ae-b95e-e9ac7cdba100" />

---

## 🎨 Customization
- Added a `style.css` file for better visuals.
- Linked it in the `<head>` section of `index.html`.

---

## 🛠 Tools Used
- **GitHub Pages** (for hosting)
- **HTML** & **CSS** (for website design)

---

✅ Website is live and accessible at:  
[https://praneetb2929.github.io/<repo-name>/](https://praneetb2929.github.io/nodejs-elevatelabs/)


# Task 7 – Monitor System Resources Using Netdata
## Objective
Install and run Netdata to visualize real-time system and application performance metrics using Docker.

## 1. Installation Steps
We installed Netdata using Docker with the following command:
```bash
docker run -d --name=netdata \
  -p 19999:19999 \
  --cap-add SYS_PTRACE \
  --security-opt apparmor=unconfined \
  netdata/netdata
```
-d → Runs in detached mode.

--name=netdata → Container name is netdata.

-p 19999:19999 → Maps port 19999 on host to Netdata service.

--cap-add SYS_PTRACE & --security-opt apparmor=unconfined → Grants necessary permissions.

Once started, Netdata can be accessed via:

http://localhost:19999

<img width="1919" height="1079" alt="Image" src="https://github.com/user-attachments/assets/08ab937f-dd19-4c93-b51e-b48ed13691fc" />

## 2. Metrics Monitored
Netdata provides real-time monitoring for:
CPU usage (per core and total)
RAM usage (used, free, cached, buffers)
Disk I/O (read/write operations)
Network traffic (upload/download per interface)
Docker containers (CPU, memory, I/O for each container)
System load average
Processes and threads

<img width="1095" height="966" alt="Image" src="https://github.com/user-attachments/assets/4076c86b-c47f-48d0-a0f9-6d652020dff6" />

## 3. Monitor CPU, memory, disk, Docker containers
<img width="1089" height="1020" alt="Image" src="https://github.com/user-attachments/assets/225d3815-6a9a-48e5-b19e-dc098a3147c0" />

## 4. System Directories Used by Netdata
Netdata uses specific directories for storing configs, logs, and databases:

<img width="1072" height="958" alt="Image" src="https://github.com/user-attachments/assets/b27c424e-8e8b-445a-be10-b50636dcd6f3" />


# TASK -8 Jenkins Pipeline for Node.js and Maven Project

This project demonstrates how to set up a Jenkins freestyle job that:

Pulls code from a GitHub repository.

Builds a Maven project.

Installs and tests a Node.js application.

Shows build results in Jenkins.

## 1. Prerequisites

Before starting, ensure you have:

Jenkins installed and running (localhost:8080 in this example).

Maven installed in Jenkins (Manage Jenkins → Global Tool Configuration).

Node.js installed in Jenkins.

A GitHub repository containing:

A pom.xml file (for Maven build).

A package.json file (for Node.js dependencies and tests).

## 2. Job Configuration Steps
## Step 1: Create a New Freestyle Project

Open Jenkins → Click "New Item" → Select Freestyle Project → Name it nodejs-elevatelabs.

## Step 2: Configure Git Source
In Source Code Management, select Git.

Enter your repository URL (e.g., https://github.com/Praneetb2929/nodejs-elevatelabs).

Leave credentials empty if it’s a public repo.

<img width="1912" height="998" alt="Image" src="https://github.com/user-attachments/assets/e78f226f-e911-4d5b-b559-6447408e6a6d" />

## Step 3: Add Build Steps
Maven Build

Add Invoke top-level Maven targets.

Set:

Maven Version: your installed Maven version (e.g., maven new).

Goals: clean install

If the pom.xml is in a subdirectory, specify it using -f option:

```bash
clean install -f hello-java-maven/pom.xml
```
Node.js Commands
Add Execute Shell step:

```bash
npm install
npm test
```
<img width="1912" height="998" alt="Image" src="https://github.com/user-attachments/assets/f5340ea9-6584-437d-b63a-b7bb93c93898" />

## Step 4: Save and Build

Click Save.

Click Build Now to execute the job.


## 3. Metrics Monitored

During the build, Jenkins monitors:

SCM Checkout Time – How long it takes to pull code from Git.

Build Duration – Time taken by Maven and Node.js steps.

Test Results – Pass/fail status from npm test.

Console Output Logs – For debugging errors.

<img width="1547" height="848" alt="Image" src="https://github.com/user-attachments/assets/42460140-42c6-456b-a064-6c34a704d3a8" />


## 4. Example Build Output

Successful Build

Below is an example of a successful Maven + Node.js build:

<img width="1846" height="1034" alt="Image" src="https://github.com/user-attachments/assets/d49c8e69-608b-48f6-a589-14030017d6aa" />

