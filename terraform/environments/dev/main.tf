module "resource_group" {
  source = "../../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "network" {
  source = "../../modules/network"

  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  tags                = var.tags

  vnet_name                        = var.vnet_name
  vnet_address_space               = var.vnet_address_space
  aks_subnet_name                  = var.aks_subnet_name
  aks_subnet_prefixes              = var.aks_subnet_prefixes
  private_endpoint_subnet_name     = var.private_endpoint_subnet_name
  private_endpoint_subnet_prefixes = var.private_endpoint_subnet_prefixes
  vnet_nsg_name                    = var.vnet_nsg_name
  aks_nsg_name                     = var.aks_nsg_name
  private_endpoint_nsg_name        = var.private_endpoint_nsg_name
  bastion_subnet_prefixes          = var.bastion_subnet_prefixes
}

module "log_analytics" {
  source = "../../modules/log-analytics"

  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location

  workspace_name    = var.log_analytics_workspace_name
  retention_in_days = var.log_analytics_retention_days
  sku               = var.log_analytics_sku

  tags = var.tags
}

module "acr" {
  source = "../../modules/acr"

  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location

  acr_name = var.acr_name
  sku      = var.acr_sku

  tags = var.tags
}

module "aks" {
  source = "../../modules/aks"

  resource_group_name = module.resource_group.resource_group_name
  location            = "IndiaSouthCentral"

  cluster_name       = var.cluster_name
  dns_prefix         = var.dns_prefix
  kubernetes_version = var.kubernetes_version
  node_count         = var.node_count
  vm_size            = var.vm_size

  aks_subnet_id = module.network.aks_subnet_id

  log_analytics_workspace_id = module.log_analytics.workspace_id

  tags = var.tags
}

module "acr_pull_role_assignment" {

  source = "../../modules/role-assignment"

  scope = module.acr.acr_id

  role_definition_name = "AcrPull"

  principal_id = module.aks.kubelet_identity_object_id
}
