USE [VectorHostel]
GO
ALTER TABLE [dbo].[phong] DROP CONSTRAINT [FK_phong_loaiphong]
GO
ALTER TABLE [dbo].[PHIEUDATGIUONG] DROP CONSTRAINT [FK_PHIEUDATGIUONG_khachhang]
GO
ALTER TABLE [dbo].[giuong] DROP CONSTRAINT [FK_giuong_phong]
GO
ALTER TABLE [dbo].[giuong] DROP CONSTRAINT [FK_giuong_loaigiuong]
GO
ALTER TABLE [dbo].[chi_tiet_dat_giuong] DROP CONSTRAINT [FK_chi_tiet_dat_giuong_PHIEUDATGIUONG]
GO
ALTER TABLE [dbo].[chi_tiet_dat_giuong] DROP CONSTRAINT [FK_chi_tiet_dat_giuong_giuong]
GO
/****** Object:  Table [dbo].[phong]    Script Date: 06/05/2019 7:51:06 CH ******/
DROP TABLE [dbo].[phong]
GO
/****** Object:  Table [dbo].[PHIEUDATGIUONG]    Script Date: 06/05/2019 7:51:06 CH ******/
DROP TABLE [dbo].[PHIEUDATGIUONG]
GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 06/05/2019 7:51:06 CH ******/
DROP TABLE [dbo].[loaiphong]
GO
/****** Object:  Table [dbo].[loaigiuong]    Script Date: 06/05/2019 7:51:06 CH ******/
DROP TABLE [dbo].[loaigiuong]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 06/05/2019 7:51:06 CH ******/
DROP TABLE [dbo].[khachhang]
GO
/****** Object:  Table [dbo].[giuong]    Script Date: 06/05/2019 7:51:06 CH ******/
DROP TABLE [dbo].[giuong]
GO
/****** Object:  Table [dbo].[chi_tiet_dat_giuong]    Script Date: 06/05/2019 7:51:06 CH ******/
DROP TABLE [dbo].[chi_tiet_dat_giuong]
GO
USE [master]
GO
/****** Object:  Database [VectorHostel]    Script Date: 06/05/2019 7:51:06 CH ******/
DROP DATABASE [VectorHostel]
GO
/****** Object:  Database [VectorHostel]    Script Date: 06/05/2019 7:51:06 CH ******/
CREATE DATABASE [VectorHostel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VectorHostel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQL2014\MSSQL\DATA\VectorHostel.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VectorHostel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQL2014\MSSQL\DATA\VectorHostel_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VectorHostel] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VectorHostel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VectorHostel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VectorHostel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VectorHostel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VectorHostel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VectorHostel] SET ARITHABORT OFF 
GO
ALTER DATABASE [VectorHostel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VectorHostel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VectorHostel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VectorHostel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VectorHostel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VectorHostel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VectorHostel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VectorHostel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VectorHostel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VectorHostel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VectorHostel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VectorHostel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VectorHostel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VectorHostel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VectorHostel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VectorHostel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VectorHostel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VectorHostel] SET RECOVERY FULL 
GO
ALTER DATABASE [VectorHostel] SET  MULTI_USER 
GO
ALTER DATABASE [VectorHostel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VectorHostel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VectorHostel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VectorHostel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [VectorHostel] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'VectorHostel', N'ON'
GO
USE [VectorHostel]
GO
/****** Object:  Table [dbo].[chi_tiet_dat_giuong]    Script Date: 06/05/2019 7:51:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_dat_giuong](
	[maphieu] [nchar](10) NOT NULL,
	[magiuong] [nchar](10) NOT NULL,
 CONSTRAINT [PK_chi_tiet_dat_giuong] PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC,
	[magiuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giuong]    Script Date: 06/05/2019 7:51:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giuong](
	[magiuong] [nchar](10) NOT NULL,
	[maphong] [nchar](10) NULL,
	[mota] [nvarchar](50) NULL,
	[malg] [nchar](10) NULL,
	[tinhtrang] [bit] NULL,
 CONSTRAINT [PK_giuong] PRIMARY KEY CLUSTERED 
(
	[magiuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 06/05/2019 7:51:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makh] [nchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[sdt] [nchar](10) NULL,
	[diachi] [nvarchar](50) NULL,
	[gioitinh] [bit] NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaigiuong]    Script Date: 06/05/2019 7:51:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaigiuong](
	[malg] [nchar](10) NOT NULL,
	[tenlg] [nvarchar](50) NULL,
	[mota] [nvarchar](50) NULL,
	[dongia] [int] NULL,
 CONSTRAINT [PK_loaigiuong] PRIMARY KEY CLUSTERED 
(
	[malg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 06/05/2019 7:51:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[malp] [nchar](10) NOT NULL,
	[tenlp] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaiphong] PRIMARY KEY CLUSTERED 
(
	[malp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUDATGIUONG]    Script Date: 06/05/2019 7:51:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDATGIUONG](
	[maphieu] [nchar](10) NOT NULL,
	[makh] [nchar](10) NOT NULL,
	[ngayden] [date] NULL,
	[ngaydi] [date] NULL,
	[soluong_giuong] [int] NULL,
	[magiuong] [nchar](10) NULL,
 CONSTRAINT [PK_PHIEUDATGIUONG] PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phong]    Script Date: 06/05/2019 7:51:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[maphong] [nchar](10) NOT NULL,
	[tenphong] [nvarchar](50) NULL,
	[malp] [nchar](10) NULL,
	[tang] [int] NULL,
	[sogiuong] [int] NULL,
 CONSTRAINT [PK_phong] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[chi_tiet_dat_giuong]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_dat_giuong_giuong] FOREIGN KEY([magiuong])
REFERENCES [dbo].[giuong] ([magiuong])
GO
ALTER TABLE [dbo].[chi_tiet_dat_giuong] CHECK CONSTRAINT [FK_chi_tiet_dat_giuong_giuong]
GO
ALTER TABLE [dbo].[chi_tiet_dat_giuong]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_dat_giuong_PHIEUDATGIUONG] FOREIGN KEY([maphieu])
REFERENCES [dbo].[PHIEUDATGIUONG] ([maphieu])
GO
ALTER TABLE [dbo].[chi_tiet_dat_giuong] CHECK CONSTRAINT [FK_chi_tiet_dat_giuong_PHIEUDATGIUONG]
GO
ALTER TABLE [dbo].[giuong]  WITH CHECK ADD  CONSTRAINT [FK_giuong_loaigiuong] FOREIGN KEY([malg])
REFERENCES [dbo].[loaigiuong] ([malg])
GO
ALTER TABLE [dbo].[giuong] CHECK CONSTRAINT [FK_giuong_loaigiuong]
GO
ALTER TABLE [dbo].[giuong]  WITH CHECK ADD  CONSTRAINT [FK_giuong_phong] FOREIGN KEY([maphong])
REFERENCES [dbo].[phong] ([maphong])
GO
ALTER TABLE [dbo].[giuong] CHECK CONSTRAINT [FK_giuong_phong]
GO
ALTER TABLE [dbo].[PHIEUDATGIUONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATGIUONG_khachhang] FOREIGN KEY([makh])
REFERENCES [dbo].[khachhang] ([makh])
GO
ALTER TABLE [dbo].[PHIEUDATGIUONG] CHECK CONSTRAINT [FK_PHIEUDATGIUONG_khachhang]
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD  CONSTRAINT [FK_phong_loaiphong] FOREIGN KEY([malp])
REFERENCES [dbo].[loaiphong] ([malp])
GO
ALTER TABLE [dbo].[phong] CHECK CONSTRAINT [FK_phong_loaiphong]
GO
USE [master]
GO
ALTER DATABASE [VectorHostel] SET  READ_WRITE 
GO
