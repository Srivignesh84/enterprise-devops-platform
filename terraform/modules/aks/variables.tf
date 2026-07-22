variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for AKS"
  type        = string
}

variable "kubernetes_version" {
  description = "AKS Kubernetes version"
  type        = string
}

variable "node_count" {
  description = "Default node count"
  type        = number
}

variable "vm_size" {
  description = "Node VM size"
  type        = string
}

variable "aks_subnet_id" {
  description = "AKS subnet ID"
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}
