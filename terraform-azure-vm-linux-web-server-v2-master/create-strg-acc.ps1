#remove resourcegroup
Remove-AzResourceGroup -ResourceGroupName rg-terraform
## Input Parameters  
$resourceGroupName="rg-terraform"  
$storageAccName="strg1terraform01"  
$storageContainerName="cntr1terrafrom"

#Create Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location "westeurope"
 
#Create Storage Account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -AccountName $storageAccName -Location westeurope -SkuName Standard_LRS
 
#Create Storage Container
# New-AzStorageContainer -ResourceGroupName "rg-terrafrom" -AccountName "strg1terraform01" -ContainerName "cntr1terrafrom"

## Get the storage account in which container has to be created  
    $storageAcc=Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccName      
    ## Get the storage account context  
    $ctx=$storageAcc.Context    
    
   ## Create a new Azure Storage Account  
       New-AzStorageContainer -Name $storageContainerName -Context $ctx -Permission Container  
