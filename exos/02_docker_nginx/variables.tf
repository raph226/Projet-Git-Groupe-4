# exos/02_docker_nginx/variables.tf

variable "nginx_port" {
  description = "Port externe pour le conteneur Nginx"
  type        = number
  default     = 8080
}