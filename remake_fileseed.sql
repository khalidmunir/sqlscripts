USE [FileDB]
GO

/****** Object:  Table [dbo].[file_seed]    Script Date: 12/05/2019 04:21:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[file_seed](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fileName1] [nvarchar](50) NULL,
	[fileName2] [nvarchar](50) NULL,
	[fileName3] [nvarchar](50) NULL,
	[fpath1] [nvarchar](50) NULL,
	[fpath2] [nvarchar](50) NULL,
	[fpath3] [nvarchar](50) NULL,
	[fpath4] [nvarchar](50) NULL,
	[fpath5] [nvarchar](50) NULL,
	[Volume1] [nvarchar](50) NULL,
	[cTime] [datetime2](7) NULL,
	[mTime] [datetime2](7) NULL,
	[aTime] [datetime2](7) NULL,
	[metaHash1] [nvarchar](50) NULL,
	[metaHash2] [nvarchar](50) NULL,
	[metaHash3] [nvarchar](50) NULL
) ON [PRIMARY]
GO


