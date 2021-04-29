# Combining Azure Synapse with Microsoft Power BI

The code will provive you a step-by-step guide to create a DataMart with transport information.

This DataMart is build using Azure Data Factory for ELT/ETL and Azure Synapse as database. The final stage is a Power BI report reading the information from Synapse database.

Some important aspects in the solution is how to take advantage of dynamic content in Azure Data Factoty, creating a clean end-to-end solution.

# What can be achieved?

The solution idea is to speed-up ETL / ETL development and simplify how you code your pipelines in Azure Data Factory. Also how you can take advantage of using a combination of Azure Synapse and Power BI as your standard serving layer solution.

The solution is splited in:

1. Create Azure Services.
2. Deploy database scripts.
3. Deploy Azure Data Factory ARM template.

## Final Power BI data model:
![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/PBIModel.png)

## General architecture:
![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/SolutionArchitecture.png)

## Azure Data Factory solution:
![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/AzureDataFactory.png)

[Understanding configuration table](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Understanding%20configuration%20table.md)

## Requirements

- Access to Azure account with permission to create Azure services
- Permission to install PowerShell components in your local computer
- A Power BI Free or Pro license

You need around 1 hour to deploy entire solution.

# 1 - Create Azure Services

The Azure Services can be created in Azure Portal or executing PowerShell scripts:

Open: [Scripts location](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/tree/main/1%20-%20Setup%20-%20PowerShell%20scripts)

Follow below steps to create Azure Services:
![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/AzureServices.png)

1. Create resource group.ps1

2. Create Storage Account.ps1

3. Create Azure Synapse Workspace.ps1

4. Create Azure SQL Pool.ps1

5. Create Azure Data Factory.ps1

# 2 - Create Synapse objects

Once you create Azure services, is necessary to deploy database objects. Please execute next steps:

Open: [Scripts location](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/tree/main/2%20-%20Setup%20database%20scripts)

Follow below steps to create Azure Services:
![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/SynapseObjects.png)

1. Create schemas.sql

2. Create operational tables.sql

3. Create data warehouse tables.sql

4. Create stage tables.sql

5. Create external tables.sql

6. Insert dimensions data.sql

7. Insert configuration table.sql

# 3 - Deploy ARM template

This is the ARM template you are about to deploy:
![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/DataFactoryPipeline.png)

Once you deployed Azure services and Synapse objects you need to deploy Azure Data Factory ARM template. Please execute next steps:

Open: [ARM template location](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/tree/main/3%20-%20ARM%20Template)

1.1 - Before deploy ARM template file, you need to replace some values. There are 6 points to replace the information before deploy scripts. Please replace these values carfully:

![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/ReplaceValuesARM.png)

2. Once you replace the values with your own information, do the follow:
  - Open your Azure Data Factory;
  - On manage tab, select "ARM Template" option;
  - Select option "Import ARM Template";
  - On "Custom Deployment" editor, select option "Build your own template in the editor";
  - Load the file "arm_template.json" and save;
  - Select the resource group, region and factory name (same name you deployed with PoweShell);

![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/ArmTemplate.png)

3. Once deploy is done, will be necessary to process the pipeline:

![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/RunPipeline.png)

# 4 - Others steps

Is necessary to upload a file into the storage account. Please follow the instructions:

1. Download file named "taxi_zone_lookup.csv": [Dowload CSV file](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/tree/main/4%20-%20Others)

2. Upload file into this location in the storage account: "nyccabdata\ingestion\lookpup\taxi_zone_lookup.csv"

# 5 - Power BI

After process execution, open Power BI template file and fill the parameters values:

Open: [Power BI file template](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/tree/main/5%20-%20Power%20BI)

- RangeStart: '2019-01-01 00:00:00.000'
- RangeEnd: '2019-01-01 23:59:59.000'
- ServerName: [Use your server name]
- DatabaseName: "TransportDW"

This Power BI file is configured with incremental refresh. You can refresh Power BI file and then deploy it to Power BI Service.

![alt text](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/Support%20Files/PowerBIParameters.png)

# 6 - Help us to improve!

Please check: [Code of conduct](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/CODE_OF_CONDUCT.md)

Please check: [Security](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/SECURITY.md)

Please check: [Support](https://github.com/Azure/DW-with-Synapse-Data-Factory-Power-BI/blob/main/SUPPORT.md)

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
