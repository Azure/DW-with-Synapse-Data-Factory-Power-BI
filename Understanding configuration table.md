# Using configuration table

## How to use it!

The idea of using configuration table is to create your pipelines in Azure Data Factory in a more organize way.

Here is some gains by using this approach:

1.1 - Reduce number of datasets in Azure Data Factory.

2.2 - Give you an interface to parametrize your pipelines.

The configuration table works with source columns and destination columns. The idea is use these columns to supply your needs with differents type of data.

Please check below image:

![alt text](https://github.com/microsoft/Power-BI-ADF-Synapse/blob/main/Support%20Files/ConfigurationFile.png)

The above case is a configuration record for reading a CSV file inside a storage account and then insert this file into a Synapse database, but it could be a diffent source
and destination.

The records will be retrieve for a lookup acrtivity and you will use the columns according to your need.

Please check below image:

![alt text](https://github.com/microsoft/Power-BI-ADF-Synapse/blob/main/Support%20Files/Parameters.png)

Anything can be configured in the configuration table. This gives you a real flexibility to work in your pipelines and a real simple way.
