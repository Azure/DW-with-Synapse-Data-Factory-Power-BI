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
#Create resource group (feel free to change the resource group name and region):
#New-AzResourceGroup -Name <String> -Location <String>
New-AzResourceGroup -Name TransportationCompanyAnalytics2 -Location "eastus"
