terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}
provider "azurerm" {
  subscription_id = "31abc17a-f0f9-42a3-a99d-8cd7371d4489"
  features {}
}
resource "azurerm_resource_group" "alpha2" {
  count    = 5
  name     = "rg-${count.index + 1}"
  location = "southindia"
}