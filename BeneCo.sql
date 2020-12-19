USE [BeneCo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/16/2020 9:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benefit]    Script Date: 12/16/2020 9:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlanCode] [int] NOT NULL,
	[StaffCode] [int] NOT NULL,
 CONSTRAINT [PK_Benefit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 12/16/2020 9:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobCode] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[isAvailable] [bit] NOT NULL,
	[StaffCode] [int] NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 12/16/2020 9:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan](
	[PlanCode] [int] IDENTITY(1,1) NOT NULL,
	[PlanDescription] [nvarchar](max) NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 12/16/2020 9:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffCode] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Birth] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201216163213_InitialConfiguration', N'3.1.10')
GO
SET IDENTITY_INSERT [dbo].[Benefit] ON 

INSERT [dbo].[Benefit] ([Id], [PlanCode], [StaffCode]) VALUES (1, 1, 1)
INSERT [dbo].[Benefit] ([Id], [PlanCode], [StaffCode]) VALUES (2, 2, 2)
INSERT [dbo].[Benefit] ([Id], [PlanCode], [StaffCode]) VALUES (3, 2, 3)
INSERT [dbo].[Benefit] ([Id], [PlanCode], [StaffCode]) VALUES (4, 4, 4)
INSERT [dbo].[Benefit] ([Id], [PlanCode], [StaffCode]) VALUES (5, 4, 2)
SET IDENTITY_INSERT [dbo].[Benefit] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobCode], [Description], [isAvailable], [StaffCode]) VALUES (1, N'Technical', 1, 1)
INSERT [dbo].[Job] ([JobCode], [Description], [isAvailable], [StaffCode]) VALUES (2, N'Managerial', 0, 1)
INSERT [dbo].[Job] ([JobCode], [Description], [isAvailable], [StaffCode]) VALUES (3, N'Clinical', 0, 2)
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[Plan] ON 

INSERT [dbo].[Plan] ([PlanCode], [PlanDescription], [EndDate]) VALUES (1, N'Term Lite', CAST(N'2018-12-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Plan] ([PlanCode], [PlanDescription], [EndDate]) VALUES (2, N'Stock Purchase', CAST(N'2019-12-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Plan] ([PlanCode], [PlanDescription], [EndDate]) VALUES (3, N'Long Term Disability', CAST(N'2020-12-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Plan] ([PlanCode], [PlanDescription], [EndDate]) VALUES (4, N'Dental', CAST(N'2018-12-10T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Plan] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([StaffCode], [Name], [Birth]) VALUES (1, N'Rudell', CAST(N'2003-12-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Staff] ([StaffCode], [Name], [Birth]) VALUES (2, N'McDade', CAST(N'1999-12-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Staff] ([StaffCode], [Name], [Birth]) VALUES (3, N'Smith', CAST(N'1996-12-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Staff] ([StaffCode], [Name], [Birth]) VALUES (4, N'Charlie', CAST(N'1991-12-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
ALTER TABLE [dbo].[Benefit]  WITH CHECK ADD  CONSTRAINT [FK_Benefit_Plan_PlanCode] FOREIGN KEY([PlanCode])
REFERENCES [dbo].[Plan] ([PlanCode])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Benefit] CHECK CONSTRAINT [FK_Benefit_Plan_PlanCode]
GO
ALTER TABLE [dbo].[Benefit]  WITH CHECK ADD  CONSTRAINT [FK_Benefit_Staff_StaffCode] FOREIGN KEY([StaffCode])
REFERENCES [dbo].[Staff] ([StaffCode])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Benefit] CHECK CONSTRAINT [FK_Benefit_Staff_StaffCode]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Staff_StaffCode] FOREIGN KEY([StaffCode])
REFERENCES [dbo].[Staff] ([StaffCode])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Staff_StaffCode]
GO
