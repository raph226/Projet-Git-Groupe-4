# exos/02_docker_nginx/main.tf

terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"  # Pour Windows
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  name  = "nginx-terraform"
  image = docker_image.nginx.image_id
  
  ports {
    internal = 80
    external = var.nginx_port
  }
}