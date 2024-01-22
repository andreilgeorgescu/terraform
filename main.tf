terraform {
  cloud {
    organization = "riverwalk-software"

    workspaces {
      name = "test-cli"
    }
  }
}

# terraform {
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "~> 5.12"
#     }
#   }
# }

# provider "google" {
#   credentials = file(var.gcp_keyfile_path)

#   project = var.gcp_project_id
#   region  = var.region
#   zone    = var.zone
# }
