variable "gcp_project_id" {
  type      = string
  sensitive = true
}

variable "gcp_service_account_key" {
  type      = string
  sensitive = true
}

variable "organization" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "workspace_name" {
  type = string
}

variable "workspace_project" {
  type = string
}
