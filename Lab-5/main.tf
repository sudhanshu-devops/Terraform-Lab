resource "azurerm_resource_group" "prod-rg" {
  name     = "azurerg1"
  location = "central india"
}
resource "azurerm_virtual_network" "prod_vnet" {
  name                = "newnetwork"
  resource_group_name = azurerm_resource_group.rg7.name
  location            = azurerm_resource_group.rg7.location
  address_space       = ["10.0.0.0/16", "10.0.0.0/16"]
}
resource "azurerm_subnet" "web_subnet" {
  name                 = "testsubnet1"
  resource_group_name  = azurerm_resource_group.rg7.name
  virtual_network_name = azurerm_virtual_network.office1.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_public_ip" "internetip" {
  name                = "accepted_testpublicip"
  resource_group_name = azurerm_resource_group.rg7.name
  location            = azurerm_resource_group.rg7.location
  allocation_method   = "Static"
  tags = {
    environment = "production"
  }
}

