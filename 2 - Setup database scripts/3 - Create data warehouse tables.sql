CREATE TABLE dw.DimCabType
    (  
    CabTypeKey               int NOT NULL,
    CabTYpeID                smallint        NULL,
    CabTypeDescription       varchar(100)    NULL
    )
WITH
  (
    CLUSTERED COLUMNSTORE INDEX,  
    DISTRIBUTION = REPLICATE  
  )
GO

CREATE TABLE dw.DimLocation
    (  
    LocationKey               int identity(1,1) NOT NULL,
    LocationID                smallint        NULL,
    Borough                   varchar(50)     NULL,
    Zone                      varchar(50)     NULL,
    service_zone              varchar(50)     NULL
    )
WITH
  (
    CLUSTERED COLUMNSTORE INDEX,  
    DISTRIBUTION = REPLICATE  
  )
  GO

CREATE TABLE dw.DimPaymentType
    (  
    PaymentTypeKey                int NOT NULL,
    PaymentTypeID                 smallint          NULL,
    PaymentTypeDescription        varchar(50)       NULL
    )
WITH
  (
    CLUSTERED COLUMNSTORE INDEX,  
    DISTRIBUTION = REPLICATE  
  );
GO

CREATE TABLE dw.DimRate
    (  
    RateKey                   int NOT NULL,
    RateID                    smallint            NULL,
    RateDescription           varchar(50)         NULL
    )
WITH
  (
    CLUSTERED COLUMNSTORE INDEX,  
    DISTRIBUTION = REPLICATE  
  );
GO

CREATE TABLE dw.DimTripType
    (  
    TripTypeKey                int NOT NULL,
    TripTypeID                 smallint        NULL,
    TripTypeDescription        varchar(50)     NULL
    )
WITH
  (
    CLUSTERED COLUMNSTORE INDEX,  
    DISTRIBUTION = REPLICATE  
  );
GO

CREATE TABLE dw.DimVendor
    (  
    VendorKey               int NOT NULL,
    VendorID                smallint        NULL,
    VendorDescription       varchar(100)    NULL
    )
WITH
  (
    DISTRIBUTION = REPLICATE,
    CLUSTERED INDEX (VendorKey)  
  );
GO

CREATE TABLE dw.FactCabTrip
    (
    CabTripKey                int NOT NULL,
    VendorKey                 int,
    CabTypeKey                int,
    LpepPickupDatetime        datetime,
    LpepDropoffDatetime       datetime,
    StoreAndFwdFlag           varchar(1),
    RateKey                   int,
    PULocationKey             int,
    DOLacationKey             int,
    TripTypeKey               int,
    PaymentTypeKey            int,
    PassengerCount            tinyint,
    TripDistance              decimal(10,2),
    FareAmount                decimal(10,2),
    Extra                     decimal(10,2),
    MtaTax                    decimal(10,2),
    TipAmount                 decimal(10,2),
    TollsAmount               decimal(10,2),
    EhailFee                  decimal(10,2),
    ImprovementSurcharge      decimal(10,2),
    TotalAmount               decimal(10,2)
    )
WITH
  (
    DISTRIBUTION = HASH (PULocationKey),
    CLUSTERED COLUMNSTORE INDEX
  );
GO
