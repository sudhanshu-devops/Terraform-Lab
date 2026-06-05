data "azurerm_network_interface" "nic" {
for_each = var.vm
name                = each.value.nic_name
resource_group_name = each.value.rgname
}

resource "azurerm_linux_virtual_machine" "vm" {
for_each = var.vm
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rgname
  size           = each.value.size
  admin_username = each.value.username
  network_interface_ids = [data.azurerm_network_interface.nic[each.key].id]

  admin_password                  = each.value.password
  disable_password_authentication = false

  os_disk {

    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}