provider "azurerm" {
  version = "=2.35.0"
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

resource "azurerm_resource_group" "example" {
  name     = "my-resource-group"
  location = "westeurope"
}

resource "azurerm_sql_server" "example" {
  name                         = "my-sql-esserv"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_mssql_elasticpool" "example" {
  name                = "test-epool"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  server_name         = azurerm_sql_server.example.name
  license_type        = "LicenseIncluded"
  max_size_gb         = 756

  sku {
    name     = "GP_Gen5"
    tier     = "GeneralPurpose"
    family   = "Gen5"
    capacity = 4
  }

  per_database_settings {
    min_capacity = 0.25
    max_capacity = 4
  }
}
