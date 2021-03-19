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

Install-Module Az.Synapse

##################################################################################################################
##create SQL Pool in Synapse
$WorkspaceName = "transportsynapseanalytics"
$databasename = "TransportDW"

New-AzSynapseSqlPool -WorkspaceName $WorkspaceName -Name $databasename -PerformanceLevel DW100c
##################################################################################################################

##################################################################################################################
##FirewallRule
$ResourceGroupName = "transportsynapseanalytics"
$FirewallRule = "FirewallRule"
$Location = "eastus"
New-AzSynapseFirewallRule -WorkspaceName $ResourceGroupName -Name $FirewallRule -StartIpAddress "0.0.0.0" -EndIpAddress "255.255.255.255"
##################################################################################################################
