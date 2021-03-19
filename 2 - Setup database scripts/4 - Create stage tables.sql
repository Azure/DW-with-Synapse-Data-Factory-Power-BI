-- Copyright (c) Microsoft Corporation.
-- Licensed under the MIT License.

CREATE TABLE stage.NYCCabTrip_Green
    (  
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
WITH
    (
    DISTRIBUTION = ROUND_ROBIN,
    CLUSTERED COLUMNSTORE INDEX
    );
GO

CREATE TABLE stage.NYCCabTrip_Yellow (
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
WITH
    (
    DISTRIBUTION = ROUND_ROBIN,
    CLUSTERED COLUMNSTORE INDEX
    );
GO
