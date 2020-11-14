#Create Resource Group
New-AzResourceGroup -Name "rg-terrafrom" -Location "westeurope"
 
#Create Storage Account
New-AzStorageAccount -ResourceGroupName "rg-terrafrom" -AccountName "strg1terraform01" -Location westeurope -SkuName Standard_LRS
 
#Create Storage Container
# New-AzStorageContainer -ResourceGroupName "rg-terrafrom" -AccountName "strg1terraform01" -ContainerName "cntr1terrafrom"
# Retrieve an existing Storage Account reference
#$storageContext = Get-AzStorageAccount -ResourceGroupName rg-terrafrom `
  #  -Name build5ninesblobs

# Retrieve the Context from the Storage Account
$storageContext = $storageAccount.Context

#create storage container
New-AzStorageContainer -Name "cntr1terrafrom"
    -Context $storageContext
    -Permission Off
