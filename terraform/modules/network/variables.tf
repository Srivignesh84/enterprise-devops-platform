variable "resource_group_name" {
  description = "Resource Group where the network will be created"
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

variable "bastion_subnet_prefixes" {
  description = "Address prefix for Azure Bastion subnet"
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


variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}
