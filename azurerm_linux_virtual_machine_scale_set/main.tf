provider "azurerm" {
  version = "=2.13.0"
  features {}
}

terraform {
    backend "azurerm" {
        resource_group_name = "rg-terraform"   
        storage_account_name = "strg1terraform01"
        container_name = "cntr1terrafrom"
    }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "terraformrg" {
  name     = "rg-terraform-01"
  location = "westeurope"
}
 
resource "azurerm_storage_account" "strg1terraform" {
  name                     = "strg1terraform01"
  resource_group_name      = azurerm_resource_group.terraformrg.name
  location                 = azurerm_resource_group.terraformrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
