## Deploy Azure KeyVault and Storage-Account as per below requirements using Terraform module 

1. Keyvault in Canada East region with public access disabled and soft delete set to 7 days
2. Storage account with LRS in Canada Central region with public access disabled 
3. Storage account with RA-GRS in Canada East region with public access enabled 
4. tag with key name env and accepted values are dev,qa,stg,prd
