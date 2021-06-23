-- Copyright (c) Microsoft Corporation.
-- Licensed under the MIT License.

--## IMPORTANT!! ##
--## YOU NEED TO CHANGE STORAGE ACCOUNT NAME ON LINE 22

--need to create a master key once per database.
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'xxxxxxxx';

IF NOT EXISTS(SELECT * FROM sys.database_credentials WHERE name = 'SynapseManagedIdentity')
	CREATE DATABASE SCOPED CREDENTIAL [SynapseManagedIdentity] WITH IDENTITY = 'Managed Identity'
Go

IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseParquetFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseParquetFormat] 
	WITH ( FORMAT_TYPE = PARQUET)
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'transportdw_storageaccountname_dfs_core_windows')
	CREATE EXTERNAL DATA SOURCE [transportdw_storageaccountname_dfs_core_windows]
	WITH (                               
		LOCATION   = 'abfss://nyccabdata@[**Storage Account Name**].dfs.core.windows.net', 
		TYPE       = HADOOP, 
		CREDENTIAL = SynapseManagedIdentity 
	)
GO

CREATE EXTERNAL TABLE stage.External_NYCCabTrip_Green (
	[VendorID] varchar(8000),
	[lpep_pickup_datetime] varchar(8000),
	[lpep_dropoff_datetime] varchar(8000),
	[store_and_fwd_flag] varchar(8000),
	[RatecodeID] varchar(8000),
	[PULocationID] varchar(8000),
	[DOLocationID] varchar(8000),
	[passenger_count] varchar(8000),
	[trip_distance] varchar(8000),
	[fare_amount] varchar(8000),
	[extra] varchar(8000),
	[mta_tax] varchar(8000),
	[tip_amount] varchar(8000),
	[tolls_amount] varchar(8000),
	[ehail_fee] varchar(8000),
	[improvement_surcharge] varchar(8000),
	[total_amount] varchar(8000),
	[payment_type] varchar(8000),
	[trip_type] varchar(8000),
	[congestion_surcharge] varchar(8000)
	)
	WITH (
	LOCATION = 'ingestion/green/',
	DATA_SOURCE = [transportdw_storageaccountname_dfs_core_windows],
	FILE_FORMAT = [SynapseParquetFormat],
	REJECT_TYPE = VALUE,
	REJECT_VALUE = 0
	)
GO

CREATE EXTERNAL TABLE stage.External_NYCCabTrip_Yellow (
    VendorID                varchar(8000),
    lpep_pickup_datetime    varchar(8000),
    lpep_dropoff_datetime   varchar(8000),
    passenger_count         varchar(8000),
    trip_distance           varchar(8000),
    RatecodeID              varchar(8000),
    store_and_fwd_flag      varchar(8000),
    PULocationID            varchar(8000),
    DOLocationID            varchar(8000),
    payment_type            varchar(8000),
    fare_amount             varchar(8000),
    extra                   varchar(8000),
    mta_tax                 varchar(8000),
    tip_amount              varchar(8000),
    tolls_amount            varchar(8000),
    improvement_surcharge   varchar(8000),
    total_amount            varchar(8000),
    congestion_surcharge    varchar(8000)
	)
	WITH (
	LOCATION = 'ingestion/yellow/',
	DATA_SOURCE = [transportdw_storageaccountname_dfs_core_windows],
	FILE_FORMAT = [SynapseParquetFormat],
	REJECT_TYPE = VALUE,
	REJECT_VALUE = 0
	)
GO
