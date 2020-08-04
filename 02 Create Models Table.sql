SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Models]
( 
    [Id] [int]  NOT NULL,
    [Model] [varbinary](max)  NULL,
    [Description] [varchar](200)  NULL
)
WITH
(
    DISTRIBUTION = REPLICATE,
    HEAP
)
GO
