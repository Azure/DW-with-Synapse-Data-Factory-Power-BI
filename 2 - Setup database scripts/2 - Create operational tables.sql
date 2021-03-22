-- Copyright (c) Microsoft Corporation.
-- Licensed under the MIT License.

--1) Start dedicated SQL Pool

--2) Connect your Azure Data Studio, Management Studio or select develop tab in your Synapse workspace - DO NOT FORGET TO SELECT "TransportDW" database.

--3) Execute below script:
CREATE TABLE [operation].[MetadataTableControl](
	[DataSetSourceDestinationID] [smallint] NOT NULL,
	[GroupName] [varchar](50) NULL,
	[GroupLoad] [varchar](50) NULL,
	[FinalTableName] [varchar](50) NULL,
	[TableGroupNumber] [smallint] NULL,
	[SourceTypeofObject] [varchar](50) NULL,
	[SourceKeyVaultSecretName] [varchar](100) NULL,
	[SourceControl1] [varchar](1000) NULL,
	[SourceControl2] [varchar](1000) NULL,
	[SourceControl3] [varchar](1000) NULL,
	[SourceControl4] [varchar](1000) NULL,
	[SourceControl5] [varchar](1000) NULL,
	[SourceControl6] [varchar](1000) NULL,
	[DestinationTypeofObject] [varchar](50) NULL,
	[DestinationKeyVaultSecretName] [varchar](100) NULL,
	[DestinationControl1] [varchar](1000) NULL,
	[DestinationControl2] [varchar](1000) NULL,
	[DestinationControl3] [varchar](1000) NULL,
	[DestinationControl4] [varchar](1000) NULL,
	[DestinationControl5] [varchar](1000) NULL,
	[DestinationControl6] [varchar](1000) NULL,
	[ColumnPartitionBy] [varchar](50) NULL,
	[Active] [bit] NULL,
	[DataInserted] [datetime] NULL,
	[DataUpdated] [datetime] NULL
)
GO
