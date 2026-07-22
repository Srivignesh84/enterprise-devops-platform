variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "workspace_name" {
  description = "Log Analytics Workspace name"
  type        = string
}

variable "sku" {
  description = "Workspace SKU"
  type        = string
  default     = "PerGB2018"
}

variable "retention_in_days" {
  description = "Log retention period"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}
