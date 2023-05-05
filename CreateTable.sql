USE [SE]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/5/2023 11:12:46 AM ******/
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
/****** Object:  Table [dbo].[Item]    Script Date: 5/5/2023 11:12:46 AM ******/
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
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 5/5/2023 11:12:46 AM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 5/5/2023 11:12:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [nvarchar](128) NOT NULL,
	[DateOrder] [date] NULL,
	[User] [nvarchar](128) NULL,
	[Status] [nvarchar](128) NULL,
	[Payment] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 5/5/2023 11:12:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ID] [nvarchar](128) NOT NULL,
	[DateReceipt] [date] NULL,
	[Total] [float] NULL,
	[Status] [nvarchar](128) NULL,
	[UserID] [nvarchar](128) NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC27AB970F6E] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptInfo]    Script Date: 5/5/2023 11:12:46 AM ******/
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 5/5/2023 11:12:46 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 5/5/2023 11:12:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[user_Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Supplier] FOREIGN KEY([IDsupplier])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Supplier]
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD  CONSTRAINT [FK_OrderInfo_Customer] FOREIGN KEY([IDCustomer])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderInfo] CHECK CONSTRAINT [FK_OrderInfo_Customer]
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD  CONSTRAINT [FK_OrderInfo_Item] FOREIGN KEY([IDItem])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderInfo] CHECK CONSTRAINT [FK_OrderInfo_Item]
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD  CONSTRAINT [FK_OrderInfo_Orders] FOREIGN KEY([IDOrder])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderInfo] CHECK CONSTRAINT [FK_OrderInfo_Orders]
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD  CONSTRAINT [FK_OrderInfo_ReceiptInfo] FOREIGN KEY([IDReceiptInfo])
REFERENCES [dbo].[ReceiptInfo] ([ID])
GO
ALTER TABLE [dbo].[OrderInfo] CHECK CONSTRAINT [FK_OrderInfo_ReceiptInfo]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Users]
GO
ALTER TABLE [dbo].[ReceiptInfo]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptInfo_Item] FOREIGN KEY([IDItem])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ReceiptInfo] CHECK CONSTRAINT [FK_ReceiptInfo_Item]
GO
ALTER TABLE [dbo].[ReceiptInfo]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptInfo_Receipt] FOREIGN KEY([IDReceipt])
REFERENCES [dbo].[Receipt] ([ID])
GO
ALTER TABLE [dbo].[ReceiptInfo] CHECK CONSTRAINT [FK_ReceiptInfo_Receipt]
GO
