USE [ModuleAppDEMO2]
GO
/****** Object:  Table [dbo].[FilterUser]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterUser](
	[FilterUserId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[StudyRecordId] [int] NULL,
	[ModuleId] [int] NULL,
	[SemesterId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FilterUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Graph]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Graph](
	[GraphId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NULL,
	[StudyRecordId] [int] NULL,
	[SemesterId] [int] NULL,
	[HoursPerWeek] [float] NULL,
	[Date] [datetime] NULL,
	[IdealHoursPerWeek] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[GraphId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HourCalculation]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HourCalculation](
	[HourCalculationId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NULL,
	[SemesterId] [int] NULL,
	[SelfStudyHours] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[HourCalculationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[ModuleId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Credits] [int] NULL,
	[ClassHoursPerWeek] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemesterModule]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterModule](
	[SemesterModuleId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SemesterModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semesters]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semesters](
	[SemesterId] [int] IDENTITY(1,1) NOT NULL,
	[NumberofModules] [int] NULL,
	[Time] [datetime] NULL,
	[NumberofWeeks] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyRecords]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyRecords](
	[StudyRecordId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NULL,
	[Hours] [float] NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudyRecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/1/2023 1:07:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[PasswordHash] [varbinary](64) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Graph] ON 

INSERT [dbo].[Graph] ([GraphId], [ModuleId], [StudyRecordId], [SemesterId], [HoursPerWeek], [Date], [IdealHoursPerWeek]) VALUES (1, 1, 1, 1, 2.5, CAST(N'2023-10-26T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Graph] ([GraphId], [ModuleId], [StudyRecordId], [SemesterId], [HoursPerWeek], [Date], [IdealHoursPerWeek]) VALUES (2, 1, 2, 1, 3, CAST(N'2023-10-27T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Graph] ([GraphId], [ModuleId], [StudyRecordId], [SemesterId], [HoursPerWeek], [Date], [IdealHoursPerWeek]) VALUES (3, 2, 3, 1, 2, CAST(N'2023-10-26T00:00:00.000' AS DateTime), 4.5)
INSERT [dbo].[Graph] ([GraphId], [ModuleId], [StudyRecordId], [SemesterId], [HoursPerWeek], [Date], [IdealHoursPerWeek]) VALUES (4, 3, 4, 1, 3.5, CAST(N'2023-10-25T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Graph] ([GraphId], [ModuleId], [StudyRecordId], [SemesterId], [HoursPerWeek], [Date], [IdealHoursPerWeek]) VALUES (5, 4, 5, 1, 1.5, CAST(N'2023-10-24T00:00:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Graph] OFF
GO
SET IDENTITY_INSERT [dbo].[Modules] ON 

INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (1, N'MATH101', N'Mathematics 101', 4, 3)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (2, N'PHYS101', N'Physics 101', 3, 4)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (3, N'CS101', N'Computer Science 101', 5, 3)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (4, N'ENG101', N'English 101', 3, 2)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (5, N'CHEM101', N'Chemistry 101', 4, 3)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (6, N'Kops', N'kopano', 1, 1)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (7, N'Sho', N'shocase', 12, 1)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (8, N'Mot', N'Motjoka', 15, 10)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (9, N'lOL', N'LAUGH', 1, 2)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (10, N'Neo', N'Rorisang', 10, 10)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (11, N'NAT102', N'NAITH', 300, 5)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (12, N'NAT101', N'NAITH', 300, 5)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (13, N'Prog', N'Programming', 15, 30)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (14, N'Des', N'Design', 12, 2)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (15, N'0210', N'Kops', 1, 2)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (17, N'sex', N'sex', 2, 2)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (18, N'MATH101', N'Mathematics 101', 4, 3)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (19, N'PHYS101', N'Physics 101', 3, 4)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (20, N'CS101', N'Computer Science 101', 5, 3)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (21, N'ENG101', N'English 101', 3, 2)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (22, N'CHEM101', N'Chemistry 101', 4, 3)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (23, N'Goku', N'Naith', 15, 15)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (24, N'goki', N'1', 2, 2)
INSERT [dbo].[Modules] ([ModuleId], [Code], [Name], [Credits], [ClassHoursPerWeek]) VALUES (25, N'', N'', 0, 0)
SET IDENTITY_INSERT [dbo].[Modules] OFF
GO
SET IDENTITY_INSERT [dbo].[Semesters] ON 

INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (1, 5, CAST(N'2023-10-01T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (2, 4, CAST(N'2023-09-15T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (3, NULL, CAST(N'2023-03-03T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (4, 4, CAST(N'2023-03-15T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (5, 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (6, 5, CAST(N'2023-06-02T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (7, 3, CAST(N'2023-03-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (9, 5, CAST(N'2023-06-02T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (10, 5, CAST(N'2023-05-03T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (11, 3, CAST(N'2023-03-05T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (12, 5, CAST(N'2023-10-01T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (13, 4, CAST(N'2023-09-15T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (14, 5, CAST(N'2023-10-01T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (15, 4, CAST(N'2023-09-15T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (17, 5, CAST(N'2023-10-01T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (18, 4, CAST(N'2023-09-15T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Semesters] ([SemesterId], [NumberofModules], [Time], [NumberofWeeks]) VALUES (1017, 666, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 666)
SET IDENTITY_INSERT [dbo].[Semesters] OFF
GO
SET IDENTITY_INSERT [dbo].[StudyRecords] ON 

INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (1, 1, 2.5, CAST(N'2023-10-26T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (2, 1, 3, CAST(N'2023-10-27T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (3, 2, 2, CAST(N'2023-10-26T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (4, 3, 3.5, CAST(N'2023-10-25T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (5, 4, 1.5, CAST(N'2023-10-24T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (6, NULL, 6, CAST(N'2023-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (7, NULL, 5, CAST(N'2023-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (8, NULL, 20, CAST(N'2023-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (9, 1, 2.5, CAST(N'2023-10-26T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (10, 1, 3, CAST(N'2023-10-27T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (11, 2, 2, CAST(N'2023-10-26T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (12, 3, 3.5, CAST(N'2023-10-25T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (13, 4, 1.5, CAST(N'2023-10-24T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (14, NULL, 202, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (15, NULL, 202, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[StudyRecords] ([StudyRecordId], [ModuleId], [Hours], [Date]) VALUES (16, NULL, 15, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[StudyRecords] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (1, N'Kops123', 0x32BE464DED2A69552E95137C0C867EA47CDA7EF75E6082FD2041F72DDB79ACBF, N'Motjoka', N'Fanana')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (2, N'Kops', 0x75F9365F913116B529AD17F4DF3C9FC79164193A5CA12B3BEFBA4F604760CA9F, N'Kops', N'Kops')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (3, N'Kops', 0x75F9365F913116B529AD17F4DF3C9FC79164193A5CA12B3BEFBA4F604760CA9F, N'Kops', N'Kops')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (4, N'Neo123', 0x75F9365F913116B529AD17F4DF3C9FC79164193A5CA12B3BEFBA4F604760CA9F, N'Neo', N'Sedikane')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (5, N'Kops123', 0x75F9365F913116B529AD17F4DF3C9FC79164193A5CA12B3BEFBA4F604760CA9F, N'Motjoka', N'Fanana')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (1005, N'Kops123', 0x32BE464DED2A69552E95137C0C867EA47CDA7EF75E6082FD2041F72DDB79ACBF, N'Kopano', N'Fananan')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (1006, N'Tsholo', 0xA665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3, N'Tsholo', N'Mothibe')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (1007, N'kops', 0xA665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3, N'kops', N'kops')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (1008, N'kops', 0xA665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3, N'ceqw', N'vew')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (1009, N'love', 0x686F746A95B6F836D7D70567C302C3F9EBB5EE0DEF3D1220EE9D4E9F34F5E131, N'love', N'love')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (1010, N'love', 0x686F746A95B6F836D7D70567C302C3F9EBB5EE0DEF3D1220EE9D4E9F34F5E131, N'love', N'love')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (2009, N'NONANANA', 0xA665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3, N'NOANA', N'NONAN')
INSERT [dbo].[Users] ([UserId], [Username], [PasswordHash], [FirstName], [LastName]) VALUES (2010, N'NONANANA', 0xA665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3, N'NOANA', N'NONAN')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[FilterUser]  WITH CHECK ADD FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([ModuleId])
GO
ALTER TABLE [dbo].[FilterUser]  WITH CHECK ADD FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([SemesterId])
GO
ALTER TABLE [dbo].[FilterUser]  WITH CHECK ADD FOREIGN KEY([StudyRecordId])
REFERENCES [dbo].[StudyRecords] ([StudyRecordId])
GO
ALTER TABLE [dbo].[FilterUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Graph]  WITH CHECK ADD FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([ModuleId])
GO
ALTER TABLE [dbo].[Graph]  WITH CHECK ADD FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([SemesterId])
GO
ALTER TABLE [dbo].[Graph]  WITH CHECK ADD FOREIGN KEY([StudyRecordId])
REFERENCES [dbo].[StudyRecords] ([StudyRecordId])
GO
ALTER TABLE [dbo].[HourCalculation]  WITH CHECK ADD FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([ModuleId])
GO
ALTER TABLE [dbo].[HourCalculation]  WITH CHECK ADD FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([SemesterId])
GO
ALTER TABLE [dbo].[SemesterModule]  WITH CHECK ADD FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([ModuleId])
GO
ALTER TABLE [dbo].[SemesterModule]  WITH CHECK ADD FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semesters] ([SemesterId])
GO
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
