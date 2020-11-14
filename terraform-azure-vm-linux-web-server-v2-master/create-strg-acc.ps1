#Create Resource Group
New-AzureRmResourceGroup -Name "tamopstf" -Location "eastus2"
 
#Create Storage Account
New-AzureRmStorageAccount -ResourceGroupName "tamopstf" -AccountName "tamopstf" -Location eastus2 -SkuName Standard_LRS
 
#Create Storage Container
New-AzureRmStorageContainer -ResourceGroupName "tamopstf" -AccountName "tamopstf" -ContainerName "tfstatedevops"
