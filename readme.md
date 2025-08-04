# 🚀 Node.js App with Docker + CI/CD via GitHub Actions

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


✅ GitHub Repository After Push
