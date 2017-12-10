﻿# ^[a-z][a-z0-9-]{1,61}[a-z0-9]$
$RG = "Mysqlhost1"
$VMName = "Mysqlhost1"
$adminusername = "mysqlrpadmin"
$Password = "Passw0rd"
$vmlocaladminpass= ("$Password" | ConvertTo-SecureString -AsPlainText -Force)


New-AzureRmResourceGroup -Name $RG -Location local 

New-AzureRmResourceGroupDeployment -Name "$($VMName)_deployment" -ResourceGroupName $RG `
    -vmName $VMName `
    -TemplateUri https://raw.githubusercontent.com/Azure/AzureStack-QuickStart-Templates/master/mysql-standalone-server-windows/azuredeploy.json `
    -adminPassword $vmlocaladminpass `
    -adminUsername $adminusername `
    
$RG = "rg_MySQLHostingserver"
$VMName = "mysqlhost1mysqlhost1.local.cloudapp.azurestack.external"


New-AzureRmResourceGroup -Name $RG -Location local 

New-AzureRmResourceGroupDeployment -Name MySQLHostingserver_Deploy -ResourceGroupName $RG `
    -TemplateUri https://raw.githubusercontent.com/bottkars/AzureStack-QuickStart-Templates/patch-1/101-mysqladapter-add-hosting-server/azuredeploy.json `
    -HostingServerName $VMName `