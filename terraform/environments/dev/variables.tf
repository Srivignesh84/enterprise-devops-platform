variable "resource_group_name" {
  description = "Development Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_nsg_name" {
  description = "Network Security Group name for the VNet"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "aks_subnet_name" {
  description = "AKS subnet name"
  type        = string
}

variable "aks_subnet_prefixes" {
  description = "Address prefixes for AKS subnet"
  type        = list(string)
}

variable "private_endpoint_subnet_name" {
  description = "Private Endpoint subnet name"
  type        = string
}

variable "private_endpoint_subnet_prefixes" {
  description = "Address prefixes for Private Endpoint subnet"
  type        = list(string)
}

variable "aks_nsg_name" {
  description = "Network Security Group name for the AKS subnet"
  type        = string
}

variable "private_endpoint_nsg_name" {
  description = "Network Security Group name for the Private Endpoint subnet"
  type        = string
}

variable "bastion_subnet_prefixes" {
  description = "Address prefix for Azure Bastion subnet"
  type        = list(string)
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

variable "log_analytics_workspace_name" {
  description = "Log Analytics Workspace name"
  type        = string
}

variable "log_analytics_retention_days" {
  description = "Retention period"
  type        = number
}

variable "log_analytics_sku" {
  description = "Log Analytics Workspace SKU"
  type        = string
  default     = "PerGB2018"
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}

variable "acr_sku" {
  description = "Azure Container Registry SKU"
  type        = string
  default     = "Basic"
}

variable "cluster_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "node_count" {
  type = number
}

variable "vm_size" {
  type = string
}
