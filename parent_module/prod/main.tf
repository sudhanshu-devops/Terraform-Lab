module "rg" {
  source = "../../child_module/resource_group"
  prodrg = var.prodrg
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../child_module/vnet"
  officevnet = var.officevnet
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../child_module/subnet"
  subnet     = var.subnet
}

module "publicip" {
  depends_on = [module.rg]
  source     = "../../child_module/public_ip"
  publicip   = var.publicip
}

module "nic" {

  depends_on = [module.subnet, module.publicip]
  source     = "../../child_module/nic"
  nic        = var.nic
}

module "vm" {
  depends_on = [module.nic]
  source     = "../../child_module/vm"
  vm         = var.vm
}