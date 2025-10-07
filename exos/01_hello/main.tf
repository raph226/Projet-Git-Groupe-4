# exos/01_hello/main.tf

terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "hello_terraform" {
  provisioner "local-exec" {
    command = "echo 'Hello Terraform!'"
  }
}