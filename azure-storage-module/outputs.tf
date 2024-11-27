output "storage_account_id" {
  value       = azurerm_storage_account.storage.id
  description = "ID of the storage account"
}

output "storage_account_name" {
  value       = azurerm_storage_account.storage.name
  description = "Name of the storage account"
}

output "primary_access_key" {
  value       = azurerm_storage_account.storage.primary_access_key
  description = "Primary access key for the storage account"
  sensitive   = true
}
