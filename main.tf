terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "local_node_app" {
  name = "sample-node-app:latest"

  build {
    context    = "${path.module}/."
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "node_app_container" {
  name  = "node-app-container"
  image = docker_image.local_node_app.name

  ports {
    internal = 3000  # Change to match the app's port
    external = 8080  # You can access the app via http://localhost:8080
  }
}
