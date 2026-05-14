resource "azurerm_storage_account" "newstorage" {
  name                     = "mystorage"
  resource_group_name      = azurerm_resource_group.testing.name
  location                 = azurerm_resource_group.testing.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}