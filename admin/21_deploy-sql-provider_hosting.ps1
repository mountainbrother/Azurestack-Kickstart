﻿<#
Hosting Server Name: <SQL Server FQDN or IPv4 of an existing SQL server to be added as a SQL Adapter hosting server>
Port: <Optional parameter for SQL Server Port, default is 1433>
InstanceName: <Optional parameter for SQL Server Instance>
Total Space MB: <The total space in MB to be allocated for creation of databases on the hosting server>
Hosting Server SQL Login Name: <Name of a SQL login to be used for connecting to the SQL database engine on the hosting server using SQL authentication>
Hosting Server SQL Login Password: <Password for the given SQL login>
SKU Name: <Name of the SQL Adapter SKU to associate the hosting server to>
#>

$sql_hostname = 'sqlhost1'
$rppassword = "Passw0rd"
$templateuri = 'https://raw.githubusercontent.com/bottkars/AzureStack-QuickStart-Templates/patch-3/101-sqladapter-add-hosting-server/azuredeploy.json'
$vmLocalAdminPass = ConvertTo-SecureString "$rppassword" -AsPlainText -Force 
$vmLocalAdminCreds = New-Object System.Management.Automation.PSCredential ("sqlrpadmin", $vmLocalAdminPass) 
$PfxPass = ConvertTo-SecureString "$rppassword" -AsPlainText -Force 




$RG= "RG_SQL_HOSTING"
New-AzureRmResourceGroup -Name $RG -Location local 

New-AzureRmResourceGroupDeployment -Name "$($RG)_DEPLOY" -ResourceGroupName $RG `
    -TemplateUri $templateuri `
    -HostingServerName "$($sql_hostname).local.cloudapp.azurestack.external" `