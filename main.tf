terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

# Simula um recurso criando um arquivo
resource "local_file" "app_config" {
  filename = "${path.module}/app_config.txt"
  content  = <<EOT
Aplicação provisionada com sucesso!
Ambiente: Desenvolvimento
Pipeline CI executada.
EOT
}