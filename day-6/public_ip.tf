resource "azurerm_public_ip" "ip-public" {
  name                = "mypublic_ip"
  resource_group_name = azurerm_resource_group.testing.name
  location            = azurerm_resource_group.testing.location
  allocation_method   = "Static"
  tags = {
    environment = "production"
  }
}