resource "azurerm_network_security_group" "nsg1" {
  name                = "new-nsg"
  location            = azurerm_resource_group.testing.location
  resource_group_name = azurerm_resource_group.testing.name

  security_rule {
    name                       = "test11"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}