USE [master]
GO
/****** Object:  Database [магазин продуктов пп03]    Script Date: 19.06.2023 15:55:33 ******/
CREATE DATABASE [Bsza_proek]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bsza_proek', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLDANIK\MSSQL\DATA\Bsza_proekt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bsza_proek_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLDANIK\MSSQL\DATA\Bsza_proekt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [магазин продуктов пп03] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bsza_proek].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [магазин продуктов пп03] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET ARITHABORT OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [магазин продуктов пп03] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [магазин продуктов пп03] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET  DISABLE_BROKER 
GO
ALTER DATABASE [магазин продуктов пп03] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [магазин продуктов пп03] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [магазин продуктов пп03] SET  MULTI_USER 
GO
ALTER DATABASE [магазин продуктов пп03] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [магазин продуктов пп03] SET DB_CHAINING OFF 
GO
ALTER DATABASE [магазин продуктов пп03] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [магазин продуктов пп03] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [магазин продуктов пп03] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [магазин продуктов пп03] SET QUERY_STORE = OFF
GO
USE [магазин продуктов пп03]
GO
/****** Object:  Table [dbo].[info_company]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[info_company](
	[ID_фирма_изготовитель] [nvarchar](50) NOT NULL,
	[название_фирмы] [nvarchar](50) NOT NULL,
	[фамилия_директора] [nvarchar](50) NOT NULL,
	[имя_директора] [nvarchar](50) NOT NULL,
	[отчество_директора] [nvarchar](50) NULL,
	[электронная_почта_фирмы] [nvarchar](50) NOT NULL,
	[номер_телефона_фирмы] [nvarchar](50) NOT NULL,
	[индекс_юр_адреса] [nvarchar](50) NOT NULL,
	[город_юр_адреса] [nvarchar](50) NOT NULL,
	[улица_юр_адреса] [nvarchar](50) NOT NULL,
	[дом_юр_адреса] [nvarchar](50) NOT NULL,
	[помещение_юр_адреса] [nvarchar](50) NULL,
 CONSTRAINT [PK_info_company] PRIMARY KEY CLUSTERED 
(
	[ID_фирма_изготовитель] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[klients]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[klients](
	[ID_покупателя] [int] NOT NULL,
	[фамилия] [nvarchar](50) NULL,
	[имя] [nvarchar](50) NOT NULL,
	[номер_телефона] [nvarchar](50) NOT NULL,
	[электронная_почта] [nvarchar](50) NULL,
 CONSTRAINT [PK_klients] PRIMARY KEY CLUSTERED 
(
	[ID_покупателя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_types]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_types](
	[ID_тип_продукта] [nvarchar](50) NOT NULL,
	[название_типа_продукта] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_product_types] PRIMARY KEY CLUSTERED 
(
	[ID_тип_продукта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[ID_товара] [int] IDENTITY(1,1) NOT NULL,
	[наименование] [nvarchar](50) NOT NULL,
	[тип_товара] [nvarchar](50) NOT NULL,
	[срок_годности] [nvarchar](50) NOT NULL,
	[состав] [nvarchar](400) NOT NULL,
	[количество] [int] NOT NULL,
	[КЖБУ] [nvarchar](50) NOT NULL,
	[страна_производства] [nvarchar](50) NOT NULL,
	[фото_товара] [nvarchar](50) NULL,
	[артикул] [int] NOT NULL,
	[фирма_изготовитель] [nvarchar](50) NOT NULL,
	[вес] [int] NOT NULL,
	[цена] [int] NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[ID_товара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id_role] [nvarchar](50) NOT NULL,
	[name_role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zakaz]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zakaz](
	[ID_заказа] [int] IDENTITY(1,1) NOT NULL,
	[наименование] [nvarchar](50) NOT NULL,
	[дата_заказа] [nvarchar](50) NOT NULL,
	[товар] [int] NOT NULL,
	[клиент] [int] NULL,
	[время_заказа] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_zakaz] PRIMARY KEY CLUSTERED 
(
	[ID_заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[пользователи]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[пользователи](
	[ID_пользователя] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_пользователи] PRIMARY KEY CLUSTERED 
(
	[ID_пользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_info_company] FOREIGN KEY([фирма_изготовитель])
REFERENCES [dbo].[info_company] ([ID_фирма_изготовитель])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_info_company]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_product_types] FOREIGN KEY([тип_товара])
REFERENCES [dbo].[product_types] ([ID_тип_продукта])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_product_types]
GO
ALTER TABLE [dbo].[zakaz]  WITH CHECK ADD  CONSTRAINT [FK_zakaz_klients] FOREIGN KEY([клиент])
REFERENCES [dbo].[klients] ([ID_покупателя])
GO
ALTER TABLE [dbo].[zakaz] CHECK CONSTRAINT [FK_zakaz_klients]
GO
ALTER TABLE [dbo].[zakaz]  WITH CHECK ADD  CONSTRAINT [FK_zakaz_products] FOREIGN KEY([товар])
REFERENCES [dbo].[products] ([ID_товара])
GO
ALTER TABLE [dbo].[zakaz] CHECK CONSTRAINT [FK_zakaz_products]
GO
ALTER TABLE [dbo].[пользователи]  WITH CHECK ADD  CONSTRAINT [FK_пользователи_role] FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id_role])
GO
ALTER TABLE [dbo].[пользователи] CHECK CONSTRAINT [FK_пользователи_role]
GO
USE [master]
GO
ALTER DATABASE [магазин продуктов пп03] SET  READ_WRITE 
GO
