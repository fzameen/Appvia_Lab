#Create Resource Group
New-AzResourceGroup -Name "rg-terrafrom" -Location "westeurope"
 
#Create Storage Account
New-AzStorageAccount -ResourceGroupName "rg-terrafrom" -AccountName "strg1terraform01" -Location westeurope -SkuName Standard_LRS
 
#Create Storage Container
New-AzStorageContainer -ResourceGroupName "rg-terrafrom" -AccountName "strg1terraform01" -ContainerName "cntr1terrafrom"
