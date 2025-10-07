# exos/02_docker_nginx/outputs.tf

output "container_name" {
  description = "Nom du conteneur Nginx créé"
  value       = docker_container.nginx.name
}

output "container_status" {
  description = "Statut du conteneur"
  value       = docker_container.nginx.status
}

output "access_url" {
  description = "URL d'accès à Nginx"
  value       = "http://localhost:${var.nginx_port}"
}