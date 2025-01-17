USE [ChequePro]
GO
/****** Object:  Table [dbo].[AuthBankUser]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthBankUser](
	[AuthID] [bigint] IDENTITY(1,1) NOT NULL,
	[BankID] [int] NULL,
	[BranchID] [int] NULL,
	[AccountNo] [bigint] NULL,
	[AuthTokenID] [bigint] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsCorporate] [bit] NULL,
	[TokenKey] [varchar](100) NULL,
	[TokenGeneratedOn] [datetime] NULL,
	[TokenExpireOn] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_AuthBankUser] PRIMARY KEY CLUSTERED 
(
	[AuthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthSecretKeyHistory]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthSecretKeyHistory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AuthID] [bigint] NULL,
	[OldAuthSecretKey] [varchar](50) NULL,
	[KeyUpdateOn] [datetime] NULL,
	[ModuleID] [int] NULL,
 CONSTRAINT [PK_AuthSecretKeyHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAuthToken]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAuthToken](
	[AuthTokenID] [bigint] IDENTITY(1,1) NOT NULL,
	[BankID] [int] NOT NULL,
	[AuthToken] [varchar](100) NOT NULL,
	[AuthSecretKey] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsFirstLogin] [bit] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[AuthTokenExpireOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BankAuthToken] PRIMARY KEY CLUSTERED 
(
	[AuthTokenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankConfig]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IndChqCountShow] [int] NULL,
	[CorChqCountShow] [int] NULL,
	[Session_Expiry_Time_Minutes] [int] NULL,
	[BankID] [int] NULL,
 CONSTRAINT [PK_IndCor_BankConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[BankID] [int] NOT NULL,
	[BankName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Banks_1] PRIMARY KEY CLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankUserLog]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankUserLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AuthID] [bigint] NULL,
	[AttemptOn] [datetime] NULL,
	[IsSuccessLogin] [bit] NULL,
	[ResponseDetails] [varchar](200) NULL,
 CONSTRAINT [PK_BankUserLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleDesc] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp_User_Login]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_User_Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[AuthToken] [varchar](50) NULL,
	[AuthSecretKey] [varchar](50) NULL,
	[BankID] [int] NULL,
	[BranchID] [int] NULL,
	[AccountID] [varchar](50) NULL,
 CONSTRAINT [PK_temp_User_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDecision]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDecision](
	[GenID] [int] IDENTITY(1,1) NOT NULL,
	[hostID] [bigint] NULL,
	[UserID] [bigint] NULL,
	[UserName] [nvarchar](100) NULL,
	[BankID] [int] NULL,
	[BranchID] [int] NULL,
	[Decisionid] [int] NULL,
	[Decision_detail] [nvarchar](200) NULL,
	[DecTime] [datetime] NULL,
	[UpdateDateTime] [datetime] NULL,
	[SetBy] [int] NULL,
 CONSTRAINT [PK_UserDecision] PRIMARY KEY CLUSTERED 
(
	[GenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[SetBy] [int] NULL,
	[UserType] [nvarchar](10) NULL,
	[Updatetime] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AuthBankUser] ON 

INSERT [dbo].[AuthBankUser] ([AuthID], [BankID], [BranchID], [AccountNo], [AuthTokenID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsCorporate], [TokenKey], [TokenGeneratedOn], [TokenExpireOn], [IsActive]) VALUES (2, 86, 1574, 109000290239762, 2, N'System', CAST(N'2024-02-26T17:24:16.477' AS DateTime), NULL, NULL, 0, N'N4X6DPffHdWiN_VibZagP5SzZcm1s4rfkH_sweCk7mg', CAST(N'2024-03-19T12:18:54.557' AS DateTime), CAST(N'2024-03-19T12:23:54.557' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[AuthBankUser] OFF
GO
SET IDENTITY_INSERT [dbo].[BankAuthToken] ON 

INSERT [dbo].[BankAuthToken] ([AuthTokenID], [BankID], [AuthToken], [AuthSecretKey], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsFirstLogin], [ModuleID], [AuthTokenExpireOn]) VALUES (2, 86, N'f1nFo7d+XXTZO3qayWTl3fPe+JD3VpZngp9eAWct0Os=', N'MjvX5sF2RhKblbBkZeFAW6qwJ5GTiuUAXK52aJSbEqo=', N'System', CAST(N'2024-02-26T16:55:50.597' AS DateTime), NULL, NULL, 0, 1, CAST(N'2024-03-27T16:55:50.597' AS DateTime))
SET IDENTITY_INSERT [dbo].[BankAuthToken] OFF
GO
SET IDENTITY_INSERT [dbo].[BankConfig] ON 

INSERT [dbo].[BankConfig] ([ID], [IndChqCountShow], [CorChqCountShow], [Session_Expiry_Time_Minutes], [BankID]) VALUES (1, 10, 50, 5, 86)
SET IDENTITY_INSERT [dbo].[BankConfig] OFF
GO
INSERT [dbo].[Banks] ([BankID], [BankName], [IsActive]) VALUES (86, N'UNITED BANK LTD', 1)
GO
SET IDENTITY_INSERT [dbo].[BankUserLog] ON 

INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (1, 2, CAST(N'2024-02-27T10:57:10.210' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (2, 2, CAST(N'2024-02-27T11:09:47.303' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (3, 2, CAST(N'2024-02-27T11:11:32.277' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (4, 2, CAST(N'2024-02-27T11:13:04.633' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (5, 2, CAST(N'2024-02-27T11:21:13.210' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (6, 2, CAST(N'2024-02-27T11:23:51.583' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (7, 2, CAST(N'2024-02-27T11:27:46.140' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (8, 2, CAST(N'2024-02-27T11:30:22.673' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (9, 2, CAST(N'2024-02-27T11:33:26.060' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10, 2, CAST(N'2024-02-27T11:34:26.580' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (11, 2, CAST(N'2024-02-27T12:33:45.223' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (12, 2, CAST(N'2024-02-27T12:41:47.230' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (13, 2, CAST(N'2024-02-27T12:50:00.560' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (14, 2, CAST(N'2024-02-27T12:50:40.407' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (15, 2, CAST(N'2024-02-27T13:33:35.220' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (16, 2, CAST(N'2024-02-27T16:31:05.367' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (17, 2, CAST(N'2024-02-27T16:48:14.373' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (18, 2, CAST(N'2024-02-27T17:07:44.180' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (19, 2, CAST(N'2024-02-27T17:09:23.700' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (20, 2, CAST(N'2024-02-28T10:22:56.303' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (21, 2, CAST(N'2024-02-28T10:25:08.260' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (22, 2, CAST(N'2024-02-28T10:40:18.317' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (23, 2, CAST(N'2024-02-28T10:41:31.863' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (24, 2, CAST(N'2024-02-28T10:43:20.540' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (25, 2, CAST(N'2024-02-28T10:44:46.687' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (26, 2, CAST(N'2024-02-28T11:16:58.753' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (27, 2, CAST(N'2024-02-28T11:26:14.330' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (28, 2, CAST(N'2024-02-28T11:27:47.853' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (29, 2, CAST(N'2024-02-28T11:35:37.197' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (30, 2, CAST(N'2024-02-28T11:36:20.450' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (31, 2, CAST(N'2024-02-28T11:38:40.703' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (32, 2, CAST(N'2024-02-28T11:58:31.400' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (33, 2, CAST(N'2024-02-28T12:01:34.453' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (34, 2, CAST(N'2024-02-28T12:05:13.283' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (35, 2, CAST(N'2024-02-28T13:00:49.653' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (36, 2, CAST(N'2024-02-28T15:43:13.153' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (37, 2, CAST(N'2024-02-28T15:54:08.227' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (38, 2, CAST(N'2024-02-28T16:03:53.590' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (39, 2, CAST(N'2024-02-28T16:11:06.487' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (40, 2, CAST(N'2024-02-28T16:26:23.840' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (41, 2, CAST(N'2024-02-28T16:26:47.413' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (42, 2, CAST(N'2024-02-28T16:27:58.647' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (43, 2, CAST(N'2024-02-28T16:31:41.130' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (44, 2, CAST(N'2024-02-28T16:32:12.140' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (45, 2, CAST(N'2024-02-28T16:36:09.653' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (46, 2, CAST(N'2024-02-28T16:37:55.217' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (47, 2, CAST(N'2024-02-28T17:19:56.013' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (48, 2, CAST(N'2024-03-01T11:28:05.600' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (49, 2, CAST(N'2024-03-01T12:07:54.993' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10002, 2, CAST(N'2024-03-15T10:41:50.383' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10003, 2, CAST(N'2024-03-15T10:44:28.933' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10004, 2, CAST(N'2024-03-15T10:48:03.150' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10005, 2, CAST(N'2024-03-18T09:29:39.707' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10006, 2, CAST(N'2024-03-18T09:53:17.653' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10007, 2, CAST(N'2024-03-18T09:55:47.093' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10008, 2, CAST(N'2024-03-18T10:01:28.890' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10009, 2, CAST(N'2024-03-18T10:18:06.333' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10010, 2, CAST(N'2024-03-18T10:36:55.200' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10011, 2, CAST(N'2024-03-18T10:37:28.453' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10012, 2, CAST(N'2024-03-18T10:42:44.670' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10013, 2, CAST(N'2024-03-18T11:04:44.597' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10014, 2, CAST(N'2024-03-18T11:14:10.303' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10015, 2, CAST(N'2024-03-18T11:27:35.973' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10016, 2, CAST(N'2024-03-18T11:41:50.003' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10017, 2, CAST(N'2024-03-18T11:45:27.460' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10018, 2, CAST(N'2024-03-18T12:03:00.373' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10019, 2, CAST(N'2024-03-18T13:32:46.797' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10020, 2, CAST(N'2024-03-18T13:37:50.527' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10021, 2, CAST(N'2024-03-18T13:41:25.340' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10022, 2, CAST(N'2024-03-18T13:43:55.090' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10023, 2, CAST(N'2024-03-18T13:49:20.213' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10024, 2, CAST(N'2024-03-18T13:50:23.777' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10025, 2, CAST(N'2024-03-18T13:55:15.910' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10026, 2, CAST(N'2024-03-18T13:57:15.833' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10027, 2, CAST(N'2024-03-18T14:00:24.683' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10028, 2, CAST(N'2024-03-18T14:00:41.360' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10029, 2, CAST(N'2024-03-18T14:02:23.053' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10030, 2, CAST(N'2024-03-18T14:15:15.023' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10031, 2, CAST(N'2024-03-18T14:16:33.337' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10032, 2, CAST(N'2024-03-18T14:17:07.857' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10033, 2, CAST(N'2024-03-18T14:31:25.560' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10034, 2, CAST(N'2024-03-18T14:33:17.920' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10035, 2, CAST(N'2024-03-18T14:53:12.847' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10036, 2, CAST(N'2024-03-18T15:00:53.453' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10037, 2, CAST(N'2024-03-18T15:02:07.790' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10038, 2, CAST(N'2024-03-18T15:06:53.503' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10039, 2, CAST(N'2024-03-18T15:35:03.203' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10040, 2, CAST(N'2024-03-18T15:37:39.947' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10041, 2, CAST(N'2024-03-18T15:40:37.993' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10042, 2, CAST(N'2024-03-18T15:42:18.797' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10043, 2, CAST(N'2024-03-18T15:42:29.277' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10044, 2, CAST(N'2024-03-18T15:48:16.013' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10045, 2, CAST(N'2024-03-18T15:48:37.937' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10046, 2, CAST(N'2024-03-18T15:53:16.180' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10047, 2, CAST(N'2024-03-19T10:01:45.433' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10048, 2, CAST(N'2024-03-19T10:02:20.803' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10049, 2, CAST(N'2024-03-19T10:04:14.747' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10050, 2, CAST(N'2024-03-19T10:05:06.370' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10051, 2, CAST(N'2024-03-19T10:15:42.920' AS DateTime), 1, N'Login Successful')
GO
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10052, 2, CAST(N'2024-03-19T10:28:12.100' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10053, 2, CAST(N'2024-03-19T10:33:11.643' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10054, 2, CAST(N'2024-03-19T10:34:12.370' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10055, 2, CAST(N'2024-03-19T10:40:19.683' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10056, 2, CAST(N'2024-03-19T10:40:32.550' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10057, 2, CAST(N'2024-03-19T10:54:15.370' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10058, 2, CAST(N'2024-03-19T10:55:51.907' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10059, 2, CAST(N'2024-03-19T11:06:28.650' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10060, 2, CAST(N'2024-03-19T11:06:45.117' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10061, 2, CAST(N'2024-03-19T11:12:32.547' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10062, 2, CAST(N'2024-03-19T11:17:21.237' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10063, 2, CAST(N'2024-03-19T11:28:49.430' AS DateTime), 1, N'Login Successful')
INSERT [dbo].[BankUserLog] ([ID], [AuthID], [AttemptOn], [IsSuccessLogin], [ResponseDetails]) VALUES (10064, 2, CAST(N'2024-03-19T12:18:54.560' AS DateTime), 1, N'Login Successful')
SET IDENTITY_INSERT [dbo].[BankUserLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Modules] ON 

INSERT [dbo].[Modules] ([ModuleID], [ModuleDesc], [IsActive]) VALUES (1, N'NIFT V-Check', 1)
INSERT [dbo].[Modules] ([ModuleID], [ModuleDesc], [IsActive]) VALUES (2, N'NIFT M-Check', 1)
SET IDENTITY_INSERT [dbo].[Modules] OFF
GO
SET IDENTITY_INSERT [dbo].[temp_User_Login] ON 

INSERT [dbo].[temp_User_Login] ([ID], [UserID], [Password], [AuthToken], [AuthSecretKey], [BankID], [BranchID], [AccountID]) VALUES (1, N'03062858927', N'A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=', N'y5wTGSDE_qVJhf7Y8ysxPWBQjNGJyRGsD619HB1c7iI', N'4FnZICj38GAUT2nbmNkIwgB52Brf3jyh7ZAem-sMBFM', 86, 1574, N'109000290239762')
SET IDENTITY_INSERT [dbo].[temp_User_Login] OFF
GO
SET IDENTITY_INSERT [dbo].[UserDecision] ON 

INSERT [dbo].[UserDecision] ([GenID], [hostID], [UserID], [UserName], [BankID], [BranchID], [Decisionid], [Decision_detail], [DecTime], [UpdateDateTime], [SetBy]) VALUES (1, 552012, 222, N'A.raza', 54, 786, 1, N'I have authorized this cheque', CAST(N'2024-03-07T11:18:00.000' AS DateTime), CAST(N'2024-03-07T11:19:36.517' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[UserDecision] OFF
GO
INSERT [dbo].[UserType] ([SetBy], [UserType], [Updatetime]) VALUES (1, N'Web Portal', CAST(N'2024-03-22T10:14:51.430' AS DateTime))
INSERT [dbo].[UserType] ([SetBy], [UserType], [Updatetime]) VALUES (2, N'Mobile App', CAST(N'2024-03-22T10:15:21.160' AS DateTime))
GO
ALTER TABLE [dbo].[AuthBankUser]  WITH CHECK ADD  CONSTRAINT [FK_AuthBankUser_BankAuthToken] FOREIGN KEY([AuthTokenID])
REFERENCES [dbo].[BankAuthToken] ([AuthTokenID])
GO
ALTER TABLE [dbo].[AuthBankUser] CHECK CONSTRAINT [FK_AuthBankUser_BankAuthToken]
GO
ALTER TABLE [dbo].[AuthBankUser]  WITH CHECK ADD  CONSTRAINT [FK_AuthBankUser_Banks] FOREIGN KEY([BankID])
REFERENCES [dbo].[Banks] ([BankID])
GO
ALTER TABLE [dbo].[AuthBankUser] CHECK CONSTRAINT [FK_AuthBankUser_Banks]
GO
ALTER TABLE [dbo].[AuthSecretKeyHistory]  WITH CHECK ADD  CONSTRAINT [FK_AuthSecretKeyHistory_AuthBankUser] FOREIGN KEY([AuthID])
REFERENCES [dbo].[AuthBankUser] ([AuthID])
GO
ALTER TABLE [dbo].[AuthSecretKeyHistory] CHECK CONSTRAINT [FK_AuthSecretKeyHistory_AuthBankUser]
GO
ALTER TABLE [dbo].[AuthSecretKeyHistory]  WITH CHECK ADD  CONSTRAINT [FK_AuthSecretKeyHistory_Modules] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[Modules] ([ModuleID])
GO
ALTER TABLE [dbo].[AuthSecretKeyHistory] CHECK CONSTRAINT [FK_AuthSecretKeyHistory_Modules]
GO
ALTER TABLE [dbo].[BankAuthToken]  WITH CHECK ADD  CONSTRAINT [FK_BankAuthToken_Banks] FOREIGN KEY([BankID])
REFERENCES [dbo].[Banks] ([BankID])
GO
ALTER TABLE [dbo].[BankAuthToken] CHECK CONSTRAINT [FK_BankAuthToken_Banks]
GO
ALTER TABLE [dbo].[BankAuthToken]  WITH CHECK ADD  CONSTRAINT [FK_BankAuthToken_Modules] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[Modules] ([ModuleID])
GO
ALTER TABLE [dbo].[BankAuthToken] CHECK CONSTRAINT [FK_BankAuthToken_Modules]
GO
ALTER TABLE [dbo].[BankUserLog]  WITH CHECK ADD  CONSTRAINT [FK_BankUserLog_AuthBankUser] FOREIGN KEY([AuthID])
REFERENCES [dbo].[AuthBankUser] ([AuthID])
GO
ALTER TABLE [dbo].[BankUserLog] CHECK CONSTRAINT [FK_BankUserLog_AuthBankUser]
GO
/****** Object:  StoredProcedure [dbo].[SP_Cheque_Decision]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Cheque_Decision] 
	@hostid bigint,
	@userid bigint,
	@username nvarchar(100),
	@bankid int,
	@branchid int,
	@decisionid int,
	@decision_detail nvarchar(200),
	@dectime datetime
AS
BEGIN
	Insert into UserDecision([hostID],[UserID],[UserName],[BankID],[BranchID] ,[Decisionid] ,[Decision_detail],[DecTime],[UpdateDateTime])
	values
	(@hostid,@userid,@username,@bankid,@branchid,@decisionid,@decision_detail,@dectime,getdate())
	SELECT @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Cheque_Details]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Cheque_Details] --305904
	@hostid bigint

AS
BEGIN
	
	/*Cheque Details SP*/
	select --top 10
		hostid, 
		REPLICATE('0',8-LEN(vh.ChequeNo))+CAST(vh.ChequeNo AS varchar) as ChequeNo, 
		REPLICATE('0',16-LEN(vh.AccountNo))+CAST(vh.AccountNo AS varchar) as AccountNo, 
		vh.SequenceNo,
		vh.Amount, 
		vh.Processdate,
		vh.cycleno,
		vh.CityID, 
		REPLICATE('0',3-LEN(vh.receiverbank))+CAST(vh.receiverbank AS varchar) as receiverbank, 
		REPLICATE('0',4-LEN(vh.receiverbranch))+CAST(vh.receiverbranch AS varchar) as receiverbranch, 
		vh.reasonid,
		vh.reason, 
		case when vh.isDeffer = 0 then 'Non-Deferred' when vh.isDeffer = 1 then 'Deferred' end as isDeffer, 
		vh.isauth, 
		case when vh.Undersize_Image = 0 then 'Not Available' when vh.Undersize_Image = 1 then 'not ok' when vh.Undersize_Image = 2 then 'ok' end as Undersize_Image, 
		case when vh.Folded_or_Torn_Document_Corners = 0 then 'Not Available' when vh.Folded_or_Torn_Document_Corners = 1 then 'not ok' when vh.Folded_or_Torn_Document_Corners = 2 then 'ok' end as FoldedDocCorners,
		case when vh.Folded_or_Torn_Document_Edges = 0 then 'Not Available' when vh.Folded_or_Torn_Document_Edges = 1 then 'not ok' when vh.Folded_or_Torn_Document_Edges = 2 then 'ok' end as FoldedDocEdges, 
		case when vh.Framing_Error = 0 then 'Not Available' when vh.Framing_Error = 1 then 'not ok' when vh.Framing_Error = 2 then 'ok' end as Framing_Error,
		case when vh.Document_Skew = 0 then 'Not Available' when vh.Document_Skew = 1 then 'not ok' when vh.Document_Skew = 2 then 'ok' end as DocSkew, 
		case when vh.Oversize_Image = 0 then 'Not Available' when vh.Oversize_Image = 1 then 'not ok' when vh.Oversize_Image = 2 then 'ok' end as Oversize_Image,
		case when vh.Piggy_Back = 0 then 'Not Available' when vh.Piggy_Back = 1 then 'not ok' when vh.Piggy_Back = 2 then 'ok' end as Piggy_Back,
		case when vh.Image_Too_Light = 0 then 'Not Available' when vh.Image_Too_Light = 1 then 'not ok' when vh.Image_Too_Light = 2 then 'ok' end as Image_Too_Light, 
		case when vh.Image_Too_Dark = 0 then 'Not Available' when vh.Image_Too_Dark = 1 then 'not ok' when vh.Image_Too_Dark = 2 then 'ok' end as Image_Too_Dark, 
		case when vh.Horizontal_Streaks = 0 then 'Not Available' when vh.Horizontal_Streaks = 1 then 'not ok' when vh.Horizontal_Streaks = 2 then 'ok' end as Horizontal_Streaks,
		case when vh.Below_Minimum_Compressed_Image_Size = 0 then 'Not Available' when vh.Below_Minimum_Compressed_Image_Size = 1 then 'not ok' when vh.Below_Minimum_Compressed_Image_Size = 2 then 'ok' end as BelowMinImgsize,
		case when vh.Above_Maximum_Compressed_Image_Size = 0 then 'Not Available' when vh.Above_Maximum_Compressed_Image_Size = 1 then 'not ok' when vh.Above_Maximum_Compressed_Image_Size = 2 then 'ok' end as AboveMaxImgsize, 
		vh.Spot_Noise, 
		case when vh.Front_Rear_Dimension_Mismatch = 0 then 'Not Available' when vh.Front_Rear_Dimension_Mismatch = 1 then 'not ok' when vh.Front_Rear_Dimension_Mismatch = 2 then 'ok' end as FrontRearMismatch,
		case when vh.Carbon_Strip = 0 then 'Not Available' when vh.Carbon_Strip = 1 then 'not ok' when vh.Carbon_Strip = 2 then 'ok' end as Carbon_Strip,
		case when vh.Out_of_Focus = 0 then 'Not Available' when vh.Out_of_Focus = 1 then 'not ok' when vh.Out_of_Focus = 2 then 'ok' end as Out_of_Focus,
		case when vh.IQATag = 0 then 'Not Available' when vh.IQATag = 1 then 'not ok' when vh.IQATag = 2 then 'ok' end as IQATag,
		case when vh.barcodeMatch = 0 then 'Not Available' when vh.barcodeMatch = 1 then 'not ok' when vh.barcodeMatch = 2 then 'ok' end as barcodeMatch,
		--case when vh.UVStr = 0 then 'Not Available' when vh.UVStr = 1 then 'not ok' when vh.UVStr = 2 then 'ok' when vh.UVStr = 3 then 'missing' end as UVStr,
		case when vh.UVStr = 0 then 'N/A' when vh.UVStr = 1 then 'B.Avg/Chk%' when vh.UVStr = 2 then 'A.Avg/Chk%' end as UVStr,
		case when vh.Duplicate = 0 then 'Not Available' when vh.Duplicate = 1 then 'Duplicate' when vh.Duplicate = 2 then 'Not Duplicate' end as Duplicate,
		case when vh.MICR_Present = 1 then 'No' when vh.MICR_Present = 2 then 'YES' when vh.MICR_Present = 0 then 'Not Available' end as MICR_Present,
		ai.avg_amount as Average_Amount, --vh.Average_Amount,
		case when vh.STD_Non_STD = 0 then 'Not Available' when vh.STD_Non_STD = 1 then 'Non-Standard' when vh.STD_Non_STD = 2 then 'Standard' end as STD_Non_STD,
		vh.Water_Mark,
		case when vh.isFraud = 0 then 'Non-Fraud History' when vh.isFraud = 1 then 'Fraud History' when vh.isFraud = 2 then 'Not Available' end as isFraud, 
		img.FrontImage,
		img.BackImage, 
		img.UVImage,
		i.instname as ReceiverBankName,
		b.branch_name as ReceiverBranchName,
		ii.instname as SenderBankName,
		bb.branch_name as SenderBranchName,
		right('000' + cast(vh.TransCode as varchar(5)),3) as TransCode,
		vh.UVPercent,
		vh.TemplateID as UVTemplateID,
		ai.Clg_Chq_Count,
		ai.Rtn_Chq_Count,
		ai.TotalCount as Tot_Chq_Count
	from NIBCIMG.dbo.vhostnibc vh
	left join (
		select 
			receiverbank,
			receiverbranch,
			accno,
			clg_chq_count,
			rtn_chq_count,
			avg_amount,
			TotalCount
		from NIBCIMG.[dbo].[Host_Ai]
	) ai
		on cast(ai.receiverbank as int) = cast(vh.receiverbank as int)
		and cast(ai.receiverbranch as int) = cast(vh.receiverbranch as int)
		and cast(ai.accno as bigint) = cast(vh.AccountNo as bigint)
	Inner join NIBCIMG.dbo.HOSTNIBCIMG img 
		on img.DinNo = vh.SequenceNo
		and img.Processdate = vh.Processdate
		and img.cycleno = vh.cycleno  
	inner Join NIBCIMG.dbo.institution i
		on i.Instid = vh.receiverbank
	Inner Join NIBCIMG.dbo.Branch b
		on vh.receiverbranch = b.branchid 
		and b.instid = i.Instid 
		and b.cityid = vh.CityID
	Inner Join NIBCIMG.dbo.institution ii
		on ii.Instid = vh.senderbank
	Inner Join NIBCIMG.dbo.Branch bb
		on vh.senderbranch = bb.branchid 
		and bb.instid = ii.Instid 
		and bb.cityid = vh.CityID
	where hostid=@hostid

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Cheque_Details_2]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Cheque_Details_2]
	@hostid bigint

AS
BEGIN
	
	/*Cheque Details SP*/
	select
		hostid, 
		REPLICATE('0',8-LEN(vh.ChequeNo))+CAST(vh.ChequeNo AS varchar) as ChequeNo, 
		REPLICATE('0',16-LEN(vh.AccountNo))+CAST(vh.AccountNo AS varchar) as AccountNo, 
		vh.SequenceNo,
		vh.Amount, 
		vh.Processdate,
		vh.cycleno,
		vh.CityID, 
		REPLICATE('0',3-LEN(vh.receiverbank))+CAST(vh.receiverbank AS varchar) as receiverbank, 
		REPLICATE('0',4-LEN(vh.receiverbranch))+CAST(vh.receiverbranch AS varchar) as receiverbranch, 
		vh.reasonid,
		vh.reason, 
		vh.isDeffer, 
		vh.isauth, 
		vh.Undersize_Image, 
		vh.Folded_or_Torn_Document_Corners as FoldedDocCorners,
		vh.Folded_or_Torn_Document_Edges as FoldedDocEdges, 
		vh.Framing_Error,
		vh.Document_Skew as DocSkew, 
		vh.Oversize_Image, 
		vh.Piggy_Back, 
		vh.Image_Too_Light, 
		vh.Image_Too_Dark, 
		vh.Horizontal_Streaks,
		vh.Below_Minimum_Compressed_Image_Size as BelowMinImgsize,
		vh.Above_Maximum_Compressed_Image_Size as AboveMaxImgsize, 
		vh.Spot_Noise, 
		vh.Front_Rear_Dimension_Mismatch as FrontRearMismatch,
		vh.Carbon_Strip,
		vh.Out_of_Focus,
		vh.IQATag,
		vh.barcodeMatch,
		vh.UVStr,
		vh.Duplicate,
		vh.MICR_Present,
		vh.Average_Amount,
		vh.STD_Non_STD,
		vh.Water_Mark,
		vh.isFraud, 
		img.FrontImage,
		img.BackImage, 
		img.UVImage
	from NIBCIMG.dbo.vhostnibc vh
	join NIBCIMG.dbo.HOSTNIBCIMG img 
		on img.DinNo = vh.SequenceNo
		and img.Processdate = vh.Processdate
		and img.cycleno = vh.cycleno  
	where hostid=@hostid

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ChequeRecordList]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ChequeRecordList] --86, 1574, '109000290239762'
	@bankcode int,
	@branchcode int,
	@account varchar(20)

AS
BEGIN
	
/*CHeque listing SP*/
select top 10 
	vh.hostid, 
	REPLICATE('0',8-LEN(vh.ChequeNo))+CAST(vh.ChequeNo AS varchar) as ChequeNo, 
	REPLICATE('0',16-LEN(vh.AccountNo))+CAST(vh.AccountNo AS varchar) as AccountNo, 
	vh.Amount, 
	cast(vh.Processdate as date) Processdate, 
	REPLICATE('0',3-LEN(vh.receiverbank))+CAST(vh.receiverbank AS varchar) as receiverbank , 
	REPLICATE('0',4-LEN(vh.receiverbranch))+CAST(vh.receiverbranch AS varchar) as receiverbranch, 
	REPLICATE('0',3-LEN(vh.senderbank))+CAST(vh.senderbank AS varchar) as senderbank, 
	REPLICATE('0',4-LEN(vh.senderbranch))+CAST(vh.senderbranch AS varchar) as senderbranch, 
	vh.reasonid,
	vh.reason,
	i.instname + ' ' + b.branch_name as ReceiverBankBranchName,
	i.instname ReceiverBankName,
	b.branch_name ReceiverBranchName,
	ii.instname + ' ' + bb.branch_name as SenderBankBranchName,
	ii.instname SenderBankName,
	bb.branch_name SenderBranchName
from NIBCIMG.dbo.vHostNIBC vh
inner Join NIBCIMG.dbo.institution i
on i.Instid = vh.receiverbank
inner Join NIBCIMG.dbo.institution ii
on ii.Instid = vh.senderbank
Inner Join NIBCIMG.dbo.Branch b
on vh.receiverbranch = b.branchid and b.instid = i.Instid and b.cityid = vh.CityID
Inner Join NIBCIMG.dbo.Branch bb
on vh.senderbranch = bb.branchid and bb.instid = ii.Instid and b.cityid = vh.CityID
--join HOSTNIBCIMG img on img.DinNo = vh.SequenceNo
--and img.Processdate = vh.Processdate
--and img.cycleno = vh.cycleno  
where receiverbank=@bankcode and receiverbranch=@branchcode and accountno =@account
and vh.onus = 'D'
order by hostid desc

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_AuthID_Details]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_AuthID_Details]
	@H_AuthToken varchar(50),
	@H_AuthSecretKey varchar(50),
	@BankID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	
	select 
		AuthTokenID,
		IsFirstLogin,
		AuthTokenExpireOn 
	from BankAuthToken a 
	Inner Join Banks b
		on a.BankID = b.BankID
	where AuthToken = @H_AuthToken 
	and AuthSecretKey = @H_AuthSecretKey 
	and a.BankID = @BankID
	and b.IsActive = 1
	and a.AuthTokenExpireOn > GETDATE()
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_UserAuthToken]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_Get_UserAuthToken]
	@H_AuthToken varchar(50),
	@H_AuthSecretKey varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		COUNT(*)
	FROM [dbo].[BankAuthToken] 
	where AuthToken = @H_AuthToken
	and AuthSecretKey = @H_AuthSecretKey
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_UserPassword]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_Get_UserPassword]
	@UserID varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		top 1 [Password] 
	FROM [dbo].[temp_User_Login] u
	where u.UserID = @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_UserToken]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[sp_Get_UserToken]
	@UserID varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * 
	FROM [dbo].[temp_User_Login] u
	where u.UserID = @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_verify_User_Upd_Token]    Script Date: 3/26/2024 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_verify_User_Upd_Token]
	@H_AuthToken varchar(50),
	@H_AuthSecretKey varchar(50),
	@BankID int,
	@BranchID int,
	@AccountID bigint,
	@SessionKey varchar(50),
	@AuthID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @Session_Expiry_Time_Minutes int;
	select @Session_Expiry_Time_Minutes = Session_Expiry_Time_Minutes from BankConfig where BankID = @BankID

	update BankAuthToken
		set IsFirstLogin = 0
	where AuthToken = @H_AuthToken 
		and AuthSecretKey = @H_AuthSecretKey 
		and BankID = @BankID
		and IsFirstLogin = 1

	if exists(select * from AuthBankUser where AuthID = @AuthID and BankID = @BankID and AccountNo = @AccountID and BranchID = @BranchID)
	Begin
		update AuthBankUser 
			set TokenKey = @SessionKey, 
				TokenGeneratedOn = GETDATE(), 
				TokenExpireOn = cast(DATEADD(MINUTE,@Session_Expiry_Time_Minutes,GETDATE()) as datetime)
			where AuthID = @AuthID 
			and BankID = @BankID 
			and AccountNo = @AccountID 
			and BranchID = @BranchID;

		insert into BankUserLog values(@AuthID, GETDATE(), 1, 'Login Successful')
		select 1
	End
	else begin
		select 2
	end
END
GO
