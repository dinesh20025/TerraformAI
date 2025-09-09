resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorageacc"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
}

resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
  name               = "example"
  storage_account_id = azurerm_storage_account.example.id

  properties = {
    hello = "aGVsbG8="
  }
}


module "private-market" {
  source                    = "./modules/sandbox-green-record"
  sandbox-green-record_path = var.sandbox-green-record_path[4]
  ops_group_object_id       = var.ops_group_object_id
  filesystem_name           = azurerm_storage_data_lake_gen2_filesystem.sandbox-green-record.name
  storage_account_id        = module.main_storage_account.sa_id
}
