USE [SE]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[cus_Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[MoreInfo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[IDsupplier] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderInfo](
	[ID] [nvarchar](128) NOT NULL,
	[IDItem] [nvarchar](128) NOT NULL,
	[IDReceiptInfo] [nvarchar](128) NOT NULL,
	[IDCustomer] [nvarchar](128) NULL,
	[IDOrder] [nvarchar](128) NOT NULL,
	[Order_Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [nvarchar](128) NOT NULL,
	[DateOrder] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_ID] [nvarchar](50) NOT NULL,
	[product_Name] [nvarchar](50) NULL,
	[product_Import-Price] [nvarchar](50) NULL,
	[1] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ID] [nvarchar](128) NOT NULL,
	[DateReceipt] [date] NULL,
	[Status] [varchar](50) NULL,
	[UserID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptInfo]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptInfo](
	[ID] [nvarchar](128) NOT NULL,
	[IDItem] [nvarchar](128) NOT NULL,
	[IDReceipt] [nvarchar](128) NOT NULL,
	[Receipt_Quantity] [int] NULL,
	[Receipt_Price] [float] NULL,
	[Order_Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[sup_Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[MoreInfo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/3/2023 2:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[user_Password] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Item] ([ID], [DisplayName], [IDsupplier]) VALUES (N'Item01', N'IP6', N'Sup01')
INSERT [dbo].[Item] ([ID], [DisplayName], [IDsupplier]) VALUES (N'Item02', N'Ip5', N'Sup01')
GO
INSERT [dbo].[Receipt] ([ID], [DateReceipt], [Status], [UserID]) VALUES (N'R00001', CAST(N'2023-05-03' AS Date), N'False', N'User01')
INSERT [dbo].[Receipt] ([ID], [DateReceipt], [Status], [UserID]) VALUES (N'R00002', CAST(N'2023-05-03' AS Date), N'False', N'User01')
INSERT [dbo].[Receipt] ([ID], [DateReceipt], [Status], [UserID]) VALUES (N'R00003', CAST(N'2023-05-03' AS Date), N'True', N'User01')
INSERT [dbo].[Receipt] ([ID], [DateReceipt], [Status], [UserID]) VALUES (N'R00005', CAST(N'2023-05-03' AS Date), NULL, NULL)
GO
INSERT [dbo].[ReceiptInfo] ([ID], [IDItem], [IDReceipt], [Receipt_Quantity], [Receipt_Price], [Order_Price]) VALUES (N'RI00001', N'12', N'R00001', 12, 12, 12)
INSERT [dbo].[ReceiptInfo] ([ID], [IDItem], [IDReceipt], [Receipt_Quantity], [Receipt_Price], [Order_Price]) VALUES (N'RI00002', N'12', N'R00001', 12, 12, 12)
INSERT [dbo].[ReceiptInfo] ([ID], [IDItem], [IDReceipt], [Receipt_Quantity], [Receipt_Price], [Order_Price]) VALUES (N'RI00006', N'12', N'R00005', 12, 12, 12)
INSERT [dbo].[ReceiptInfo] ([ID], [IDItem], [IDReceipt], [Receipt_Quantity], [Receipt_Price], [Order_Price]) VALUES (N'RI00008', N'12', N'R00005', 12, 12, 12)
GO
INSERT [dbo].[Supplier] ([ID], [DisplayName], [sup_Address], [Phone], [Email], [MoreInfo]) VALUES (N'Sup01', N'Samsung', N'Lao', N'111', N'111', NULL)
INSERT [dbo].[Supplier] ([ID], [DisplayName], [sup_Address], [Phone], [Email], [MoreInfo]) VALUES (N'Sup02', N'Apple', N'China', N'111', N'111', NULL)
GO
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [user_Password]) VALUES (N'User01', N'Duc Anh', N'AnhCTV', N'123456')
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([IDsupplier])
REFERENCES [dbo].[Supplier] ([ID])
GO
