# PAS Deployment Worksheet

## Upload TILE to OPS Manager Director

## Configuration

#On networks TAB  
select MANAGEMENT  
![image](https://user-images.githubusercontent.com/8255007/43381265-6f119196-93d4-11e8-8290-4899c8db41ea.png) 

#On Domains  Tab  
enter you DNS Zone Information  
![image](https://user-images.githubusercontent.com/8255007/43381467-0dd1a78a-93d5-11e8-876f-98fb954422c4.png)  

#On Networking Tab  
create an SSL Certificate for the following domains:  
```
*.system.pcf.local.azurestack.external,
*.apps.local.azurestack.external,
*.uaa.pcf.local.azurestack.external,
*.login.pcf.local.azurestack.external
```
![image](https://user-images.githubusercontent.com/8255007/43381969-a5846e40-93d6-11e8-9c48-ad4db23e5b69.png)

disable SSL Verification  

![image](https://user-images.githubusercontent.com/8255007/43381624-83408bc6-93d5-11e8-972c-78afe0030b5f.png)

disable HAproxy SSL Forwarding  
![image](https://user-images.githubusercontent.com/8255007/43382177-42a80876-93d7-11e8-97d0-d3e6cf03c933.png)  

#On Application Security Groups
Confirm with X
![image](https://user-images.githubusercontent.com/8255007/43382226-692b11c8-93d7-11e8-884a-a409eb8169a7.png)

