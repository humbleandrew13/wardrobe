USE [master]
GO
/****** Object:  Database [WardrobeProjectDB]    Script Date: 2/19/2017 9:37:49 PM ******/
CREATE DATABASE [WardrobeProjectDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeProjectDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeProjectDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeProjectDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeProjectDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeProjectDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeProjectDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeProjectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeProjectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeProjectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeProjectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeProjectDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeProjectDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeProjectDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeProjectDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeProjectDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeProjectDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeProjectDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeProjectDB]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 2/19/2017 9:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryNameDescription] [varchar](100) NOT NULL,
	[PhotoLink] [nvarchar](1000) NULL,
	[ColorPrimary] [varchar](30) NOT NULL,
	[ColorSecondary] [varchar](30) NULL,
	[ColorTertiary] [varchar](30) NULL,
	[Season] [varchar](20) NOT NULL,
	[Occasion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 2/19/2017 9:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[BottomsNameDescription] [varchar](100) NOT NULL,
	[PhotoLink] [nvarchar](1000) NULL,
	[ColorPrimary] [varchar](30) NOT NULL,
	[ColorSecondary] [varchar](30) NULL,
	[ColorTertiary] [varchar](30) NULL,
	[Season] [varchar](20) NOT NULL,
	[Occasion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 2/19/2017 9:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[ShoesNameDescription] [varchar](100) NOT NULL,
	[PhotoLink] [nvarchar](1000) NULL,
	[ColorPrimary] [varchar](30) NOT NULL,
	[ColorSecondary] [varchar](30) NULL,
	[ColorTertiary] [varchar](30) NULL,
	[Season] [varchar](20) NOT NULL,
	[Occasion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 2/19/2017 9:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopNameDescription] [varchar](100) NOT NULL,
	[PhotoLink] [nvarchar](1000) NULL,
	[ColorPrimary] [varchar](30) NOT NULL,
	[ColorSecondary] [varchar](30) NULL,
	[ColorTertiary] [varchar](30) NULL,
	[Season] [varchar](20) NOT NULL,
	[Occasion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [WardrobeProjectDB] SET  READ_WRITE 
GO
