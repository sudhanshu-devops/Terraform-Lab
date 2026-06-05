prodrg = {
rg1 = {
name     = "prod-rg"
location = "centralindia"
  }
}

officevnet = {
vnet1 = {
name          = "prod-vnet"
location      = "centralindia"
rgname        = "prod-rg"
address_space = ["10.0.0.0/16"]
  }
}

subnet = {

  subnet1 = {

    name             = "web-subnet"
    rgname           = "prod-rg"
    vnetname         = "prod-vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
}

publicip = {

  pip1 = {

    name     = "vm-pip"
    location = "centralindia"
    rgname   = "prod-rg"
  }
}

nic = {

  nic1 = {

    name          = "vm-nic"
    location      = "centralindia"
    rgname        = "prod-rg"
    subnet_name   = "web-subnet"
    vnet_name     = "prod-vnet"
    publicip_name = "vm-pip"
  }
}

vm = {

  vm1 = {

    name     = "prod-vm"
    location = "centralindia"
    rgname   = "prod-rg"
    nic_name = "vm-nic"

    size = "Standard_D2s_v5"

    username = "unite78499"
    password = "Password@12345"
  }
}