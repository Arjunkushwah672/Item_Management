USE [FOODDB]
GO
/****** Object:  UserDefinedTableType [dbo].[tblDemand]    Script Date: 27-09-2024 17:58:41 ******/
CREATE TYPE [dbo].[tblDemand] AS TABLE(
	[Product_Id] [int] NULL,
	[Item_Id] [int] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [decimal](18, 2) NULL
)
GO
/****** Object:  Table [dbo].[Mst_CategoryWithData]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_CategoryWithData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[Data] [int] NULL,
 CONSTRAINT [PK_Mst_CategoryWithData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mst_Country]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mst_Country](
	[CountryId] [tinyint] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_Mst_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[City_Id] [int] IDENTITY(1,1) NOT NULL,
	[State_Id] [int] NOT NULL,
	[Division_Id] [int] NOT NULL,
	[CityName] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
	[IsActive] [int] NULL,
	[CreatedAT] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdateDateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](1) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[City_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDemand]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDemand](
	[Demand_Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NULL,
	[Item_Id] [int] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[IsActive] [int] NULL,
	[CreatedAT] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdateDateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](1) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDemand] PRIMARY KEY CLUSTERED 
(
	[Demand_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbldesignation]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbldesignation](
	[Designation_id] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [varchar](100) NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_tbldesignation] PRIMARY KEY CLUSTERED 
(
	[Designation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDivision]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDivision](
	[Division_Id] [int] IDENTITY(1,1) NOT NULL,
	[State_Id] [int] NOT NULL,
	[DivisionName] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
	[IsActive] [int] NULL,
	[CreatedAT] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdateDateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](1) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDivision] PRIMARY KEY CLUSTERED 
(
	[Division_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmp]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp](
	[Emp_Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](50) NULL,
	[Mob_No] [varchar](13) NULL,
	[Email] [varchar](100) NULL,
	[Dob] [varchar](20) NULL,
	[Address] [varchar](200) NULL,
	[Password] [varchar](12) NULL,
	[ConfirmPassword] [varchar](12) NULL,
	[PImageName] [nvarchar](250) NULL,
	[PImagePath] [nvarchar](250) NULL,
	[PdfFileName] [nvarchar](250) NULL,
	[PdfFilePath] [nvarchar](250) NULL,
	[Description] [varchar](250) NULL,
	[IsActive] [int] NULL,
	[CreatedAT] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdateDateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblEmp] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblExpirelink]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblExpirelink](
	[Explink_Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](70) NULL,
	[Datetime] [nvarchar](40) NULL,
 CONSTRAINT [PK_tblExpirelink] PRIMARY KEY CLUSTERED 
(
	[Explink_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblItem]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblItem](
	[Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](100) NULL,
	[वस्तु_का_नाम] [nvarchar](200) NULL,
	[Description] [nvarchar](250) NULL,
	[IsActive] [int] NULL,
	[CreatedAT] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdateDateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](1) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblItem] PRIMARY KEY CLUSTERED 
(
	[Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[Product_Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
	[IsActive] [int] NULL,
	[CreatedAT] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdateDateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](1) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRagistration]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRagistration](
	[Ragistration_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Mob_No] [varchar](13) NULL,
	[Email] [varchar](100) NULL,
	[Dob] [varchar](20) NULL,
	[Address] [varchar](200) NULL,
	[Description] [varchar](250) NULL,
 CONSTRAINT [PK_tblRagistration] PRIMARY KEY CLUSTERED 
(
	[Ragistration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRate]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRate](
	[Rate_Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Id] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Description] [nvarchar](250) NULL,
	[IsActive] [int] NULL,
	[CreatedAT] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdateDateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](1) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblRate] PRIMARY KEY CLUSTERED 
(
	[Rate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[State_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
	[IsActive] [int] NULL,
	[CreatedAT] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdateDateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](1) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mst_CategoryWithData] ON 
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (1, N'Corn', 854700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (2, N'Corn', 100850)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (3, N'Corn', 365400)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (4, N'Corn', 147800)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (5, N'Corn', 258700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (6, N'Corn', 854700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (7, N'Corn', 65800)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (8, N'Wheat', 854700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (9, N'Wheat', 100850)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (10, N'Wheat', 365400)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (11, N'Wheat', 147800)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (12, N'Wheat', 258700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (13, N'Wheat', 854700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (14, N'Wheat', 65800)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (15, N'Rice', 854700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (16, N'Rice', 100850)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (17, N'Rice', 365400)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (18, N'Rice', 147800)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (19, N'Rice', 258700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (20, N'Rice', 854700)
GO
INSERT [dbo].[Mst_CategoryWithData] ([Id], [CategoryName], [Data]) VALUES (21, N'Rice', 65800)
GO
SET IDENTITY_INSERT [dbo].[Mst_CategoryWithData] OFF
GO
SET IDENTITY_INSERT [dbo].[Mst_Country] ON 
GO
INSERT [dbo].[Mst_Country] ([CountryId], [CountryName]) VALUES (1, N'USA')
GO
INSERT [dbo].[Mst_Country] ([CountryId], [CountryName]) VALUES (2, N'China')
GO
INSERT [dbo].[Mst_Country] ([CountryId], [CountryName]) VALUES (3, N'Brazil')
GO
INSERT [dbo].[Mst_Country] ([CountryId], [CountryName]) VALUES (4, N'EU')
GO
INSERT [dbo].[Mst_Country] ([CountryId], [CountryName]) VALUES (5, N'Argentina')
GO
INSERT [dbo].[Mst_Country] ([CountryId], [CountryName]) VALUES (6, N'India')
GO
INSERT [dbo].[Mst_Country] ([CountryId], [CountryName]) VALUES (7, N'Srilanka')
GO
SET IDENTITY_INSERT [dbo].[Mst_Country] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCity] ON 
GO
INSERT [dbo].[tblCity] ([City_Id], [State_Id], [Division_Id], [CityName], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1, 1, 5, N'indore', N'desc', NULL, CAST(N'2024-09-05T13:53:09.140' AS DateTime), N'1', CAST(N'2024-09-17T18:16:21.200' AS DateTime), N'3', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblCity] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDemand] ON 
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1, 1, 1, 12, CAST(144.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-23T10:45:53.333' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (2, 1, 1, 10, CAST(20000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-25T16:15:47.487' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (3, NULL, NULL, NULL, NULL, 0, CAST(N'2024-09-25T16:27:29.087' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (4, 1, 1, 2, CAST(4000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-25T16:54:48.713' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (5, 1, 1, 1, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-25T22:39:40.160' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1001, 1, 1, 11, CAST(22000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:05:37.180' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1002, 2, 1, 22, CAST(22000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:05:37.180' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1003, 1, 1, 11, CAST(22000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:06:13.733' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1004, 2, 1, 22, CAST(22000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:06:13.733' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1005, 1, 1, 11, CAST(22000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:06:44.027' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1006, 2, 1, 22, CAST(22000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:06:44.027' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1007, 2, 1, 33, CAST(33000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:06:44.027' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1008, 2, 1, 1, CAST(1000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:09:31.057' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1009, 2, 1, 1, CAST(1000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:09:31.057' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1010, 2, 1, 7, CAST(7000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:27:42.550' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1011, 2, 1, 1, CAST(1000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:27:42.550' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1012, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-26T23:27:42.550' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1013, 2, 1, 3, CAST(3000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:27:19.983' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1014, 2, 1, 5, CAST(5000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:27:19.983' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1015, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:30:54.253' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1016, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:30:54.253' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1017, 2, 1, 6, CAST(6000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:33:47.390' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1018, 1, 1, 3, CAST(6000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:33:47.390' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1019, 2, 1, 6, CAST(6000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:36:10.537' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1020, 1, 1, 3, CAST(6000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:36:10.537' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1021, 2, 1, 6, CAST(6000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:36:30.867' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1022, 1, 1, 3, CAST(6000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:36:30.867' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1023, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:39:51.303' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1024, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:40:27.150' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1025, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:43:58.570' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1026, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:44:49.177' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1027, 1, 1, 4, CAST(8000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:50:04.157' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1028, 1, 1, 4, CAST(8000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:50:58.997' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1029, 1, 1, 4, CAST(8000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:53:16.357' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1030, 1, 1, 4, CAST(8000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:55:00.977' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1031, 2, 1, 9, CAST(9000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T10:55:00.977' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1032, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:29:20.490' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1033, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:31:04.237' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1034, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:31:04.237' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1035, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:31:33.700' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1036, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:31:33.700' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1037, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:32:49.853' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1038, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:32:49.853' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1039, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:33:10.590' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1040, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:33:10.590' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1041, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:33:56.700' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1042, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:33:56.700' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1043, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:37:22.787' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1044, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:37:22.787' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1045, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:39:27.163' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1046, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:39:27.163' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1047, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:41:30.440' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1048, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T12:41:30.440' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1049, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:51:59.407' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1050, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:51:59.407' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1051, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:52:22.357' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1052, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:52:22.357' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1053, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:52:45.740' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1054, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:52:45.740' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1055, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:53:09.490' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1056, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:53:09.490' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1057, 1, 1, 5, CAST(10000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:53:32.173' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1058, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T13:53:32.173' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1059, 1, 1, 3, CAST(6000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T16:06:19.957' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDemand] ([Demand_Id], [Product_Id], [Item_Id], [Quantity], [TotalPrice], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1060, 2, 1, 2, CAST(2000.00 AS Decimal(18, 2)), 0, CAST(N'2024-09-27T16:39:47.980' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblDemand] OFF
GO
SET IDENTITY_INSERT [dbo].[tbldesignation] ON 
GO
INSERT [dbo].[tbldesignation] ([Designation_id], [DesignationName], [Description]) VALUES (1, N'Hr', N'null')
GO
INSERT [dbo].[tbldesignation] ([Designation_id], [DesignationName], [Description]) VALUES (2, N'manager', NULL)
GO
SET IDENTITY_INSERT [dbo].[tbldesignation] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDivision] ON 
GO
INSERT [dbo].[tblDivision] ([Division_Id], [State_Id], [DivisionName], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1, 1, N'Gwalior', N'mp state ', 1, CAST(N'2024-09-03T13:48:36.397' AS DateTime), N'1', CAST(N'2024-09-17T18:39:57.640' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tblDivision] ([Division_Id], [State_Id], [DivisionName], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (2, 1, N'Bhopal', N'mp state', 0, CAST(N'2024-09-03T13:51:50.663' AS DateTime), N'1', CAST(N'2024-09-05T13:40:30.147' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tblDivision] ([Division_Id], [State_Id], [DivisionName], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (3, 2, N'Jhanshi ', N'vglj', 0, CAST(N'2024-09-03T15:17:31.987' AS DateTime), N'1', CAST(N'2024-09-05T13:40:24.957' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tblDivision] ([Division_Id], [State_Id], [DivisionName], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (5, 1, N'indore', N'indb', 1, CAST(N'2024-09-04T18:05:50.213' AS DateTime), N'4', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblDivision] ([Division_Id], [State_Id], [DivisionName], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (6, 5, N'Surat', N'srt', 1, CAST(N'2024-09-05T10:25:05.357' AS DateTime), N'1', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblDivision] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEmp] ON 
GO
INSERT [dbo].[tblEmp] ([Emp_Id], [EmpName], [Mob_No], [Email], [Dob], [Address], [Password], [ConfirmPassword], [PImageName], [PImagePath], [PdfFileName], [PdfFilePath], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1, N'Arjun', N'+919999999999', N'kushwaharjun405@gmail.com', N'2002-12-12', N'bhopal', N'1234', N'1234', N'39e5f3fe-f246-4e88-ab7b-fbc2dfeee0fc-Adobe Scan 14 Aug 2024.pdf', N'../Common/UploadImage/39e5f3fe-f246-4e88-ab7b-fbc2dfeee0fc-Adobe Scan 14 Aug 2024.pdf', N'f6d573fd-4aa4-49f0-8187-f3e7985c2bf1-Adobe Scan 14 Aug 2024.pdf', N'../Common/UploadPdf/f6d573fd-4aa4-49f0-8187-f3e7985c2bf1-Adobe Scan 14 Aug 2024.pdf', N'dddd', 0, CAST(N'2024-09-24T17:28:58.050' AS DateTime), NULL, NULL, N'11', NULL, NULL)
GO
INSERT [dbo].[tblEmp] ([Emp_Id], [EmpName], [Mob_No], [Email], [Dob], [Address], [Password], [ConfirmPassword], [PImageName], [PImagePath], [PdfFileName], [PdfFilePath], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (2, N'Arman', N'+919999999999', N'test@gmail.com', N'2024-09-05', N'aaa', N'1234', N'1234', N'5ba2f8d7-b8a3-4166-8791-1207e9970861-details at a glance for the year 2023-24.pdf', N'../Common/UploadImage/5ba2f8d7-b8a3-4166-8791-1207e9970861-details at a glance for the year 2023-24.pdf', N'7bcad08f-761b-4346-a689-99648ce480bf-details at a glance for the year 2023-24.pdf', N'../Common/UploadPdf/7bcad08f-761b-4346-a689-99648ce480bf-details at a glance for the year 2023-24.pdf', N'descr', 0, CAST(N'2024-09-24T18:05:21.390' AS DateTime), NULL, NULL, N'1', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblEmp] OFF
GO
SET IDENTITY_INSERT [dbo].[tblExpirelink] ON 
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (1, N'kushwaharjun405@gmail.com', N'05552024025530')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (2, N'kushwaharjun405@gmail.com', N'05572024025750')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (3, N'kushwaharjun405@gmail.com', N'05092024145944')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (4, N'kushwaharjun405@gmail.com', N'05092024151445')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (5, N'kushwaharjun405@gmail.com', N'13092024214146')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (6, N'kushwaharjun405@gmail.com', N'13092024215618')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (7, N'atd2748@gmail.com', N'13092024220054')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (8, N'atd2748@gmail.com', N'13092024220107')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (9, N'kushwaharjun405@gmail.com', N'13092024233646')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (10, N'kushwaharjun405@gmail.com', N'13092024233710')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (11, N'kushwaharjun405@gmail.com', N'14092024132931')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (12, N'kushwaharjun405@gmail.com', N'14092024134907')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (13, N'kushwaharjun405@gmail.com', N'14092024141358')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (14, N'kushwaharjun405@gmail.com', N'14092024141743')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (15, N'kushwaharjun405@gmail.com', N'15092024120723')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (16, N'kushwaharjun405@gmail.com', N'15092024120729')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (17, N'kushwaharjun405@gmail.com', N'15092024120732')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (18, N'kushwaharjun405@gmail.com', N'15092024120750')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (19, N'kushwaharjun405@gmail.com', N'15092024120751')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (20, N'kushwaharjun405@gmail.com', N'15092024120752')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (21, N'kushwaharjun405@gmail.com', N'15092024120754')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (22, N'kushwaharjun405@gmail.com', N'15092024120755')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (23, N'kushwaharjun405@gmail.com', N'15092024120755')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (24, N'kushwaharjun405@gmail.com', N'15092024120756')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (25, N'kushwaharjun405@gmail.com', N'15092024120756')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (26, N'kushwaharjun405@gmail.com', N'15092024120756')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (27, N'kushwaharjun405@gmail.com', N'15092024120756')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (28, N'kushwaharjun405@gmail.com', N'15092024120803')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (29, N'kushwaharjun405@gmail.com', N'15092024120804')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (30, N'kushwaharjun405@gmail.com', N'15092024120804')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (31, N'kushwaharjun405@gmail.com', N'15092024120840')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (32, N'kushwaharjun405@gmail.com', N'15092024120923')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (33, N'kushwaharjun405@gmail.com', N'15092024121018')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (34, N'kushwaharjun405@gmail.com', N'15092024121432')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (35, N'kushwaharjun405@gmail.com', N'15092024121451')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (36, N'kushwaharjun405@gmail.com', N'15092024160954')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (37, N'kushwaharjun405@gmail.com', N'15092024162450')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (38, N'kushwaharjun405@gmail.com', N'15092024164407')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (39, N'kushwaharjun405@gmail.com', N'15092024170346')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (40, N'kushwaharjun405@gmail.com', N'15092024170351')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (41, N'kushwaharjun405@gmail.com', N'15092024175210')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (42, N'kushwaharjun405@gmail.com', N'15092024182053')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (43, N'kushwaharjun405@gmail.com', N'15092024182256')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (44, N'kushwaharjun405@gmail.com', N'15092024182302')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (45, N'kushwaharjun405@gmail.com', N'15092024182318')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (46, N'kushwaharjun405@gmail.com', N'15092024185055')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (47, N'kushwaharjun405@gmail.com', N'15092024190946')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (48, N'kushwaharjun405@gmail.com', N'15092024191000')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (1001, N'kushwaharjun405@gmail.com', N'21092024212748')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (1002, N'kushwaharjun405@gmail.com', N'21092024212804')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (1003, N'test', NULL)
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (1004, N'kushwaharjun405@gmail.com', N'23092024110344')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (1005, N'kushwaharjun405@gmail.com', N'23092024110535')
GO
INSERT [dbo].[tblExpirelink] ([Explink_Id], [Email], [Datetime]) VALUES (1006, N'kushwaharjun405@gmail.com', N'23092024110552')
GO
SET IDENTITY_INSERT [dbo].[tblExpirelink] OFF
GO
SET IDENTITY_INSERT [dbo].[tblItem] ON 
GO
INSERT [dbo].[tblItem] ([Item_Id], [ItemName], [वस्तु_का_नाम], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1, N'Mobile Phone', N'Mobile Phone', N'Desc', 1, CAST(N'2024-09-22T16:53:55.943' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblItem] ([Item_Id], [ItemName], [वस्तु_का_नाम], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (2, N'Bottale ', N'Bottale', N'Many Bottal', 1, CAST(N'2024-09-25T12:44:42.293' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblItem] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 
GO
INSERT [dbo].[tblProduct] ([Product_Id], [ProductName], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1, N'1', N'Null', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRagistration] ON 
GO
INSERT [dbo].[tblRagistration] ([Ragistration_Id], [Name], [Mob_No], [Email], [Dob], [Address], [Description]) VALUES (1, N'arjunnnnnnnnnnmmm', N'+919977067266', N'anshu@gmail.com', N'2022-02-20', N'bhopal', N'Bhopal is a develeop cityy')
GO
SET IDENTITY_INSERT [dbo].[tblRagistration] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRate] ON 
GO
INSERT [dbo].[tblRate] ([Rate_Id], [Item_Id], [Price], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1, 1, CAST(2000.00 AS Decimal(18, 2)), N'desc', 0, CAST(N'2024-09-23T16:27:52.650' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblRate] ([Rate_Id], [Item_Id], [Price], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (2, 2, CAST(1000.00 AS Decimal(18, 2)), N'des', 0, CAST(N'2024-09-25T12:45:36.207' AS DateTime), N'2', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblRate] OFF
GO
SET IDENTITY_INSERT [dbo].[tblState] ON 
GO
INSERT [dbo].[tblState] ([State_Id], [Name], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (1, N'Madhya Pradesh', N'Mp state  is the most state', 0, CAST(N'2024-09-04T17:34:01.717' AS DateTime), N'4', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblState] ([State_Id], [Name], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (2, N'Uttar Pradesh', N'up', 0, CAST(N'2024-09-04T17:38:32.847' AS DateTime), N'4', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblState] ([State_Id], [Name], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (3, N'Rajshtan', N'rj', 0, CAST(N'2024-09-04T17:41:45.827' AS DateTime), N'4', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblState] ([State_Id], [Name], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (4, N'Haryana', N'hr top', 0, CAST(N'2024-09-04T17:43:02.800' AS DateTime), N'4', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tblState] ([State_Id], [Name], [Description], [IsActive], [CreatedAT], [CreatedBy], [UpdateDateTime], [UpdateBy], [DeletedDateTime], [DeletedBy]) VALUES (5, N'Gujrat', N'gj', 0, CAST(N'2024-09-05T10:24:36.400' AS DateTime), N'1', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblState] OFF
GO
/****** Object:  StoredProcedure [dbo].[SpCity]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE proc [dbo].[SpCity]
(
@flag int=null,
@City_Id int  = NULL,
@State_Id int  = NULL,
@Division_Id int  = NULL,
@CityName nvarchar(200) = NULL,
@Description nvarchar(250) = NULL,
@IsActive INT  = NULL,
@CreatedAT datetime = NULL,
@CreatedBy nvarchar(50) = NULL,
@UpdateDateTime datetime = NULL,
@UpdateBy Nvarchar = NULL,
@DeletedDateTime datetime = NULL,
@DeletedBy nvarchar(50) = NULL
)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000)

IF(@flag=1)
BEGIN
select ST.Name , DT.City_Id, DT.CityName, DT.IsActive ,DT.Description from tblCity as DT 
left join  tblState as ST  on  DT.State_Id=ST.State_Id
order by City_Id ASC
END

IF(@flag=2)
BEGIN

begin try    
	begin transaction
		  IF NOT EXISTS(select * from tblCity where CityName=@CityName)
		   Begin 	 
insert into tblCity(
State_Id ,
Division_Id,
CityName,
Description,
IsActive,
CreatedAT,	
CreatedBy
)
Values( 
@State_Id ,
@Division_Id,
@CityName,
@Description,
0,
GETDATE(),
@CreatedBy
)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end
else 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  


 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 

END

IF(@flag=3)
begin
select * from tblCity 
where City_Id=@City_Id
END

IF(@flag=4)
BEGIN
begin try
begin transaction
begin
update  tblCity set 
State_Id  = @State_Id, 
Division_Id=@Division_Id,
CityName= @CityName,
Description= @Description,
IsActive = @IsActive,
UpdateBy= @UpdateBy,
UpdateDateTime= GETDATE()
where City_Id = @City_Id  


 
end
Begin 	
set @ErrorMsg='Data Updated Success'    
set @Msg='Ok' 
end  


 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 


END


		 

IF(@flag=5)
Begin
BEGIN TRY 
BEGIN Transaction
 delete  from tblCity
 where City_Id=@City_Id
 Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Deleted Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END


IF(@flag=6)
begin
select * from tblCity 
END


IF(@flag=7)
BEGIN
UPDATE tblCity SET
     IsActive=@IsActive
	where City_Id=@City_Id
END

if(@flag =8)
BEGIN
begin try
begin transaction

UPDATE tblCity SET
     IsActive=@IsActive,
	UpdateDateTime=GETDATE(),
	UpdateBy=@UpdateBy
	where City_Id=@City_Id

Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Updated Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END





IF(@flag=9)
begin
Select * from tblCity  where City_Id=@City_Id
END







END
GO
/****** Object:  StoredProcedure [dbo].[SpDemand]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE proc [dbo].[SpDemand]
(
@flag int=null,
@Demand_Id int  = NULL,
@Item_Id int =null,
@Product_Id int =null,
@Quantity int = NULL,
@tblDemand tblDemand readonly,
@TotalPrice decimal(18,2) = NULL,
@IsActive INT  = NULL,
@CreatedAT datetime = NULL,
@CreatedBy nvarchar(50) = NULL,
@UpdateDateTime datetime = NULL,
@UpdateBy Nvarchar = NULL,
@DeletedDateTime datetime = NULL,
@DeletedBy nvarchar(50) = NULL
)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000) 


IF(@flag=1)
BEGIN
select IT.ItemName,RT.Demand_Id,RT.Quantity,RT.TotalPrice, PT.ProductName from tblDemand as RT 
left join  tblItem as IT  on  IT.Item_Id=RT.Item_Id
inner join tblProduct  PT on   RT.Product_Id=PT.Product_Id
--select * from tblDemand
order by Demand_Id ASC
END

IF(@flag=2)
BEGIN
begin try    
	begin transaction
		   Begin 	 
insert into tblDemand(
Item_Id ,
Product_Id,
Quantity,
TotalPrice,
IsActive,
CreatedAT,	
CreatedBy
)
Select
Item_Id ,
Product_Id,
Quantity,
TotalPrice,
0,
GETDATE(),
@CreatedBy from  @tblDemand

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end
 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 

END

IF(@flag=3)
begin
select * from tblDemand 
where Demand_Id=@Demand_Id
END

IF(@flag=4)
BEGIN
update  tblDemand set 
Item_Id  = @Item_Id, 
Product_Id=@Product_Id,
Quantity= @Quantity,
TotalPrice= @TotalPrice,
IsActive = @IsActive,
UpdateBy= @UpdateBy,
UpdateDateTime= GETDATE()
where Demand_Id = @Demand_Id  
		 
END
IF(@flag=5)
Begin
BEGIN TRY 
BEGIN Transaction
 delete  from tblDemand
 where Demand_Id=@Demand_Id
 Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Deleted Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END


IF(@flag=6)
begin
select * from tblDemand 
END


IF(@flag=7)
BEGIN
UPDATE tblDemand SET
     IsActive=@IsActive
	where Demand_Id=@Demand_Id
END



if(@flag =8)
BEGIN
begin try
begin transaction

UPDATE tblDemand SET
     IsActive=@IsActive,
	UpdateDateTime=GETDATE(),
	UpdateBy=@UpdateBy
	where Demand_Id=@Demand_Id

Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Updated Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END





IF(@flag=9)
begin
Select * from tblDemand  where Item_Id=@Item_Id and IsActive = 1
END


IF(@flag=10)
begin
select * from tblDemand where IsActive=1
END	




END
GO
/****** Object:  StoredProcedure [dbo].[SpDivision]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE proc [dbo].[SpDivision]
(
@flag int=null,
@Division_Id int  = NULL,
@State_Id int  = NULL,
@DivisionName nvarchar(200) = NULL,
@Description nvarchar(250) = NULL,
@IsActive INT  = NULL,
@CreatedAT datetime = NULL,
@CreatedBy nvarchar(50) = NULL,
@UpdateDateTime datetime = NULL,
@UpdateBy Nvarchar = NULL,
@DeletedDateTime datetime = NULL,
@DeletedBy nvarchar(50) = NULL
)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000) 


IF(@flag=1)
BEGIN
select ST.Name , DT.Division_Id, DT.DivisionName, DT.IsActive ,DT.Description from tblDivision as DT 
left join  tblState as ST  on  DT.State_Id=ST.State_Id
order by Division_Id ASC
END

IF(@flag=2)
BEGIN

begin try    
	begin transaction
		  IF NOT EXISTS(select * from tblDivision where DivisionName=@DivisionName)
		   Begin 	 
insert into tblDivision(
State_Id ,
DivisionName,
Description,
IsActive,
CreatedAT,	
CreatedBy
)
Values( 
@State_Id ,
@DivisionName,
@Description,
0,
GETDATE(),
@CreatedBy
)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end
else 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 

END

IF(@flag=3)
begin
select * from tblDivision 
where Division_Id=@Division_Id
END

IF(@flag=4)
BEGIN
update  tblDivision set 
State_Id  = @State_Id, 
DivisionName= @DivisionName,
Description= @Description,
IsActive = @IsActive,
UpdateBy= @UpdateBy,
UpdateDateTime= GETDATE()
where Division_Id = @Division_Id  
		 
END
IF(@flag=5)
Begin
BEGIN TRY 
BEGIN Transaction
 delete  from tblDivision
 where Division_Id=@Division_Id
 Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Deleted Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END


IF(@flag=6)
begin
select * from tblDivision 
END


IF(@flag=7)
BEGIN
UPDATE tblDivision SET
     IsActive=@IsActive
	where Division_Id=@Division_Id
END



if(@flag =8)
BEGIN
begin try
begin transaction

UPDATE tblDivision SET
     IsActive=@IsActive,
	UpdateDateTime=GETDATE(),
	UpdateBy=@UpdateBy
	where Division_Id=@Division_Id

Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Updated Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END





IF(@flag=9)
begin
Select * from tblDivision  where State_Id=@State_Id and IsActive = 1
END


IF(@flag=10)
begin
select * from tblDivision where IsActive=1
END






END
GO
/****** Object:  StoredProcedure [dbo].[SpEmp]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
 




CREATE proc [dbo].[SpEmp]
(
@flag int=null,
@Emp_Id int = NULL,
@EmpName   varchar(100) =NULL,
@Mob_No    varchar(13)= NULL,
@Email    varchar(100) =NULL,
@Dob     varchar(20) =NULL,
@Address    varchar(200)= NULL,
@Password    varchar(12)= NULL,
@ConfirmPassword    varchar(12)= NULL,
@PImageName  nvarchar (250)= NULL,
@PImagePath nvarchar(250) =NULL,
@PdfFileName nvarchar (250)= NULL,
@PdfFilePath nvarchar(250) =NULL,
@Description   varchar(250)= NULL,
@IsActive INT  = NULL,
@CreatedAT datetime = NULL,
@CreatedBy nvarchar(50) = NULL,
@UpdateDateTime datetime = NULL,
@UpdateBy Nvarchar(50) = NULL,
@DeletedDateTime datetime = NULL,
@DeletedBy nvarchar(50) = NULL

)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(500)

IF(@flag=1)
BEGIN
select * from tblEmp 
order by Emp_Id ASC
END

IF(@flag=2)
BEGIN

begin try    
	begin transaction
		IF NOT EXISTS(select * from tblEmp  where EmpName=@EmpName)
		Begin 	 
		insert into tblEmp( EmpName, Mob_No, Email, Dob, Address, Password, ConfirmPassword, PImageName,PImagePath,  PdfFileName,PdfFilePath, Description, IsActive,CreatedAT,UpdateBy)
		Values (@EmpName, @Mob_No, @Email, @Dob, @Address, @Password, @ConfirmPassword, @PImageName,@PImagePath, @PdfFileName,@PdfFilePath, @Description, 0,GETDATE(),@CreatedBy)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok'  
end
else 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 


END


IF(@flag=3)
Begin
select * from tblEmp
END

IF(@flag=4)
BEGIN
begin try    
	begin transaction
update  tblEmp set 
EmpName  = @EmpName, 
Mob_No= @Mob_No,
Email= @Email,
Dob = @Dob, 
Address = @Address,
Password=@Password,
ConfirmPassword=@ConfirmPassword,
PImageName=@PImageName,
PImagePath=@PImagePath,
PdfFileName=@PdfFileName,
PdfFilePath=@PdfFilePath,
Description = @Description,
UpdateBy= @UpdateBy,
UpdateDateTime= GETDATE()
where Emp_Id = @Emp_Id  
Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Updated Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END
		 



IF(@flag=5)
Begin
BEGIN TRY 
BEGIN Transaction
 delete  from tblEmp
 where Emp_Id=@Emp_Id
 Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Deleted Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END



IF(@flag=6)
Begin
 Select *  from tblEmp
 where Email=@Email and  Password=@Password
END

IF(@flag=7)
Begin
 Select *  from tblEmp
 where Email=@Email 
END


IF(@flag=8)
BEGIN
begin try    
begin transaction
update  tblEmp set 
Password=@Password,
ConfirmPassword=@ConfirmPassword,
UpdateBy= @UpdateBy,
UpdateDateTime= GETDATE()
where Email = @Email  
Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Updated Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END


IF(@flag=9)
BEGIN
UPDATE tblEmp SET
     IsActive=@IsActive
	where Emp_Id=@Emp_Id
END



IF(@flag=11)
Begin
 Select * from tblEmp
END


END



GO
/****** Object:  StoredProcedure [dbo].[SpExpirelink]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE proc [dbo].[SpExpirelink]
(
@flag int=null,
@Explink_Id int  = NULL,
@Email nvarchar(70) = NULL,
@Datetime nvarchar(40) = NULL
)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000)


IF(@flag=1)
BEGIN

begin try    
	begin transaction
		
		Begin 	 
		insert into tblExpirelink(
		Email,
		Datetime
		)
		Values
		( 
		@Email,
		@Datetime)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end

Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 


END



IF(@flag=2)
BEGIN
select top 1 * from tblExpirelink
where Email =(select top 1 Email from tblEmp Where Emp_Id=@Email)
order by Explink_Id  desc
END









END




GO
/****** Object:  StoredProcedure [dbo].[SpItem]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE proc [dbo].[SpItem]
(
@flag int=null,
@Item_Id int  = NULL,
@वस्तु_का_नाम nvarchar(200)=null,
@ItemName nvarchar(200) = NULL,
@Description nvarchar(250) = NULL,
@IsActive INT  = NULL,
@CreatedAT datetime = NULL,
@CreatedBy nvarchar(50) = NULL,
@UpdateDateTime datetime = NULL,
@UpdateBy Nvarchar = NULL,
@DeletedDateTime datetime = NULL,
@DeletedBy nvarchar(50) = NULL
)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000) 


IF(@flag=1)
BEGIN
--select ST.Name , DT.Item_Id, DT.ItemName, DT.IsActive ,DT.Description from tblItem as DT 
--left join  tblState as ST  on  DT.वस्तु_का_नाम=ST.वस्तु_का_नाम
select * from tblItem
order by Item_Id ASC
END

IF(@flag=2)
BEGIN

begin try    
	begin transaction
		  IF NOT EXISTS(select * from tblItem where ItemName=@ItemName)
		   Begin 	 
insert into tblItem(
वस्तु_का_नाम ,
ItemName,
Description,
IsActive,
CreatedAT,	
CreatedBy
)
Values( 
@वस्तु_का_नाम ,
@ItemName,
@Description,
0,
GETDATE(),
@CreatedBy
)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end
else 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 

END

IF(@flag=3)
begin
select * from tblItem 
where Item_Id=@Item_Id
END

IF(@flag=4)
BEGIN
update  tblItem set 
वस्तु_का_नाम  = @वस्तु_का_नाम, 
ItemName= @ItemName,
Description= @Description,
IsActive = @IsActive,
UpdateBy= @UpdateBy,
UpdateDateTime= GETDATE()
where Item_Id = @Item_Id  
		 
END
IF(@flag=5)
Begin
BEGIN TRY 
BEGIN Transaction
 delete  from tblItem
 where Item_Id=@Item_Id
 Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Deleted Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END


IF(@flag=6)
begin
select * from tblItem 
END


IF(@flag=7)
BEGIN
UPDATE tblItem SET
     IsActive=@IsActive
	where Item_Id=@Item_Id
END



if(@flag =8)
BEGIN
begin try
begin transaction

UPDATE tblItem SET
     IsActive=@IsActive,
	UpdateDateTime=GETDATE(),
	UpdateBy=@UpdateBy
	where Item_Id=@Item_Id

Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Updated Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END





IF(@flag=9)
begin
Select * from tblItem  where वस्तु_का_नाम=@वस्तु_का_नाम and IsActive = 1
END


IF(@flag=10)
begin
select * from tblItem where IsActive=1
END

IF(@flag=11)
begin
Select * from tblItem  where Item_Id=Item_Id and IsActive = 1
END




END
GO
/****** Object:  StoredProcedure [dbo].[SpProduct]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE proc [dbo].[SpProduct]
(
@flag int=null,
@Product_Id int  = NULL,
@ProductName nvarchar(200) = NULL,
@Description nvarchar(250) = NULL,
@IsActive INT  = NULL,
@CreatedAT datetime = NULL,
@CreatedBy nvarchar(50) = NULL,
@UpdateDateTime datetime = NULL,
@UpdateBy Nvarchar = NULL,
@DeletedDateTime datetime = NULL,
@DeletedBy nvarchar(50) = NULL
)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000) 


IF(@flag=1)
BEGIN
--select ST.Name , DT.Product_Id, DT.ProductName, DT.IsActive ,DT.Description from tblProduct as DT 
--left join  tblState as ST  on  DT.वस्तु_का_नाम=ST.वस्तु_का_नाम
select * from tblProduct
order by Product_Id ASC
END

IF(@flag=2)
BEGIN

begin try    
	begin transaction
		  IF NOT EXISTS(select * from tblProduct where ProductName=@ProductName)
		   Begin 	 
insert into tblProduct(
ProductName,
Description,
IsActive,
CreatedAT,	
CreatedBy
)
Values( 
@ProductName,
@Description,
0,
GETDATE(),
@CreatedBy
)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end
else 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 

END

IF(@flag=3)
begin
select * from tblProduct 
where Product_Id=@Product_Id
END

IF(@flag=4)
BEGIN
update  tblProduct set  
ProductName= @ProductName,
Description= @Description,
IsActive = @IsActive,
UpdateBy= @UpdateBy,
UpdateDateTime= GETDATE()
where Product_Id = @Product_Id  
		 
END
IF(@flag=5)
Begin
BEGIN TRY 
BEGIN Transaction
 delete  from tblProduct
 where Product_Id=@Product_Id
 Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Deleted Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END


IF(@flag=6)
begin
select * from tblProduct 
END


IF(@flag=7)
BEGIN
UPDATE tblProduct SET
     IsActive=@IsActive
	where Product_Id=@Product_Id
END



if(@flag =8)
BEGIN
begin try
begin transaction

UPDATE tblProduct SET
     IsActive=@IsActive,
	UpdateDateTime=GETDATE(),
	UpdateBy=@UpdateBy
	where Product_Id=@Product_Id

Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Updated Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END





IF(@flag=9)
begin
Select * from tblProduct  where  IsActive = 1
END


IF(@flag=10)
begin
select * from tblProduct where IsActive=1
END

IF(@flag=11)
begin
Select * from tblProduct  where Product_Id=Product_Id 
END




END
GO
/****** Object:  StoredProcedure [dbo].[SpRagistration]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE proc [dbo].[SpRagistration]
(
@flag int=null,
@Ragistration_Id int = NULL,
@Name   varchar(100) =NULL,
@Mob_No    varchar(13)= NULL,
@Email    varchar(100) =NULL,
@Dob     varchar(20) =NULL,
@Address    varchar(200)= NULL,
@Description   varchar(250)= NULL

)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000)

IF(@flag=1)
BEGIN
select * from tblRagistration 
order by Ragistration_Id ASC
END

IF(@flag=2)
BEGIN

begin try    
	begin transaction
		IF NOT EXISTS(select * from tblRagistration  where Name=@Name)
		Begin 	 
		insert into tblRagistration( Name, Mob_No, Email, Dob, Address, Description)
		Values (@Name, @Mob_No, @Email, @Dob, @Address, @Description)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end
else 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 


END


IF(@flag=3)
Begin
select * from tblRagistration
END

IF(@flag=4)
BEGIN
update  tblRagistration set 
Name  = @Name, 
Mob_No= @Mob_No,
Email= @Email,
Dob = @Dob, 
Address = @Address,
Description = @Description
where Ragistration_Id = @Ragistration_Id  
		 
END


IF(@flag=5)
Begin
 delete  from tblRagistration
 where Ragistration_Id=@Ragistration_Id
END



END




GO
/****** Object:  StoredProcedure [dbo].[SpRate]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE proc [dbo].[SpRate]
(
@flag int=null,
@Rate_Id int  = NULL,
@Item_Id int =null,
@Price decimal(18,2) = NULL,
@Description nvarchar(250) = NULL,
@IsActive INT  = NULL,
@CreatedAT datetime = NULL,
@CreatedBy nvarchar(50) = NULL,
@UpdateDateTime datetime = NULL,
@UpdateBy Nvarchar = NULL,
@DeletedDateTime datetime = NULL,
@DeletedBy nvarchar(50) = NULL
)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000) 


IF(@flag=1)
BEGIN
select IT.ItemName,RT.Rate_Id,RT.Price,RT.Description,RT.IsActive  from tblRate as RT 
left join  tblItem as IT  on  IT.Item_Id=RT.Item_Id
--select * from tblRate
order by Rate_Id ASC
END

IF(@flag=2)
BEGIN

begin try    
	begin transaction
		  IF NOT EXISTS(select * from tblRate where Price=@Price)
		   Begin 	 
insert into tblRate(
Item_Id ,
Price,
Description,
IsActive,
CreatedAT,	
CreatedBy
)
Values( 
@Item_Id ,
@Price,
@Description,
0,
GETDATE(),
@CreatedBy
)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end
else 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 

END

IF(@flag=3)
begin
select * from tblRate 
where Rate_Id=@Rate_Id
END

IF(@flag=4)
BEGIN
update  tblRate set 
Item_Id  = @Item_Id, 
Price= @Price,
Description= @Description,
IsActive = @IsActive,
UpdateBy= @UpdateBy,
UpdateDateTime= GETDATE()
where Rate_Id = @Rate_Id  
		 
END
IF(@flag=5)
Begin
BEGIN TRY 
BEGIN Transaction
 delete  from tblRate
 where Rate_Id=@Rate_Id
 Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Deleted Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END


IF(@flag=6)
begin
select * from tblRate 
END


IF(@flag=7)
BEGIN
UPDATE tblRate SET
     IsActive=@IsActive
	where Rate_Id=@Rate_Id
END



if(@flag =8)
BEGIN
begin try
begin transaction

UPDATE tblRate SET
     IsActive=@IsActive,
	UpdateDateTime=GETDATE(),
	UpdateBy=@UpdateBy
	where Rate_Id=@Rate_Id

Set @Msg = 'Ok'
Set @ErrorMsg = 'Data Updated Successfully!'

commit
end try
begin catch
rollback
Set @Msg = 'NotOk'
Set @ErrorMsg = ERROR_MESSAGE()
end catch
select @ErrorMsg ErrorMsg, @Msg Msg
END





IF(@flag=9)
begin
Select * from tblRate  where Item_Id=@Item_Id and IsActive = 1
END


IF(@flag=10)
begin
select * from tblRate where IsActive=1
END



IF(@flag=11)
begin
Select *   from tblRate  where Item_Id =@Item_Id
END


END
GO
/****** Object:  StoredProcedure [dbo].[SpState]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE proc [dbo].[SpState]
(
@flag int=null,
@State_Id int  = NULL,
@Name nvarchar(100) = NULL,
@Description nvarchar(250) = NULL,
@IsActive INT  = NULL,
@CreatedAT datetime = NULL,
@CreatedBy nvarchar(50) = NULL,
@UpdateDateTime datetime = NULL,
@UpdateBy Nvarchar = NULL,
@DeletedDateTime Datetime = NULL,
@DeletedBy nvarchar(50) = NULL
)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000)

IF(@flag=1)
BEGIN
select * from tblState 
order by State_Id ASC
END

IF(@flag=2)
BEGIN

begin try    
	begin transaction
		  IF NOT EXISTS(select * from tblState where Name=@Name)
		   Begin 	 
insert into tblState(
Name,
Description,
IsActive,
CreatedAT,	
CreatedBy
)
Values( 
@Name,
@Description,
0,
GETDATE(),
@CreatedBy
)

set @ErrorMsg='Record Inseted Successfully.'    
set @Msg='Ok' 
end
else 
Begin 	
set @ErrorMsg='Data Already Exists'    
set @Msg='Ok' 
end  
 
COMMIT    
end TRY    
begin catch    
rollback    
set @ErrorMsg=ERROR_MESSAGE()    
set @Msg='NotOk'    
end catch    
Select @Msg Msg,@ErrorMsg  as ErrorMsg 




END




IF(@flag=3)
begin
select * from tblState 
where State_Id=@State_Id
END




IF(@flag=4)
BEGIN
update  tblState set 
Name  = @Name, 
Description= @Description,
IsActive = @IsActive,
UpdateBy= @UpdateBy,
@UpdateDateTime= GETDATE()
where State_Id = @State_Id  
		 
END




IF(@flag=7)
BEGIN
UPDATE tblState SET
     IsActive=@IsActive
	where State_Id=@State_Id
END

IF(@flag=5)
Begin
 delete  from tblState
 where State_Id=@State_Id
END


IF(@flag=6)
begin
select * from tblState 
END


END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCategory]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_GetCategory]
@flag int=null
AS
BEGIN
if(@flag=0)
	select distinct CategoryName from [dbo].[Mst_CategoryWithData]
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCategoryData]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_GetCategoryData]
@flag int=null,
@CategoryName varchar(50) = null
AS
BEGIN
if(@flag=0)
	select Data from [dbo].[Mst_CategoryWithData]
	where CategoryName = @CategoryName
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCountry]    Script Date: 27-09-2024 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_GetCountry]
(
@flag int=null

)
AS
BEGIN
Declare @Msg Nvarchar(50),@ErrorMsg Nvarchar(1000)

if(@flag=0)
	select CountryName from Mst_Country
END
GO
