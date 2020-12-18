terraform {
  required_providers {
    checkpoint = {
      source = "CheckPointSW/checkpoint"
      version = "1.2.0"
    }
  }
}

variable ipmanager {
  type        = string
  description = "Direccion IP de la manager creada"
}

provider "checkpoint" {
    server = var.ipmanager
    username = "admin"
    password = "Password1234"
    context = "web_api"
}

resource "checkpoint_management_host" "host" {
    name = "miip"
    ipv4_address = "81.0.33.135"
}