USE [FileDB]
GO
/****** Object:  StoredProcedure [dbo].[stp_Test1]    Script Date: 12/05/2019 04:54:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Procedure 1
ALTER procedure [dbo].[stp_Test1] 
as
begin
	SELECT TOP (5) * from [dbo].[employee]
end

