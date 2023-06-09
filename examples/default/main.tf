resource "azurerm_resource_group" "group" {
  name     = "ostfresourcegrouptest"
  location = "West Europe"
}

module "storage_account" {
  source = "snowplow-devops/storage-account/azurerm"

  name                = "ostfmodulessatest"
  resource_group_name = azurerm_resource_group.group.name

  depends_on = [azurerm_resource_group.group]
}

module "storage_container" {
  source = "../.."

  name                 = "ostfstorageaccounttest"
  storage_account_name = module.storage_account.name
}
