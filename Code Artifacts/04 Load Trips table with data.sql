-- type your sql script here, we now have intellisense

IF NOT EXISTS (SELECT * FROM sys.objects WHERE NAME = 'Trips' AND TYPE = 'U')
CREATE TABLE dbo.Trips
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

--Uncomment the 4 lines below to create a stored procedure for data pipeline orchestration​                 
--CREATE PROC bulk_load_test
--AS
--BEGIN
COPY INTO dbo.Trips
(vendorID 1, passengerCount 2, tripDistance 3, month_num 4, day_of_month 5, day_of_week 6, day_of_hour 7)
FROM 'https://<storage_account_name>.dfs.core.windows.net/<container_name>/<folder_name>/trips.txt'
WITH
(
	FILE_TYPE = 'CSV'
	,MAXERRORS = 0
	,FIELDQUOTE = '"'
	,FIELDTERMINATOR = '	'
	,FIRSTROW = 2
	,ERRORFILE = 'https://<storage_account_name>.dfs.core.windows.net/<container_name>/'
	,IDENTITY_INSERT = 'OFF'
)
--END
GO

SELECT TOP 100 * FROM dbo.Trips
GO

