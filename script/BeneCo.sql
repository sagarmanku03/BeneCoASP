
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

