USE [todo]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2/23/2016 4:24:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tasks]    Script Date: 2/23/2016 4:24:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[category_id] [int] NULL,
	[due_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'house chores')
INSERT [dbo].[categories] ([id], [name]) VALUES (2, N'Epicodus')
INSERT [dbo].[categories] ([id], [name]) VALUES (3, N'r')
INSERT [dbo].[categories] ([id], [name]) VALUES (4, N'exercise')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[tasks] ON 

INSERT [dbo].[tasks] ([id], [description], [category_id], [due_date]) VALUES (9, N'take trash out', 1, CAST(N'2016-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[tasks] ([id], [description], [category_id], [due_date]) VALUES (10, N'run 1 mile', 4, CAST(N'2016-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[tasks] ([id], [description], [category_id], [due_date]) VALUES (6, N'clean house', 1, CAST(N'1994-01-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tasks] OFF
