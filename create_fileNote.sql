USE [FileDB]
GO

/****** Object:  Table [dbo].[dev_employee]    Script Date: 11/05/2019 22:15:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fileNote](
	[fileNoteID] [bigint] IDENTITY(1,1) NOT NULL,
	[fileNote] [nvarchar](1000) NOT NULL,
	[fileInfoID] [bigint] NOT NULL,
	[employeeID] [int] NOT NULL,
	[modifiedDate] [datetime2](7) NOT NULL,
	[createdDate] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED
	( [fileNoteID] ASC
	) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[fileNote] ADD DEFAULT (getdate()) FOR [modifiedDate]
GO

ALTER TABLE [dbo].[fileNote] ADD DEFAULT (getdate()) FOR [createdDate]
GO

ALTER TABLE [dbo].[fileNote] WITH CHECK ADD CONSTRAINT [FK_fileNote_employee_employeeID] FOREIGN KEY ([employeeID])
REFERENCES [dbo].[employee] ([employeeID])
GO

ALTER TABLE [dbo].[fileNote] CHECK CONSTRAINT [FK_fileNote_employee_employeeID] 
GO

ALTER TABLE [dbo].[fileNote] WITH CHECK ADD CONSTRAINT [FK_fileNote_fileInfo_fileInfoID] FOREIGN KEY ([fileInfoID])
REFERENCES [dbo].[fileInfo] ([fileInfoID])
GO

ALTER TABLE [dbo].[fileNote] CHECK CONSTRAINT [FK_fileNote_fileInfo_fileInfoID]
GO





