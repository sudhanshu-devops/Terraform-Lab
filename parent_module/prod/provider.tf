terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
}
provider "azurerm" {
  subscription_id = "ba8bc0c7-a101-4842-ac47-18c1f18deab4"
  features {
  }
}