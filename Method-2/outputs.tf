output "Resource_Group_Name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.rg.name
}

output "Storage_Account" {
  description = "Storage Account"
  value       = module.storage_account.name
}

output "KeyVault" {
  description = "Key Vault"
  value       = random_string.keyvault.result
}
