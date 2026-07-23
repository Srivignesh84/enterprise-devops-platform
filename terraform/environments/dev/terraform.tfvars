# ==========================
# Resource Group
# ==========================

resource_group_name = "rg-ob-dev-001"
location            = "Central India"

# ==========================
# Virtual Network
# ==========================

vnet_name          = "vnet-ob-dev-001"
vnet_address_space = ["10.10.0.0/16"]

# ==========================
# AKS Subnet
# ==========================

aks_subnet_name     = "snet-aks-dev-001"
aks_subnet_prefixes = ["10.10.1.0/24"]

# ==========================
# Private Endpoint Subnet
# ==========================

private_endpoint_subnet_name     = "snet-pe-dev-001"
private_endpoint_subnet_prefixes = ["10.10.2.0/24"]

# ==========================
# Azure Bastion Subnet
# ==========================

bastion_subnet_prefixes = ["10.10.3.0/26"]

# ==========================
# Azure vnet_nsg_name 
# ==========================

vnet_nsg_name = "nsg-vnet-dev-001"

# ==========================
# Azure aks_nsg_name 
# ==========================

aks_nsg_name = "nsg-aks-dev-001"

# ==========================
# Azure private_endpoint_nsg_name 
# ==========================

private_endpoint_nsg_name = "nsg-pe-dev-001"

# ==========================
# Azure Log Analytics Workspace
# ==========================

log_analytics_workspace_name = "law-ob-dev-001"
log_analytics_retention_days = 30
log_analytics_sku            = "PerGB2018"

# ==========================
# Azure Container Registry
# ==========================

acr_name = "acrobdev001"
acr_sku  = "Basic"

# ==========================
# AKS Cluster
# ==========================

cluster_name       = "aks-ob-dev-001"
dns_prefix         = "aks-ob-dev"
kubernetes_version = "1.36.2"
node_count         = 1
vm_size            = "Standard_DS2_v2"

# ==========================
# Common Tags
# ==========================

tags = {
  Environment = "Development"
  Project     = "Enterprise-DevOps-Platform"
  Application = "Online-Boutique"
  Owner       = "Srivignesh"
  ManagedBy   = "Terraform"
}
