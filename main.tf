terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.12"
    }
  }
}

provider "google" {
  credentials = file(var.gcp_keyfile_path)

  project = var.gcp_project_id
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
