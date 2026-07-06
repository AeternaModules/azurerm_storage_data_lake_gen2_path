output "storage_data_lake_gen2_paths" {
  description = "All storage_data_lake_gen2_path resources"
  value       = azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths
}
output "storage_data_lake_gen2_paths_ace" {
  description = "List of ace values across all storage_data_lake_gen2_paths"
  value       = [for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : v.ace]
}
output "storage_data_lake_gen2_paths_filesystem_name" {
  description = "List of filesystem_name values across all storage_data_lake_gen2_paths"
  value       = [for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : v.filesystem_name]
}
output "storage_data_lake_gen2_paths_group" {
  description = "List of group values across all storage_data_lake_gen2_paths"
  value       = [for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : v.group]
}
output "storage_data_lake_gen2_paths_owner" {
  description = "List of owner values across all storage_data_lake_gen2_paths"
  value       = [for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : v.owner]
}
output "storage_data_lake_gen2_paths_path" {
  description = "List of path values across all storage_data_lake_gen2_paths"
  value       = [for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : v.path]
}
output "storage_data_lake_gen2_paths_resource" {
  description = "List of resource values across all storage_data_lake_gen2_paths"
  value       = [for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : v.resource]
}
output "storage_data_lake_gen2_paths_storage_account_id" {
  description = "List of storage_account_id values across all storage_data_lake_gen2_paths"
  value       = [for k, v in azurerm_storage_data_lake_gen2_path.storage_data_lake_gen2_paths : v.storage_account_id]
}

