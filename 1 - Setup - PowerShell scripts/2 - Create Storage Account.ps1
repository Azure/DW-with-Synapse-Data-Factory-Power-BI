# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

##################################################################################################################
###########Create Azure components
##################################################################################################################

##install AZ module
if ($PSVersionTable.PSEdition -eq 'Desktop' -and (Get-Module -Name AzureRM -ListAvailable)) {
    Write-Warning -Message ('Az module not installed. Having both the AzureRM and ' +
      'Az modules installed at the same time is not supported.')
} else {
    Install-Module -Name Az -AllowClobber -Scope CurrentUser
}

##Connect to your Azure account
Connect-AzAccount

##################################################################################################################
##install Az.Storage
install-module Az.Storage
Import-Module Az.Storage

#Create Data Lake Storage Gen2:
$ResourceGroupName = "TransportationCompanyAnalytics"
$Name = "[Storage Account Name]"
$SkuName = "Standard_LRS"
$Location = "eastus"
$kind = "StorageV2"
New-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $Name -Location $Location -SkuName $SkuName -Kind $kind -EnableHierarchicalNamespace 1
##################################################################################################################

##################################################################################################################
##create container in storage account 
Select-AzSubscription -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
$Name = "[Storage Account Name]"
$key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"        
$ctx = New-AzStorageContext -StorageAccountName $Name -StorageAccountKey $key
$filesystemName = "synapsecontainer"
New-AzStorageContainer -Context $ctx -Name $filesystemName

##create container in storage account 
Select-AzSubscription -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
$Name = "[Storage Account Name]"
$key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"        
$ctx = New-AzStorageContext -StorageAccountName $Name -StorageAccountKey $key
$filesystemName = "nyccabdata"
New-AzStorageContainer -Context $ctx -Name $filesystemName
##################################################################################################################

##create folder in data lake
$filesystemName = "nyccabdata"
$dirname = "ingestion/"
New-AzDataLakeGen2Item -Context $ctx -FileSystem $filesystemName -Path $dirname -Directory

##create folder in data lake
$filesystemName = "nyccabdata"
$dirname = "ingestion/green/"
New-AzDataLakeGen2Item -Context $ctx -FileSystem $filesystemName -Path $dirname -Directory

##create folder in data lake
$filesystemName = "nyccabdata"
$dirname = "ingestion/yellow/"
New-AzDataLakeGen2Item -Context $ctx -FileSystem $filesystemName -Path $dirname -Directory

##create folder in data lake
$filesystemName = "nyccabdata"
$dirname = "ingestion/lookup/"
New-AzDataLakeGen2Item -Context $ctx -FileSystem $filesystemName -Path $dirname -Directory

##Create container in data lake
Select-AzSubscription -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
$Name = "[Storage Account Name]"
$key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
$ctx = New-AzStorageContext -StorageAccountName $Name -StorageAccountKey $key
$filesystemName = "stagearea"
New-AzStorageContainer -Context $ctx -Name $filesystemName
