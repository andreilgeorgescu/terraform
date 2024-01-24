terraform {
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

resource "google_cloud_run_v2_service" "default" {
  name     = "cloudrun-service"
  location = "us-central1"
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
    }
  }
}
