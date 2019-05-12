USE [FileDB]
GO

/****** Object:  Table [dbo].[dev_employee]    Script Date: 11/05/2019 22:15:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fileInfo](
	[fileInfoID] [bigint] IDENTITY(1,1) NOT NULL,
	[fileName] [nvarchar](500) NOT NULL,
	[path] [nvarchar](500) NULL,
	[containerPath] [nvarchar](500) NULL,
	[volumeName] [nvarchar](500) NULL,
	[ObjectTypeID] [int] NULL,
	[employeeID] [int] NULL,
	[size] [bigint] NOT NULL,
	[ctime] [datetime2](7) NOT NULL,
	[mtime] [datetime2](7) NOT NULL,
	[atime] [datetime2](7) NOT NULL,
	[modifiedDate] [datetime2](7) NOT NULL,
	[createdDate] [datetime2](7) NOT NULL,
	[metaHash] [varbinary](16) NOT NULL,
	[isDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED
	( [fileInfoID] ASC
	) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[fileInfo] ADD DEFAULT (getdate()) FOR [modifiedDate]
GO

ALTER TABLE [dbo].[fileInfo] ADD DEFAULT (getdate()) FOR [createdDate]
GO

ALTER TABLE [dbo].[fileInfo] ADD DEFAULT ((0)) FOR [isDeleted]
GO

ALTER TABLE [dbo].[fileInfo] WITH CHECK ADD CONSTRAINT [FK_fileInfo_employeeID] FOREIGN KEY ([employeeID])
REFERENCES [dbo].[employee] ([employeeID])
GO

ALTER TABLE [dbo].[fileInfo] CHECK CONSTRAINT [FK_fileInfo_employeeID] 
GO





