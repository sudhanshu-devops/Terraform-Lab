resource "azurerm_subnet" "devsubnet" {
  name                 = "newsubnet12"
  resource_group_name  = azurerm_resource_group.testing.name
  virtual_network_name = azurerm_virtual_network.prod1.name
  address_prefixes = ["10.0.0.0/24"]
}