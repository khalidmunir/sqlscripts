USE [FileDB]
GO
/****** Object:  StoredProcedure [dbo].[getRandomNumber]    Script Date: 12/05/2019 12:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[getRandomNumber] 
	-- Add the parameters for the stored procedure here
	@min  int = 1, 
	@max int = 1000
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CAST( RAND(CRYPT_GEN_RANDOM(50)) * 1000 AS INTEGER) AS INTEGER
END

EXEC getRandomNumber