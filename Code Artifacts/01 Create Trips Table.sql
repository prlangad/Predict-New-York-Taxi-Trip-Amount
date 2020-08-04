SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Trips]
( 
    [vendorID] [real]  NOT NULL,
    [passengerCount] [real]  NULL,
    [tripDistance] [real]  NULL,
    [month_num] [real]  NULL,
    [day_of_month] [real]  NULL,
    [day_of_week] [real]  NULL,
    [day_of_hour] [real]  NULL
)
WITH
(
    DISTRIBUTION = ROUND_ROBIN,
    HEAP
)
GO
