resource "azurerm_resource_group" "rg5" {
  name     = "ramesh"             #hardcoded value 
  location = "central india"
}


#resource type of block        #"azurerm_resource_group"  type of resource         #"rg2" name of the block
resource "azurerm_resource_group" "rg4" {
count = 5                                 #Use of count
name = "amazon-${count.index}"          #so many limitations in the count  
location = "eastus"
}

resource "azurerm_resource_group" "rg1" {
  name     = var.name           
  location = var.location
}                                       #variable through CLI
variable "name" {}
variable "location" {}

# resource "azurerm_resource_group" "rg1" {
#   name     = var.name                               variable through Default
#   location = var.location
# }
# variable "name" {
#     default = "rahuljaikar"
# }
# variable "location" {
#     default = "eastus"
# }
# resource "azurerm_resource_group" "rg1" {
#   name     = var.james          
#   location = var.location
# }
# variable "james" {}
# variable "location" {}

# resource "azurerm_storage_account" "rg1" {
#     depends_on = [azurerm_resource_group.rg1]            #meta argument depends_on use
#     name = "storage07"
#     resource_group_name = azurerm_resource_group.rg1.name
#     location = azurerm_resource_group.rg1.location 
#     account_tier = "Standard"
#     account_replication_type = "GRS"
# }

# resource "azurerm_resource_group" "nitin1" {                #use for toset in for_each
#     for_each = toset(["jaikal","gauri","modi","meloni"])
#     name = each.value
#     location = "eastus"
# }
resource "azurerm_resource_group" "nitin1" {                
    for_each = tomap({ jaikal= "centralindia", gauri= "eastus", care= "centralindia", rahul= "eastus"})
    name = each.key
    location = each.value                             
               }
               # ↑ ↑ ↑ ↑                           # Yaha each.value 
               # yaha each.key ka matlab:            location centralindial.
               # jaikal  gauri care rahul                                   