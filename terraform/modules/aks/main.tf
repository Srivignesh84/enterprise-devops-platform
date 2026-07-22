resource "azurerm_kubernetes_cluster" "this" {

  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name

  dns_prefix = var.dns_prefix

  kubernetes_version = var.kubernetes_version

  default_node_pool {

    name = "system"

    vm_size = var.vm_size

    node_count = var.node_count

    os_disk_size_gb = 64

    os_disk_type = "Managed"

    type = "VirtualMachineScaleSets"

    vnet_subnet_id = var.aks_subnet_id

    only_critical_addons_enabled = true
  }

  identity {
    type = "SystemAssigned"
  }

  oms_agent {
    log_analytics_workspace_id = var.log_analytics_workspace_id
  }

  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"
    network_policy      = "azure"
    load_balancer_sku   = "standard"
    outbound_type       = "loadBalancer"
  }

  role_based_access_control_enabled = true

  local_account_disabled = true

  image_cleaner_enabled        = true
  image_cleaner_interval_hours = 48

  lifecycle {
    ignore_changes = [
      default_node_pool[0].node_count
    ]
  }

  tags = var.tags
}
