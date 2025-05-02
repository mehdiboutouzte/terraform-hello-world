terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
    google = {
      source = "hashicorp/google"
      version = "6.33.0"
    }
  }
  backend "gcs" {
    bucket  = "terraform-backend-argocd-workflow"
    prefix  = "terraform/"
  }
}

provider "local" {}

resource "local_file" "example" {
  filename = "example.txt"
  content  = "Hello from Terraform!"
}
