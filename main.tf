terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1"
    }
  }

  cloud {
    organization = "ACME-Infrastructure-Demo" # Terraform Cloud organization name
    workspaces {
      name = "terraform-cloud-demo-v1"
    }
  }
}

provider "null" {}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello ACME from Terraform Cloud > hello.txt"
  }
}
