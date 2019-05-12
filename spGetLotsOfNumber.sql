USE [FileDB]
GO
/****** Object:  StoredProcedure [dbo].[getLotsofNumbers]    Script Date: 12/05/2019 12:28:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[getLotsofNumbers]
	-- Add the parameters for the stored procedure here
	@loopNum int = 10
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @cnt INT = 0;

	WHILE @cnt < @loopNum
	BEGIN
	   EXEC getRandomNumber
	   SET @cnt = @cnt + 1;
	END;
    -- Insert statements for procedure here
	
END
