resource "azurerm_resource_group" "az-vm" {
  name     = "vm784-resources"
  location = "westindia"
}

resource "azurerm_virtual_network" "practicevm11" {
  name                = "samplerg-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.az-vm.location
  resource_group_name = azurerm_resource_group.az-vm.name
}
  
resource "azurerm_subnet" "office-subnet11" {
  name                 = "newsubnet"
  resource_group_name  = azurerm_resource_group.az-vm.name
  virtual_network_name = azurerm_virtual_network.practicevm11.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "network7" {
  name                = "office-subnet11-nic"
  location            = azurerm_resource_group.az-vm.location
  resource_group_name = azurerm_resource_group.az-vm.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.office-subnet11.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "test-7-vm" {
  name                  = "sud-vm"
  location              = azurerm_resource_group.az-vm.location
  resource_group_name   = azurerm_resource_group.az-vm.name
  network_interface_ids = [azurerm_network_interface.network7.id]
  vm_size               = "Standard_B1ms"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

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
    computer_name  = "hostname11"
    admin_username = "azurevm784"
    admin_password = "sudhanshu@784"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}