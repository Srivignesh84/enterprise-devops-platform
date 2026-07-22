variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to the Resource Group"
  type        = map(string)
  default     = {}
}
