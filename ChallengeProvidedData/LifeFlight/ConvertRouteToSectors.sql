/****** Object:  UserDefinedFunction [dbo].[udfARMS_ConvertRouteToSectors]    Script Date: 10/10/2017 11:23:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		NJS
-- Create date: 31 May 2016
-- Description:	Convert table of locations into sectors
-- =============================================
CREATE FUNCTION [dbo].[udfARMS_ConvertRouteToSectors] 
(
	@Route varchar(512)
)
RETURNS 
@Routes TABLE (
	DepartureId int, 
	DestinationId int,
	RouteOrder int)
AS
BEGIN
	DECLARE @StartLeg bit=1;
	DECLARE @Start varchar(64);
	DECLARE @Stop varchar(64);
	DECLARE @UnknownLocationID int;
	SELECT @UnknownLocationID=IntValue
	FROM DefaultValues
	WHERE Name='UnknownSectorLocationID';
	DECLARE @RouteOrder int=1000;
	DECLARE @RouteStep int=50; --Increment between consecutive RouteOrders
	DECLARE RouteCursor CURSOR FOR
	SELECT StringVal FROM [dbo].[udfSplitString](@Route, '-');
	OPEN RouteCursor;
	FETCH NEXT FROM RouteCursor INTO @Start;
	FETCH NEXT FROM RouteCursor INTO @Stop;
	WHILE @@FETCH_STATUS=0
	BEGIN
			INSERT INTO @Routes
			SELECT ISNULL((SELECT ID FROM Location WHERE ICAO=RTRIM(LTRIM(@Start))),@UnknownLocationID), 
			ISNULL((SELECT ID FROM Location WHERE ICAO=RTRIM(LTRIM(@Stop))),@UnknownLocationID), @RouteOrder;
			SET @RouteOrder=@RouteOrder+@RouteStep;
			SET @Start=RTRIM(LTRIM(@Stop));
		FETCH NEXT FROM RouteCursor INTO @Stop;
	END;
	CLOSE RouteCursor;
	DEALLOCATE RouteCursor;

	RETURN 
END
GO


