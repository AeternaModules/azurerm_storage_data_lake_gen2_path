output "storage_data_lake_gen2_paths_id" {
  description = "Map of id values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_data_lake_gen2_paths_ace" {
  description = "Map of ace values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.ace if v.ace != null && length(v.ace) > 0 }
}
output "storage_data_lake_gen2_paths_filesystem_name" {
  description = "Map of filesystem_name values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.filesystem_name if v.filesystem_name != null && length(v.filesystem_name) > 0 }
}
output "storage_data_lake_gen2_paths_group" {
  description = "Map of group values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.group if v.group != null && length(v.group) > 0 }
}
output "storage_data_lake_gen2_paths_owner" {
  description = "Map of owner values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "storage_data_lake_gen2_paths_path" {
  description = "Map of path values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.path if v.path != null && length(v.path) > 0 }
}
output "storage_data_lake_gen2_paths_resource" {
  description = "Map of resource values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.resource if v.resource != null && length(v.resource) > 0 }
}
output "storage_data_lake_gen2_paths_storage_account_id" {
  description = "Map of storage_account_id values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}

