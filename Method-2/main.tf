resource "azurerm_resource_group" "rg" { # Resource Group doesnt have to be unique
  name     = "rg-${var.environment_name}"
  location = var.primary_location
}

resource "random_string" "storage_account" { # Randomly generates suffix for storage-account name
  length  = 6
  upper   = false # No uppercase characters
  special = false # No special characters
}

module "storage_account" {
  source                        = "Azure/avm-res-storage-storageaccount/azurerm"
  version                       = "0.6.4"
  name                          = "sa${random_string.storage_account.result}"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = var.primary_location
  account_replication_type      = var.replication_type
  shared_access_key_enabled     = true
  public_network_access_enabled = var.public_network_access_enabled

  tags = var.tags

}

resource "random_string" "keyvault" { # Randomly generates suffix for keyvault name 
  length  = 6
  upper   = false # No uppercase characters
  special = false # No special characters
  numeric = true
}

module "keyvault" {
  source                        = "Azure/avm-res-keyvault-vault/azurerm"
  version                       = "0.10.1"
  name                          = "kv-${random_string.keyvault.result}"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = var.keyvault_location
  tenant_id                     = "xxxx" # Enter your tenant id here
  public_network_access_enabled = false
  soft_delete_retention_days    = 7

  tags = {
    Environment = "qa"
    Key         = "qa-key"
    Name        = "rahul"
  }

}
