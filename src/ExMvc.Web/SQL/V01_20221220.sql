USE [master]
GO

/****** Object:  Database [BD_ExMVC]    Script Date: 20/12/2022 08:17:05 ******/
DROP DATABASE [BD_ExMVC]
GO

/****** Object:  Database [BD_ExMVC]    Script Date: 20/12/2022 08:17:05 ******/
CREATE DATABASE [BD_ExMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_ExMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD_ExMVC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_ExMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD_ExMVC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_ExMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BD_ExMVC] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BD_ExMVC] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BD_ExMVC] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BD_ExMVC] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BD_ExMVC] SET ARITHABORT OFF 
GO

ALTER DATABASE [BD_ExMVC] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BD_ExMVC] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BD_ExMVC] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BD_ExMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BD_ExMVC] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BD_ExMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BD_ExMVC] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BD_ExMVC] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BD_ExMVC] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BD_ExMVC] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BD_ExMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BD_ExMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BD_ExMVC] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BD_ExMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BD_ExMVC] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BD_ExMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BD_ExMVC] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BD_ExMVC] SET RECOVERY FULL 
GO

ALTER DATABASE [BD_ExMVC] SET  MULTI_USER 
GO

ALTER DATABASE [BD_ExMVC] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BD_ExMVC] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BD_ExMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BD_ExMVC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BD_ExMVC] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BD_ExMVC] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [BD_ExMVC] SET QUERY_STORE = OFF
GO

ALTER DATABASE [BD_ExMVC] SET  READ_WRITE 
GO


USE [BD_ExMVC]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empresa]') AND type in (N'U'))
DROP TABLE [dbo].[Empresa]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Empresa](
	[Id] [varchar](36) NOT NULL,
	[NomeFantasia] [varchar](50) NOT NULL,
	[RazaoSocial] [varchar](50) NOT NULL,
	[CNPJ] [varchar](18) NOT NULL,
	[DataCadastro] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Empresa] ADD  DEFAULT (newid()) FOR [Id]
GO