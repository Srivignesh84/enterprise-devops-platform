variable "scope" {
  description = "The scope at which the role assignment applies"
  type        = string
}

variable "role_definition_name" {
  description = "Built-in Azure RBAC role name"
  type        = string
}

variable "principal_id" {
  description = "Object ID of the managed identity or user"
  type        = string
}
