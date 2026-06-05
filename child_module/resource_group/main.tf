resource "azurerm_resource_group" "prodrg" {
for_each = var.prodrg
  name     = each.value.name
  location = each.value.location
}