
## Implementation Steps 

```
terraform init
terraform validate
terraform plan
terraform apply --auto-approve 

*** Expected Output

Storage_Account_with_LRS = "sa1o1e6c4"
Storage_Account_with_RA_GRS = "sa2o1e6c4"
KeyVault = "euv6q3"
Resource_Group_Name = "rg"

*** Cleanup 

terraform destroy --auto-approve

```
------------------------------------------------------------------------------------------------------------------------

## PIV

1. Keyvault in Canada East region with public access disabled and soft delete set to 7 days

![Pasted Graphic 4](https://github.com/user-attachments/assets/549c8caf-4cfc-4f20-adfa-07b884a61ec6)

![Key vaults](https://github.com/user-attachments/assets/5b8c69b2-304c-42ea-89c2-05c1cc7b1165)

![Ill kv-euv6q3  Properties  -](https://github.com/user-attachments/assets/3ac8eb18-d649-4726-ab98-2040d16b2093)
￼￼
------------------------------------------------------------------------------------------------------------------------

2. Storage account with LRS in Canada Central region with public access disabled

![Storage accounts](https://github.com/user-attachments/assets/93a5ed74-2388-4074-9d91-6da50a8aefe5)

![Pasted Graphic 9](https://github.com/user-attachments/assets/cf48fea6-c57e-4f1d-9587-ab40a5819cef)
￼
![Storage accounts](https://github.com/user-attachments/assets/c2fbdb4a-fce5-4a32-a910-20c9314723d5)

------------------------------------------------------------------------------------------------------------------------

3. Storage account with RA-GRS in Canada East region with public access enabled 

![Pasted Graphic 10](https://github.com/user-attachments/assets/b1abba8f-57c7-4798-b7f8-728705d57e28)
￼
![Pasted Graphic 12](https://github.com/user-attachments/assets/14b44eb8-cbbc-46a2-b2e9-7e139f397ce9)

![Pasted Graphic 11](https://github.com/user-attachments/assets/4e6652d4-b377-4661-9153-b818f793eb83)

------------------------------------------------------------------------------------------------------------------------

4. tag with key name env and accepted values are dev,qa,stg,prd

![Storage accounts](https://github.com/user-attachments/assets/53c0740c-a741-4e66-915f-41b03198f313)
￼
![•sa201e0e4 1ags](https://github.com/user-attachments/assets/801bef7a-384e-480f-9dde-0ce7324bc3d1)

![Pasted Graphic 15](https://github.com/user-attachments/assets/3896e760-9f68-429a-86e7-aef3f8da7fbf)

------------------------------------------------------------------------------------------------------------------------
