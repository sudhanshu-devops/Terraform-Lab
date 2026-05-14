terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" #in string format
      version = "4.69.0"            # latest version of provider

    }
  }
}
provider "azurerm" {
  subscription_id = "31abc17a-f0f9-42a3-a99d-8cd7371d4489"
  features {

  }
}
resource "azurerm_resource_group" "alpha" {
  name     = "sd1"
  location = "central india"
}
resource "azurerm_resource_group" "beta" {
  name     = "sd2"
  location = "central india"
}
resource "azurerm_resource_group" "gama" {
  name     = "sd3"
  location = "central india"
}
resource "azurerm_resource_group" "thita" {
  name     = "sd4"
  location = "central india"
}
resource "azurerm_resource_group" "ramu" {
  name     = "sd5"
  location = "central india"
}
resource "azurerm_resource_group" "gopal" {
  name     = "sd6"
  location = "central india"
}
resource "azurerm_resource_group" "rita" {
  name     = "sd7"
  location = "central india"
}
resource "azurerm_resource_group" "trangle" {
  name     = "sd8"
  location = "central india"
}
resource "azurerm_resource_group" "supervision" {
  name     = "sd9"
  location = "central india"
}
resource "azurerm_resource_group" "super" {
  name     = "sd10"
  location = "central india"
}

