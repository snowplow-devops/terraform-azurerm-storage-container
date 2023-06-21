output "id" {
  description = "The storage container ID"
  value       = azurerm_storage_container.storage_container.id
}

output "name" {
  description = "The storage container name"
  value       = azurerm_storage_container.storage_container.name
}

output "resource_id" {
  description = "The storage container resource manager ID"
  value = azurerm_storage_container.storage_container.resource_manager_id
}
