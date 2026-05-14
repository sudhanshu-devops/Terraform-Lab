resource "azurerm_virtual_network" "prod1" {
  name                = "newnewtwork1"
  resource_group_name = azurerm_resource_group.testing.name
  location            = azurerm_resource_group.testing.location
  address_space     = ["10.0.0.0/16"]
}