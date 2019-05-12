USE [FileDB]
GO

/****** Object:  Table [dbo].[dev_employee]    Script Date: 11/05/2019 22:15:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employee](
	[employeeID] [int] IDENTITY(1,1) NOT NULL,
	[employeeFirst] [nvarchar](100) NOT NULL,
	[employeeLast] [nvarchar](100) NOT NULL,
	[businessArea] [nvarchar](100) NULL,
	[employeeNumber] [int] NULL,
	[createdDate] [datetime2](7) NOT NULL,
	[managerID] [int] NULL,
	[level] [int] NULL,
	[email] [nvarchar](254) NULL,
	PRIMARY KEY CLUSTERED
	( [employeeID] ASC
	) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[employee] ADD DEFAULT (getdate()) FOR [createdDate]
GO



