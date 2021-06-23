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
##install Az.Synapse
install-module Az.Synapse
Import-Module Az.Synapse

#STEP 1:
#IMPORTANT: PLEASE EXECUTE ONLY BELOW LINE AND FILL WITH PARAMETERS:
New-AzSynapseWorkspace

#User below parameters:
$ResourceGroupName = "TransportationCompanyAnalytics"
$Name = "[Server Name]"
$Location = "eastus"
$DefaultDataLakeStorageAccountName = "[Storage Account Name]"
$DefaultDataLakeStorageFilesystem = "synapsecontainer"
$User = "TransportSynapseAdmin"

#STEP 2:
##################################################################################################################
##Grant IAM permission for Synapse Studio into storage account
$ObjectID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
$RoleDefinitionName = "Storage Blob Data Contributor"
$Scope = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/TransportationCompanyAnalytics/providers/Microsoft.Storage/storageAccounts/[Storage Account Name]"
New-AzRoleAssignment -ObjectId $ObjectID -RoleDefinitionName $RoleDefinitionName -Scope $Scope
##################################################################################################################
