resource "azurerm_resource_group" "rg" {
  name     = "rg"
  location = var.rg_location
}

resource "random_string" "storage_account" { # Add's suffix to storage account name
  length  = 6
  upper   = false # No uppercase characters
  special = false # No special characters
}

module "sa_1" {
  source                    = "Azure/avm-res-storage-storageaccount/azurerm"
  version                   = "0.6.4"
  name                      = "sa1${random_string.storage_account.result}"
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = var.sa_1_location
  account_replication_type  = var.replication_sa_1
  shared_access_key_enabled = true

  tags = {
    Environment = "prod"
    Key         = "prod-key"
    Name        = "rahul"
  }
}

module "sa_2" {
  source                        = "Azure/avm-res-storage-storageaccount/azurerm"
  version                       = "0.6.4"
  name                          = "sa2${random_string.storage_account.result}"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = var.sa_2_location
  account_replication_type      = var.replication_sa_2
  shared_access_key_enabled     = true
  public_network_access_enabled = true

  tags = {
    Environment = "dev"
    Key         = "dev-key"
    Name        = "rahul"
  }
}

resource "random_string" "keyvault" { # # Add's suffix to storage account name 
  length  = 6
  upper   = false # No uppercase characters
  special = false # No special characters
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
