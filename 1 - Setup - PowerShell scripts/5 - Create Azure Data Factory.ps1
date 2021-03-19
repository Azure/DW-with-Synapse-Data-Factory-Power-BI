# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

##################################################################################################################
###########Create Azure components
##################################################################################################################

##Connect to your Azure account
Connect-AzAccount

##################################################################################################################
##create Azure Data Factory
$dataFactoryName = "transporttransformation"
$location = "eastus"
$ResourceGroupName = "TransportationCompanyAnalytics"
Set-AzDataFactoryV2 -ResourceGroupName $ResourceGroupName -Location $location -Name $dataFactoryName
##################################################################################################################
