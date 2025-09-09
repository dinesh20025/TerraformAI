resource "azurerm_storage_data_lake_gen2_path" "root" {
  path               = var.sandbox-green-record_path
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
  ace {
    type        = "group"
    scope       = "access"
    id          = var.ops_group_object_id
    permissions = "r-x"
  }
  ace {
    permissions = "---"
    scope       = "access"
    type        = "other"
  }
  ace {
    permissions = "r-x"
    scope       = "access"
    type        = "group"
  }
  ace {
    permissions = "rwx"
    scope       = "access"
    type        = "user"
  }
}
resource "azurerm_storage_data_lake_gen2_path" "rejected" {
  path               = "${var.sandbox-green-record_path}/rejected_csrd"
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
  ace {
    type        = "group"
    scope       = "access"
    id          = var.ops_group_object_id
    permissions = "r-x"
  }
  ace {
    type        = "group"
    scope       = "default"
    id          = var.ops_group_object_id
    permissions = "r-x"
  }
  ace {
    permissions = "---"
    scope       = "access"
    type        = "other"
  }
  ace {
    permissions = "r-x"
    scope       = "access"
    type        = "group"
  }
  ace {
    permissions = "rwx"
    scope       = "access"
    type        = "user"
  }
  ace {
    type        = "mask"
    scope       = "default"
    permissions = "r-x"
  }
}
resource "azurerm_storage_data_lake_gen2_path" "inbound" {
  path               = "${var.sandbox-green-record_path}/inbound_csrd"
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
  ace {
    type        = "group"
    scope       = "access"
    id          = var.ops_group_object_id
    permissions = "rwx"
  }
  ace {
    type        = "group"
    scope       = "default"
    id          = var.ops_group_object_id
    permissions = "rwx"
  }
  ace {
    permissions = "---"
    scope       = "access"
    type        = "other"
  }
  ace {
    permissions = "r-x"
    scope       = "access"
    type        = "group"
  }
  ace {
    permissions = "rwx"
    scope       = "access"
    type        = "user"
  }
  ace {
    type        = "mask"
    scope       = "default"
    permissions = "rwx"
  }
}
resource "azurerm_storage_data_lake_gen2_path" "processed" {
  path               = "${var.sandbox-green-record_path}/processed_csrd"
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
  ace {
    type        = "group"
    scope       = "access"
    id          = var.ops_group_object_id
    permissions = "r-x"
  }
  ace {
    type        = "group"
    scope       = "default"
    id          = var.ops_group_object_id
    permissions = "r-x"
  }
  ace {
    permissions = "---"
    scope       = "access"
    type        = "other"
  }
  ace {
    permissions = "r-x"
    scope       = "access"
    type        = "group"
  }
  ace {
    permissions = "rwx"
    scope       = "access"
    type        = "user"
  }
  ace {
    type        = "mask"
    scope       = "default"
    permissions = "r-x"
  }
}

