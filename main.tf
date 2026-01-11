resource "azurerm_storage_data_lake_gen2_path" "storage_data_lake_gen2_paths" {
  for_each = var.storage_data_lake_gen2_paths

  filesystem_name    = each.value.filesystem_name
  path               = each.value.path
  resource           = each.value.resource
  storage_account_id = each.value.storage_account_id
  group              = each.value.group
  owner              = each.value.owner

  dynamic "ace" {
    for_each = each.value.ace != null ? [each.value.ace] : []
    content {
      id          = ace.value.id
      permissions = ace.value.permissions
      scope       = ace.value.scope
      type        = ace.value.type
    }
  }
}

