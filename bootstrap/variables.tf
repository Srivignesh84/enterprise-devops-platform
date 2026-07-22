variable "resource_group_name" {
  description = "Name of the Resource Group for Terraform backend"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the Storage Account for Terraform backend"
  type        = string
}

variable "storage_container_name" {
  description = "Name of the Storage Container for Terraform backend"
  type        = string
}
