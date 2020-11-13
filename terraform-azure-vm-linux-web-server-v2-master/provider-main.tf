###########################
## Azure Provider - Main ##
###########################

# Define Terraform provider
terraform {
  required_version = ">= 0.12"
}

# Configure the Azure provider
provider "azurerm" { 
  environment = "public"
  version = ">= 2.0.0"
  features {}  
}
#Configure the Azure Provider
provider "azurerm" {
  environment = "public"
  subscription_id = var.azure_subscription_id
  client_id = var.azure_client_id
  client_secret = var.azure_client_secret
  tenant_id = var.azure_tenant_id
}
