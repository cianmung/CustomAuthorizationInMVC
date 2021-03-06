USE [master]
GO
/****** Object:  Database [MVC_CustomAuthorizationTutorial]    Script Date: 27/4/2020 12:34:32 AM ******/
CREATE DATABASE [MVC_CustomAuthorizationTutorial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVC_CustomAuthorizationTutorial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MVC_CustomAuthorizationTutorial.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MVC_CustomAuthorizationTutorial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MVC_CustomAuthorizationTutorial_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVC_CustomAuthorizationTutorial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET RECOVERY FULL 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET  MULTI_USER 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MVC_CustomAuthorizationTutorial', N'ON'
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET QUERY_STORE = OFF
GO
USE [MVC_CustomAuthorizationTutorial]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 27/4/2020 12:34:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Roles] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MVC_CustomAuthorizationTutorial] SET  READ_WRITE 
GO
