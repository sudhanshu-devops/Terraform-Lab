resource "azurerm_virtual_machine" "vmnew1" {
  name                  = "myvm"
  location              = azurerm_resource_group.testing.location
  resource_group_name   = azurerm_resource_group.testing.name
  network_interface_ids = [azurerm_network_interface.main.id] #need to ask
  vm_size               = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "lenovo7"
    admin_username = "unite7"
    admin_password = "Password12345!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}