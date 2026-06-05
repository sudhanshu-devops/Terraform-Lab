data "azurerm_subnet" "subnet" {
 for_each = var.nic
name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rgname
}

data "azurerm_public_ip" "pip" {
for_each = var.nic
name                = each.value.publicip_name
resource_group_name = each.value.rgname
}

resource "azurerm_network_interface" "nic" { 
for_each = var.nic
name                = each.value.name
location            = each.value.location
resource_group_name = each.value.rgname

  ip_configuration {

    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
  }
}