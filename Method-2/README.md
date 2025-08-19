
## Implementation Steps 

- I have assumed storage account with public access as 'dev' and without public access as 'prod' 
- I have passed -var-file as argument in 'terraform apply' command creating resouces based on environments wrt to given requirements 

```
terraform init
terraform validate
terraform plan
terraform apply -var-file ./env/dev.auto.tfvars --auto-approve

*** Output expected 

KeyVault = "z14wj2"
Resource_Group_Name = "rg-dev"
Storage_Account = "saekhbcp"

*** Cleanup 

terraform destroy -var-file ./env/dev.auto.tfvars --auto-approve

*** Similarly to deploy other one , execute below command : 

terraform apply -var-file ./env/prod.auto.tfvars --auto-approve

```
------------------------------------------------------------------------------------------------------------------------

## PIV

1. Keyvault in Canada East region with public access disabled and soft delete set to 7 days

![image](https://github.com/user-attachments/assets/fe041dbe-c950-4e02-b747-781bd627df87)

![image](https://github.com/user-attachments/assets/f87ccc2a-0a20-4e2b-bc0f-09e1af065dee)

![image](https://github.com/user-attachments/assets/a50c9989-97d8-40c3-826d-fd358d91ceee)
￼￼
------------------------------------------------------------------------------------------------------------------------

2. Storage account with RA-GRS in Canada East region with public access enabled 

![image](https://github.com/user-attachments/assets/f5c62afe-76e8-40b7-bd44-9e0137ea2f5d)

![image](https://github.com/user-attachments/assets/086d7751-d7d9-49a3-ba74-3a27fef60c6a)

![image](https://github.com/user-attachments/assets/ed627540-7f7c-4c57-9d3a-80a7fb63ee11)

------------------------------------------------------------------------------------------------------------------------

3. tag with key name env and accepted values are dev,qa,stg,prd

![image](https://github.com/user-attachments/assets/d574e482-6096-42f2-b42a-123a68c06399)

![image](https://github.com/user-attachments/assets/56c9f972-a9df-4f93-8d97-8da6e713d5fa)

------------------------------------------------------------------------------------------------------------------------
