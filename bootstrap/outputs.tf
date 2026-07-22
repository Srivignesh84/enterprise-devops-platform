output "resource_group_name" {
  value       = azurerm_resource_group.terraform_state.name
  description = "Name of the Resource Group for Terraform backend"
}
output "resource_group_id" {
  value       = azurerm_resource_group.terraform_state.id
  description = "ID of the Resource Group for Terraform backend"
}
output "storage_account_name" {
  value       = azurerm_storage_account.terraform_state_storage.name
  description = "Name of the Storage Account for Terraform backend"
}
output "storage_container_name" {
  value       = azurerm_storage_container.terraform_state_container.name
  description = "Name of the Storage Container for Terraform backend"
}
