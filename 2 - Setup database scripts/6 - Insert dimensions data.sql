-- Copyright (c) Microsoft Corporation.
-- Licensed under the MIT License.

--1) Start dedicated SQL Pool

--2) Connect your Azure Data Studio, Management Studio or select develop tab in your Synapse workspace

--3) Execute below script:
----------------END - TRUNCATE TABLE dw.DimVendor;
TRUNCATE TABLE dw.DimVendor;
INSERT INTO dw.DimVendor VALUES (1,1,'Creative Mobile Technologies, LL');
INSERT INTO dw.DimVendor VALUES (2,2,'VeriFone Inc.');

----------------END - TRUNCATE TABLE dw.DimVendor;
TRUNCATE TABLE dw.DimRate;
INSERT INTO dw.DimRate VALUES (1,1,'Standard rate');
INSERT INTO dw.DimRate VALUES (2,2,'JFK');
INSERT INTO dw.DimRate VALUES (3,3,'Newark');
INSERT INTO dw.DimRate VALUES (4,4,'Nassau or Westchester');
INSERT INTO dw.DimRate VALUES (5,5,'Negotiated fare');
INSERT INTO dw.DimRate VALUES (6,6,'Group ride');

----------------END - TRUNCATE TABLE dw.DimPaymentType;
TRUNCATE TABLE dw.DimPaymentType;
INSERT INTO dw.DimPaymentType VALUES (1,1,'Credit card');
INSERT INTO dw.DimPaymentType VALUES (2,2,'Cash');
INSERT INTO dw.DimPaymentType VALUES (3,3,'No charge');
INSERT INTO dw.DimPaymentType VALUES (4,4,'Dispute');
INSERT INTO dw.DimPaymentType VALUES (5,5,'Unknown');
INSERT INTO dw.DimPaymentType VALUES (6,6,'Voided trip');

----------------END - TRUNCATE TABLE dw.DimPaymentType;
TRUNCATE TABLE dw.DimTripType;
INSERT INTO dw.DimTripType VALUES (1,1,'Street-hail');
INSERT INTO dw.DimTripType VALUES (2,2,'Dispatch');

----------------END - TRUNCATE TABLE dw.DimTripType;
TRUNCATE TABLE dw.DimCabType;
INSERT INTO dw.DimCabType VALUES (1,1,'Yellow');
INSERT INTO dw.DimCabType VALUES (2,2,'Green');
