#Create Resource Group
New-AzureRmResourceGroup -Name "rg-terrafrom" -Location "westeurope"
 
#Create Storage Account
New-AzureRmStorageAccount -ResourceGroupName "rg-terrafrom" -AccountName "strg1terraform01" -Location westeurope -SkuName Standard_LRS
 
#Create Storage Container
New-AzureRmStorageContainer -ResourceGroupName "rg-terrafrom" -AccountName "strg1terraform01" -ContainerName "cntr1terrafrom"
