output "storage_data_lake_gen2_paths_id" {
  description = "Map of id values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.id }
}
output "storage_data_lake_gen2_paths_ace" {
  description = "Map of ace values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.ace }
}
output "storage_data_lake_gen2_paths_filesystem_name" {
  description = "Map of filesystem_name values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.filesystem_name }
}
output "storage_data_lake_gen2_paths_group" {
  description = "Map of group values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.group }
}
output "storage_data_lake_gen2_paths_owner" {
  description = "Map of owner values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.owner }
}
output "storage_data_lake_gen2_paths_path" {
  description = "Map of path values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.path }
}
output "storage_data_lake_gen2_paths_resource" {
  description = "Map of resource values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.resource }
}
output "storage_data_lake_gen2_paths_storage_account_id" {
  description = "Map of storage_account_id values across all storage_data_lake_gen2_paths, keyed the same as var.storage_data_lake_gen2_paths"
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : k => v.storage_account_id }
}

