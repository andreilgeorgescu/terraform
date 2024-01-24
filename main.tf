terraform {
  # cloud {
  #   organization = "riverwalk-software"

  #   workspaces {
  #     name    = "development"
  #     project = "lungspace"
  #   }
  # }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.12"
    }
  }

  required_version = "~> 1.7"
}

provider "google" {
  credentials = base64decode(var.gcp_service_account_key)
  project     = var.gcp_project_id
  region      = var.region
  zone        = var.zone
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network2"
}
