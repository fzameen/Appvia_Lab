provider "azurerm" {
  version = "=2.0"
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

resource "azurerm_resource_group" "tamopsrg" {
  name     = "tamops-tf"
  location = "eastus2"
}
 
resource "azurerm_storage_account" "tamopssa" {
  name                     = "tamopssatf"
  resource_group_name      = azurerm_resource_group.tamopsrg.name
  location                 = azurerm_resource_group.tamopsrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
