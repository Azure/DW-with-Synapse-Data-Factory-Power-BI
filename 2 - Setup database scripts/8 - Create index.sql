-- Copyright (c) Microsoft Corporation.
-- Licensed under the MIT License.

CREATE INDEX IDX_PuLocationKey ON [dw].[FactCabTrip] (PULocationKey);
GO

CREATE INDEX IDX_DOLocationKey ON [dw].[FactCabTrip] (DOLacationKey);
GO
