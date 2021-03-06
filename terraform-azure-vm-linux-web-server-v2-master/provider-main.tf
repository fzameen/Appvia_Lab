
###########################
## Azure Provider - Main ##
###########################

#Define Terraform provider
terraform {
required_version = ">= 0.12"
}

# Configure the Azure provider
provider "azurerm" { 
 environment = "public"
#	azure_subscription_id = "d7879dc0-f991-4e28-8e0c-55a9e9d63635"
#	azure_client_id = "41da9c40-91c7-4c82-b48d-d8be59a5219b"
#	azure_client_secret = "CMELrBl26Lc11CC8kAJs~-s~~8D_6ng3uD"
#	azure_tenant_id = "43fd6cf5-e8be-49d0-9d6a-68fe11cb4e59"
#$ export ARM_CLIENT_ID="41da9c40-91c7-4c82-b48d-d8be59a5219b"
#$ export ARM_CLIENT_SECRET="CMELrBl26Lc11CC8kAJs~-s~~8D_6ng3uD"
#$ export ARM_SUBSCRIPTION_ID="d7879dc0-f991-4e28-8e0c-55a9e9d63635"
#$ export ARM_TENANT_ID="43fd6cf5-e8be-49d0-9d6a-68fe11cb4e59"
version = ">= 2.0.0"
features {}  
 }
