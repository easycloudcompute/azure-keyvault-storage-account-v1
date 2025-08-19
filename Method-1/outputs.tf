output "Resource_Group_Name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.rg.name
}

output "Storage_Account_with_LRS" {
  description = "Storage Account in Canada Central"
  value       = module.sa_1.name
}

output "Storage_Account_with_RA_GRS" {
  description = "Storage Account in Canada East"
  value       = module.sa_2.name
}

output "KeyVault" {
  description = "KeyVault"
  value       = random_string.keyvault.result
}
