USE [master]
GO
/****** Object:  Database [������� ��������� ��03]    Script Date: 19.06.2023 15:55:33 ******/
CREATE DATABASE [Bsza_proek]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bsza_proek', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLDANIK\MSSQL\DATA\Bsza_proekt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bsza_proek_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLDANIK\MSSQL\DATA\Bsza_proekt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [������� ��������� ��03] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bsza_proek].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [������� ��������� ��03] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET ARITHABORT OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [������� ��������� ��03] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [������� ��������� ��03] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET  DISABLE_BROKER 
GO
ALTER DATABASE [������� ��������� ��03] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [������� ��������� ��03] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [������� ��������� ��03] SET  MULTI_USER 
GO
ALTER DATABASE [������� ��������� ��03] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [������� ��������� ��03] SET DB_CHAINING OFF 
GO
ALTER DATABASE [������� ��������� ��03] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [������� ��������� ��03] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [������� ��������� ��03] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [������� ��������� ��03] SET QUERY_STORE = OFF
GO
USE [������� ��������� ��03]
GO
/****** Object:  Table [dbo].[info_company]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[info_company](
	[ID_�����_������������] [nvarchar](50) NOT NULL,
	[��������_�����] [nvarchar](50) NOT NULL,
	[�������_���������] [nvarchar](50) NOT NULL,
	[���_���������] [nvarchar](50) NOT NULL,
	[��������_���������] [nvarchar](50) NULL,
	[�����������_�����_�����] [nvarchar](50) NOT NULL,
	[�����_��������_�����] [nvarchar](50) NOT NULL,
	[������_��_������] [nvarchar](50) NOT NULL,
	[�����_��_������] [nvarchar](50) NOT NULL,
	[�����_��_������] [nvarchar](50) NOT NULL,
	[���_��_������] [nvarchar](50) NOT NULL,
	[���������_��_������] [nvarchar](50) NULL,
 CONSTRAINT [PK_info_company] PRIMARY KEY CLUSTERED 
(
	[ID_�����_������������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[klients]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[klients](
	[ID_����������] [int] NOT NULL,
	[�������] [nvarchar](50) NULL,
	[���] [nvarchar](50) NOT NULL,
	[�����_��������] [nvarchar](50) NOT NULL,
	[�����������_�����] [nvarchar](50) NULL,
 CONSTRAINT [PK_klients] PRIMARY KEY CLUSTERED 
(
	[ID_����������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_types]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_types](
	[ID_���_��������] [nvarchar](50) NOT NULL,
	[��������_����_��������] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_product_types] PRIMARY KEY CLUSTERED 
(
	[ID_���_��������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[ID_������] [int] IDENTITY(1,1) NOT NULL,
	[������������] [nvarchar](50) NOT NULL,
	[���_������] [nvarchar](50) NOT NULL,
	[����_��������] [nvarchar](50) NOT NULL,
	[������] [nvarchar](400) NOT NULL,
	[����������] [int] NOT NULL,
	[����] [nvarchar](50) NOT NULL,
	[������_������������] [nvarchar](50) NOT NULL,
	[����_������] [nvarchar](50) NULL,
	[�������] [int] NOT NULL,
	[�����_������������] [nvarchar](50) NOT NULL,
	[���] [int] NOT NULL,
	[����] [int] NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[ID_������] ASC
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
	[ID_������] [int] IDENTITY(1,1) NOT NULL,
	[������������] [nvarchar](50) NOT NULL,
	[����_������] [nvarchar](50) NOT NULL,
	[�����] [int] NOT NULL,
	[������] [int] NULL,
	[�����_������] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_zakaz] PRIMARY KEY CLUSTERED 
(
	[ID_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[������������]    Script Date: 19.06.2023 15:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[������������](
	[ID_������������] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_������������] PRIMARY KEY CLUSTERED 
(
	[ID_������������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_info_company] FOREIGN KEY([�����_������������])
REFERENCES [dbo].[info_company] ([ID_�����_������������])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_info_company]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_product_types] FOREIGN KEY([���_������])
REFERENCES [dbo].[product_types] ([ID_���_��������])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_product_types]
GO
ALTER TABLE [dbo].[zakaz]  WITH CHECK ADD  CONSTRAINT [FK_zakaz_klients] FOREIGN KEY([������])
REFERENCES [dbo].[klients] ([ID_����������])
GO
ALTER TABLE [dbo].[zakaz] CHECK CONSTRAINT [FK_zakaz_klients]
GO
ALTER TABLE [dbo].[zakaz]  WITH CHECK ADD  CONSTRAINT [FK_zakaz_products] FOREIGN KEY([�����])
REFERENCES [dbo].[products] ([ID_������])
GO
ALTER TABLE [dbo].[zakaz] CHECK CONSTRAINT [FK_zakaz_products]
GO
ALTER TABLE [dbo].[������������]  WITH CHECK ADD  CONSTRAINT [FK_������������_role] FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id_role])
GO
ALTER TABLE [dbo].[������������] CHECK CONSTRAINT [FK_������������_role]
GO
USE [master]
GO
ALTER DATABASE [������� ��������� ��03] SET  READ_WRITE 
GO
