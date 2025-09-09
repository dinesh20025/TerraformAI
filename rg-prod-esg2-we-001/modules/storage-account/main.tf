resource "azurerm_storage_account" "storage_account" {
  name                             = var.sa_name
  resource_group_name              = var.resource_group_name
  location                         = var.location
  account_tier                     = var.account_tier
  account_replication_type         = var.replication_type
  public_network_access_enabled    = var.public_access_enabled
  cross_tenant_replication_enabled = false
  allow_nested_items_to_be_public  = false
  is_hns_enabled                   = var.hns_enabled
  shared_access_key_enabled        = false
  default_to_oauth_authentication  = true
  tags                             = var.tags
  dynamic "network_rules" {
    for_each = var.sa_name == "" ? [1] : []
    content {
      default_action = "Deny"
      virtual_network_subnet_ids = [
       ]
      bypass = ["AzureServices"]
      private_link_access {
        endpoint_resource_id = var.connector_id
        endpoint_tenant_id   = var.tenant_id
      }
    }
  }
  lifecycle {
    prevent_destroy = true
  }
}
