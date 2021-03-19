##################################################################################################################
###########Create Azure components
##################################################################################################################

##Connect to your Azure account
Connect-AzAccount

##install AZ module
if ($PSVersionTable.PSEdition -eq 'Desktop' -and (Get-Module -Name AzureRM -ListAvailable)) {
    Write-Warning -Message ('Az module not installed. Having both the AzureRM and ' +
      'Az modules installed at the same time is not supported.')
} else {
    Install-Module -Name Az -AllowClobber -Scope CurrentUser
}

##################################################################################################################
##install Az.Synapse
install-module Az.Synapse
Import-Module Az.Synapse

#Create Synpase workspace
$ResourceGroupName = "TransportationCompanyAnalytics"
$Name = "transportsynapseanalytics"
$Location = "eastus"
$DefaultDataLakeStorageAccountName = "transsynapsestorage"
$DefaultDataLakeStorageFilesystem = "synapsecontainer"
$User = "TransportSynapseAdmin"

#IMPORTANT: PLEASE EXECUTE ONLY BELOW LINE AND FILL WITH ABOVE PARAMETERS:
New-AzSynapseWorkspace

##################################################################################################################
##Grant IAM permission for Synapse Studio into storage account
$ObjectID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
$RoleDefinitionName = "Storage Blob Data Contributor"
$Scope = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/TransportationCompanyAnalytics/providers/Microsoft.Storage/storageAccounts/[Storage Account Name]"
New-AzRoleAssignment -ObjectId $ObjectID -RoleDefinitionName $RoleDefinitionName -Scope $Scope
##################################################################################################################
