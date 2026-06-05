resource "azurerm_public_ip" "publicip" {
for_each = var.publicip
name                = each.value.name
location            = each.value.location
resource_group_name = each.value.rgname
allocation_method = "Static"
sku               = "Standard"
}