output "id" {
  description = "The Storage container ID"
  value       = azurerm_storage_container.storage_container.id
}

output "name" {
  description = "The Storage container name"
  value       = azurerm_storage_container.storage_container.name
}
