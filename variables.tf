variable "gcp_project_id" {
  type      = string
  sensitive = true
}

variable "gcp_service_account_key" {
  type      = string
  sensitive = true
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}
