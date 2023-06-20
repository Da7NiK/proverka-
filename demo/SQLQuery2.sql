USE [master]
GO
/****** Object:  Database [Demo]    Script Date: 20.06.2023 21:02:16 ******/
CREATE DATABASE [Demo]
GO
USE [Demo]
GO

CREATE TABLE [dbo].[Client](
	[IdClient] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Phone] [nvarchar](11) NULL,
	[IdStatus] [int] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[IdClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20.06.2023 21:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[IdEmployee] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[IdUser] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[IdEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 20.06.2023 21:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[IdMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[IdSupplier] [int] NULL,
	[Price] [money] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[IdMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 20.06.2023 21:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IdOrder] [int] NOT NULL,
	[Date] [date] NULL,
	[Descryption] [text] NULL,
	[IdClient] [int] NULL,
	[IdUser] [nvarchar](50) NULL,
	[Summ] [money] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderMaterial]    Script Date: 20.06.2023 21:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMaterial](
	[IdOrMat] [int] NOT NULL,
	[IdOrder] [int] NULL,
	[IdMaterial] [int] NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_OrderMaterial] PRIMARY KEY CLUSTERED 
(
	[IdOrMat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 20.06.2023 21:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 20.06.2023 21:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[IdStatus] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 20.06.2023 21:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[IdSupplier] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[IdSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20.06.2023 21:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[IdRole] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([IdClient], [Name], [Surname], [Phone], [IdStatus]) VALUES (1, N'Анисимов Эмиль ', N'89567465167', N'123123', 2)
INSERT [dbo].[Client] ([IdClient], [Name], [Surname], [Phone], [IdStatus]) VALUES (2, N'Рзай Дмитрий', N'84625471564', N'123312123', 1)
INSERT [dbo].[Client] ([IdClient], [Name], [Surname], [Phone], [IdStatus]) VALUES (3, N'Исмагилов Руслан', N'84628609735', N'53453453', 3)
INSERT [dbo].[Client] ([IdClient], [Name], [Surname], [Phone], [IdStatus]) VALUES (4, N'Исламов Ислам', N'89563425647', N'5 31212', 1)
INSERT [dbo].[Client] ([IdClient], [Name], [Surname], [Phone], [IdStatus]) VALUES (5, N'Исламов Инсаф', N'89562415365', N'5345345', 1)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([IdEmployee], [Surname], [Name], [Patronymic], [IdUser], [Photo]) VALUES (1, N'Сафин', N'Амир', N'Булатович', N'admin', N'1.jpg')
INSERT [dbo].[Employee] ([IdEmployee], [Surname], [Name], [Patronymic], [IdUser], [Photo]) VALUES (2, N'Конаков', N'Денис', N'Алексеевич', N'user2', N'2.jpg')
INSERT [dbo].[Employee] ([IdEmployee], [Surname], [Name], [Patronymic], [IdUser], [Photo]) VALUES (3, N'Мусин', N'Раниль', N'Рашатович', N'user3', N'3.jpg')
INSERT [dbo].[Employee] ([IdEmployee], [Surname], [Name], [Patronymic], [IdUser], [Photo]) VALUES (4, N'Мухаммадиев', N'Рифкат', N'Рамисович', N'user4', N'4.jpg')
INSERT [dbo].[Employee] ([IdEmployee], [Surname], [Name], [Patronymic], [IdUser], [Photo]) VALUES (5, N'Хуснутдинов', N'Айрат', N'Зульфатович', N'user5', N'5.jpg')
INSERT [dbo].[Employee] ([IdEmployee], [Surname], [Name], [Patronymic], [IdUser], [Photo]) VALUES (6, N'Гайнуллин', N'Ильгам', N'Василович', N'admin', N'6.jpg')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (1, N'Пуговица  ', 1, 200.0000, N'1.jpg')
INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (2, N'Нить      ', 1, 300.0000, N'2.jpg')
INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (3, N'Иголка    ', 2, 100.0000, N'3.jpg')
INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (4, N'Фурнитура ', 2, 400.0000, N'4.jpg')
INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (5, N'Запонка   ', 3, 200.0000, N'5.jpg')
INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (6, N'Замок     ', 3, 200.0000, N'6.jpg')
INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (7, N'Шнурок    ', 4, 100.0000, N'7.jpg')
INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (8, N'Шёлк      ', 4, 500.0000, N'8.jpg')
INSERT [dbo].[Material] ([IdMaterial], [Name], [IdSupplier], [Price], [Photo]) VALUES (9, N'Кожа      ', 5, 600.0000, N'9.jpg')
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
INSERT [dbo].[Role] ([IdRole], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([IdRole], [Name]) VALUES (2, N'Работник')
GO
INSERT [dbo].[Status] ([IdStatus], [Name]) VALUES (1, N'Обычный пользователь')
INSERT [dbo].[Status] ([IdStatus], [Name]) VALUES (2, N'Постоянный пользователь')
INSERT [dbo].[Status] ([IdStatus], [Name]) VALUES (3, N'ВИП пользователь')
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([IdSupplier], [Name]) VALUES (1, N'Платина')
INSERT [dbo].[Supplier] ([IdSupplier], [Name]) VALUES (2, N'Мир замков')
INSERT [dbo].[Supplier] ([IdSupplier], [Name]) VALUES (3, N'Швея')
INSERT [dbo].[Supplier] ([IdSupplier], [Name]) VALUES (4, N'Пуговка')
INSERT [dbo].[Supplier] ([IdSupplier], [Name]) VALUES (5, N'Нитка и иголка')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
INSERT [dbo].[User] ([Login], [Password], [IdRole]) VALUES (N'admin', N'admin', 1)
INSERT [dbo].[User] ([Login], [Password], [IdRole]) VALUES (N'user2', N'asdfg', 2)
INSERT [dbo].[User] ([Login], [Password], [IdRole]) VALUES (N'user3', N'zxcvb', 2)
INSERT [dbo].[User] ([Login], [Password], [IdRole]) VALUES (N'user4', N'fghjk', 2)
INSERT [dbo].[User] ([Login], [Password], [IdRole]) VALUES (N'user5', N'sdfgh', 2)
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Status]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_User]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Supplier] FOREIGN KEY([IdSupplier])
REFERENCES [dbo].[Supplier] ([IdSupplier])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Supplier]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([IdClient])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Login])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderMaterial]  WITH CHECK ADD  CONSTRAINT [FK_OrderMaterial_Material] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([IdMaterial])
GO
ALTER TABLE [dbo].[OrderMaterial] CHECK CONSTRAINT [FK_OrderMaterial_Material]
GO
ALTER TABLE [dbo].[OrderMaterial]  WITH CHECK ADD  CONSTRAINT [FK_OrderMaterial_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([IdOrder])
GO
ALTER TABLE [dbo].[OrderMaterial] CHECK CONSTRAINT [FK_OrderMaterial_Order]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Demo] SET  READ_WRITE 
GO
