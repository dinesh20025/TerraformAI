resource "azurerm_storage_data_lake_gen2_path" "root" {
  path               = var.bu_name
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
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
    permissions = "rwx"
    scope       = "access"
    type        = "group"
    id          = var.ops_group_object_id
  }
  ace {
    permissions = "rwx"
    scope       = "access"
    type        = "group"
    id          = var.aad_group_object_id
  }
  ace {
    permissions = "rwx"
    scope       = "default"
    type        = "group"
    id          = var.ops_group_object_id
  }
  ace {
    permissions = "rwx"
    scope       = "default"
    type        = "group"
    id          = var.aad_group_object_id
  }
  lifecycle {
    prevent_destroy = true
  }
}
resource "azurerm_storage_data_lake_gen2_path" "rejected" {
  path               = "${var.bu_name}/rejected"
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
  ace {
    type        = "group"
    scope       = "access"
    id          = var.aad_group_object_id
    permissions = "r-x"
  }
  ace {
    type        = "group"
    scope       = "access"
    id          = var.ops_group_object_id
    permissions = "r-x"
  }
  ace {
    type        = "group"
    scope       = "default"
    id          = var.aad_group_object_id
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
  lifecycle {
    prevent_destroy = true
  }
}
resource "azurerm_storage_data_lake_gen2_path" "inbound" {
  path               = "${var.bu_name}/inbound"
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
  ace {
    type        = "group"
    scope       = "access"
    id          = var.aad_group_object_id
    permissions = "r-x"
  }
  ace {
    type        = "group"
    scope       = "access"
    id          = var.ops_group_object_id
    permissions = "rwx"
  }
  ace {
    type        = "group"
    scope       = "default"
    id          = var.aad_group_object_id
    permissions = "r-x"
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
    permissions = "r-x"
  }
  lifecycle {
    prevent_destroy = true
  }
}
resource "azurerm_storage_data_lake_gen2_path" "processed" {
  path               = "${var.bu_name}/processed"
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
  ace {
    type        = "group"
    scope       = "access"
    id          = var.aad_group_object_id
    permissions = "r-x"
  }
  ace {
    type        = "group"
    scope       = "access"
    id          = var.ops_group_object_id
    permissions = "r-x"
  }
  ace {
    type        = "group"
    scope       = "default"
    id          = var.aad_group_object_id
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
  lifecycle {
    prevent_destroy = true
  }
}
resource "azurerm_storage_data_lake_gen2_path" "archive" {
  path               = "${var.bu_name}/archive"
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = "directory"
  ace {
    type        = "group"
    scope       = "access"
    id          = var.aad_group_object_id
    permissions = "---"
  }
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
  ace {
    type        = "group"
    scope       = "default"
    id          = var.aad_group_object_id
    permissions = "---"
  }
  lifecycle {
    prevent_destroy = true
  }
}
