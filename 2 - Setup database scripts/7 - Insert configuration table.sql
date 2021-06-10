-- Copyright (c) Microsoft Corporation.
-- Licensed under the MIT License.

--Please replace column "DestinationControl1" with your storage account name.

TRUNCATE TABLE [operation].[MetadataTableControl]

-------------------------------------------Green CAB
INSERT INTO [operation].[MetadataTableControl] VALUES (
1,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2019-01',1,
'HTTP',NULL,'trip+data/','green_tripdata_2019-01.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-01.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
2,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2019-02',2,
'HTTP',NULL,'trip+data/','green_tripdata_2019-02.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-02.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
3,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2019-03',3,
'HTTP',NULL,'trip+data/','green_tripdata_2019-03.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-03.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
4,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2019-04',4,
'HTTP',NULL,'trip+data/','green_tripdata_2019-04.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-04.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
5,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2019-05',5,
'HTTP',NULL,'trip+data/','green_tripdata_2019-05.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-05.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
6,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2019-06',6,
'HTTP',NULL,'trip+data/','green_tripdata_2019-06.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-06.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
7,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2019-07',7,
'HTTP',NULL,'trip+data/','green_tripdata_2019-07.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-07.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
8,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2019-08',8,
'HTTP',NULL,'trip+data/','green_tripdata_2019-08.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-08.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
9,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2019-09',9,
'HTTP',NULL,'trip+data/','green_tripdata_2019-09.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-09.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
10,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2019-10',10,
'HTTP',NULL,'trip+data/','green_tripdata_2019-10.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-10.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
11,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2019-11',11,
'HTTP',NULL,'trip+data/','green_tripdata_2019-11.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-11.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
12,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2019-12',12,
'HTTP',NULL,'trip+data/','green_tripdata_2019-12.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2019-12.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

---------------------------------------------------------
INSERT INTO [operation].[MetadataTableControl] VALUES (
13,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2020-01',13,
'HTTP',NULL,'trip+data/','green_tripdata_2020-01.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-01.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
14,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2020-02',14,
'HTTP',NULL,'trip+data/','green_tripdata_2020-02.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-02.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
15,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2020-03',15,
'HTTP',NULL,'trip+data/','green_tripdata_2020-03.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-03.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
16,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2020-04',16,
'HTTP',NULL,'trip+data/','green_tripdata_2020-04.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-04.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
17,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2020-05',17,
'HTTP',NULL,'trip+data/','green_tripdata_2020-05.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-05.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
18,'NYC Ride Analysis','HTTP to ADL2 - 1','green_tripdata_2020-06',18,
'HTTP',NULL,'trip+data/','green_tripdata_2020-06.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-06.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
19,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2020-07',19,
'HTTP',NULL,'trip+data/','green_tripdata_2020-07.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-07.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
20,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2020-08',20,
'HTTP',NULL,'trip+data/','green_tripdata_2020-08.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-08.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
21,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2020-09',21,
'HTTP',NULL,'trip+data/','green_tripdata_2020-09.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-09.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
22,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2020-10',22,
'HTTP',NULL,'trip+data/','green_tripdata_2020-10.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-10.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
23,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2020-11',23,
'HTTP',NULL,'trip+data/','green_tripdata_2020-11.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-11.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
24,'NYC Ride Analysis','HTTP to ADL2 - 2','green_tripdata_2020-12',24,
'HTTP',NULL,'trip+data/','green_tripdata_2020-12.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\green','green_tripdata_2020-12.parquet',NULL,NULL,
NULL,1,NULL,NULL
)
-------------------------------------------END - Green CAB

----------------------------------------------------------
------------------------------------------------Yellow CAB
INSERT INTO [operation].[MetadataTableControl] VALUES (
25,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2019-01',25,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-01.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-01.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
26,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2019-02',26,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-02.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-02.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
27,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2019-03',27,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-03.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-03.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
28,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2019-04',28,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-04.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-04.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
29,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2019-05',29,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-05.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-05.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
30,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2019-06',30,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-06.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-06.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
31,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2019-07',31,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-07.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-07.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
32,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2019-08',32,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-08.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-08.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
33,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2019-09',33,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-09.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-09.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
34,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2019-10',34,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-10.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-10.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
35,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2019-11',35,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-11.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-11.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
36,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2019-12',36,
'HTTP',NULL,'trip+data/','yellow_tripdata_2019-12.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2019-12.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

---------------------------------------------------------
INSERT INTO [operation].[MetadataTableControl] VALUES (
37,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2020-01',37,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-01.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-01.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
38,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2020-02',38,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-02.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-02.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
39,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2020-03',39,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-03.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-03.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
40,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2020-04',40,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-04.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-04.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
41,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2020-05',41,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-05.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-05.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
42,'NYC Ride Analysis','HTTP to ADL2 - 1','yellow_tripdata_2020-06',42,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-06.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-06.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
43,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2020-07',43,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-07.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-07.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
44,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2020-08',44,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-08.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-08.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
45,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2020-09',45,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-09.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-09.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
46,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2020-10',46,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-10.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-10.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
47,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2020-11',47,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-11.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-11.parquet',NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
48,'NYC Ride Analysis','HTTP to ADL2 - 2','yellow_tripdata_2020-12',48,
'HTTP',NULL,'trip+data/','yellow_tripdata_2020-12.csv',NULL,NULL,NULL,NULL,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\yellow','yellow_tripdata_2020-12.parquet',NULL,NULL,
NULL,1,NULL,NULL
)
------------------------------------------END - Yellow CAB

----------------------------------------------Stage Tables
INSERT INTO [operation].[MetadataTableControl] VALUES (
49,'NYC Ride Analysis','ADL2 to Synapse (Stage)','NYCCabTrip_Yellow',200,
'Data Lake',NULL,'TransportDW','stage','External_NYCCabTrip_Yellow',NULL,NULL,NULL,
'Synapse',NULL,'TransportDW','stage','NYCCabTrip_Yellow',NULL,NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
50,'NYC Ride Analysis','ADL2 to Synapse (Stage)','NYCCabTrip_Green',201,
'Data Lake',NULL,'TransportDW','stage','External_NYCCabTrip_Green',NULL,NULL,NULL,
'Synapse',NULL,'TransportDW','stage','NYCCabTrip_Green',NULL,NULL,NULL,
NULL,1,NULL,NULL
)
----------------------------------------END - Stage Tables

-------------------------------------------------DW Tables
INSERT INTO [operation].[MetadataTableControl] VALUES (
51,'NYC Ride Analysis','Load Dimensions','DimLocation',300,
'Data Lake',NULL,'[Storage Account Name]','nyccabdata','ingestion\lookup','taxi_zone_lookup.csv',NULL,NULL,
'Synapse',NULL,'TransportDW','dw','DimLocation',NULL,NULL,NULL,
NULL,1,NULL,NULL
)

INSERT INTO [operation].[MetadataTableControl] VALUES (
52,'NYC Ride Analysis','Load Facts','FactCabTrip',301,
'Synapse',NULL,'TransportDW','dw','FactCabTrip',NULL,NULL,NULL,
'Synapse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,
NULL,1,NULL,NULL
)
-------------------------------------------END - DW Tables
