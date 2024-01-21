terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 4.51"
    }
  }
}

provider "google" {
  credentials = file("/tmp/gcp_keyfile.json")

  project = var.gcp_project_id
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
