resource "azurerm_resource_group" "rgvidyarthi" {
  name     = "vidyarthi784"
  location = "West Europe"
}
resource "azurerm_storage_account" "practicedaily" {
    depends_on = [azurerm_resource_group.rgvidyarthi] 
  name                     = "mystorage05032026"
  resource_group_name      = "vidyarthi784"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "staging"
  }
}