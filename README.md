Setting up Azure KeyVault and Storage Accounts - v1

## Task

# Deploy keyvault and storage account with below details using Terraform module 

1. Keyvault in Canada East region with public access disabled and soft delete set to 7 days
2. Storage account with LRS in Canada Central region with public access disabled 
3. Storage account with RA-GRS in Canada East region with public access enabled 
4. tag with key name env and accepted values are dev,qa,stg,prd

------------------------------------------------------------------------------------------------------------------------

## Steps 

terraform init
terraform validate
terraform plan ( should see total 12 items to create )
terraform apply --auto-approve 

*** Output expected 

Storage_Account_with_LRS = "sa1o1e6c4"
Storage_Account_with_RA_GRS = "sa2o1e6c4"
KeyVault = "euv6q3"
Resource_Group_Name = "rg"

*** Cleanup 

terraform destroy --auto-approve

------------------------------------------------------------------------------------------------------------------------

## Verify

1. Keyvault in Canada East region with public access disabled and soft delete set to 7 days

![Pasted Graphic 4](https://github.com/user-attachments/assets/549c8caf-4cfc-4f20-adfa-07b884a61ec6)
￼￼
------------------------------------------------------------------------------------------------------------------------

2. Storage account with LRS in Canada Central region with public access disabled

￼

￼

￼

------------------------------------------------------------------------------------------------------------------------

3. Storage account with RA-GRS in Canada East region with public access enabled 

￼

￼

￼

------------------------------------------------------------------------------------------------------------------------

4. tag with key name env and accepted values are dev,qa,stg,prd

￼

￼

￼

------------------------------------------------------------------------------------------------------------------------








