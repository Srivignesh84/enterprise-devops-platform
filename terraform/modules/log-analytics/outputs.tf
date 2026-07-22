output "workspace_id" {
  description = "Log Analytics Workspace ID"
  value       = azurerm_log_analytics_workspace.this.id
}

output "workspace_name" {
  description = "Workspace Name"
  value       = azurerm_log_analytics_workspace.this.name
}

output "workspace_resource_id" {
  description = "Resource ID"
  value       = azurerm_log_analytics_workspace.this.id
}
