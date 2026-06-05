resource "azurerm_virtual_network" "officevnet" {
for_each = var.officevnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rgname
  address_space       = each.value.address_space
}