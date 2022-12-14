USE [master]
GO
/****** Object:  Database [QLkhachsan]    Script Date: 8/10/2022 1:50:21 AM ******/
CREATE DATABASE [QLkhachsan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLkhachsan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.NTHOA\MSSQL\DATA\QLkhachsan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLkhachsan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.NTHOA\MSSQL\DATA\QLkhachsan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLkhachsan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLkhachsan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLkhachsan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLkhachsan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLkhachsan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLkhachsan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLkhachsan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLkhachsan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLkhachsan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLkhachsan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLkhachsan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLkhachsan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLkhachsan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLkhachsan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLkhachsan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLkhachsan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLkhachsan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLkhachsan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLkhachsan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLkhachsan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLkhachsan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLkhachsan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLkhachsan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLkhachsan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLkhachsan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLkhachsan] SET  MULTI_USER 
GO
ALTER DATABASE [QLkhachsan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLkhachsan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLkhachsan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLkhachsan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLkhachsan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLkhachsan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLkhachsan] SET QUERY_STORE = OFF
GO
USE [QLkhachsan]
GO
/****** Object:  Table [dbo].[LichTruc]    Script Date: 8/10/2022 1:50:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTruc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDNhanVien] [int] NULL,
	[CaTruc] [nvarchar](50) NULL,
	[NgayTruc] [date] NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_LichTruc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLHD]    Script Date: 8/10/2022 1:50:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLHD](
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[TenPhong] [nvarchar](50) NULL,
	[SoKhach] [int] NULL,
	[SoDem] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_QLHD] PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLKH]    Script Date: 8/10/2022 1:50:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLKH](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[QuocTich] [nvarchar](50) NULL,
	[Ngayden] [date] NULL,
	[Ngaydi] [date] NULL,
 CONSTRAINT [PK_QLKH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLNV]    Script Date: 8/10/2022 1:50:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLNV](
	[IDNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_QLNV] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLP]    Script Date: 8/10/2022 1:50:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLP](
	[IDPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[LoaiPhong] [nvarchar](50) NULL,
	[GiaPhong] [int] NULL,
 CONSTRAINT [PK_QLP] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LichTruc] ON 

INSERT [dbo].[LichTruc] ([ID], [IDNhanVien], [CaTruc], [NgayTruc], [Note]) VALUES (1, 1, N'Sáng', CAST(N'2021-06-07' AS Date), NULL)
INSERT [dbo].[LichTruc] ([ID], [IDNhanVien], [CaTruc], [NgayTruc], [Note]) VALUES (2, 2, N'Chiều', CAST(N'2021-02-05' AS Date), NULL)
INSERT [dbo].[LichTruc] ([ID], [IDNhanVien], [CaTruc], [NgayTruc], [Note]) VALUES (3, 2, N'Đêm', CAST(N'2021-08-06' AS Date), NULL)
INSERT [dbo].[LichTruc] ([ID], [IDNhanVien], [CaTruc], [NgayTruc], [Note]) VALUES (4, 1, N'Chiều', CAST(N'2022-06-08' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[LichTruc] OFF
GO
SET IDENTITY_INSERT [dbo].[QLHD] ON 

INSERT [dbo].[QLHD] ([IDHoaDon], [TenKH], [TenPhong], [SoKhach], [SoDem], [TongTien]) VALUES (1, NULL, NULL, 4, 1, 350000)
INSERT [dbo].[QLHD] ([IDHoaDon], [TenKH], [TenPhong], [SoKhach], [SoDem], [TongTien]) VALUES (2, NULL, NULL, 1, 1, 800000)
INSERT [dbo].[QLHD] ([IDHoaDon], [TenKH], [TenPhong], [SoKhach], [SoDem], [TongTien]) VALUES (3, NULL, NULL, 3, 1, 350000)
INSERT [dbo].[QLHD] ([IDHoaDon], [TenKH], [TenPhong], [SoKhach], [SoDem], [TongTien]) VALUES (4, N'Hoàng Thị Hưng Hiền', N'Phòng số 5', 2, 1, 800000)
INSERT [dbo].[QLHD] ([IDHoaDon], [TenKH], [TenPhong], [SoKhach], [SoDem], [TongTien]) VALUES (5, N'Nguyễn Công Giang', N'Phòng số 1', 2, 1, 350000)
INSERT [dbo].[QLHD] ([IDHoaDon], [TenKH], [TenPhong], [SoKhach], [SoDem], [TongTien]) VALUES (6, N'Vũ Thị Hồng Gấm', N'Phòng số 1', 3, 1, 350000)
INSERT [dbo].[QLHD] ([IDHoaDon], [TenKH], [TenPhong], [SoKhach], [SoDem], [TongTien]) VALUES (7, N'Trần Minh Phúc', N'Phòng số 3', 3, 2, 350000)
INSERT [dbo].[QLHD] ([IDHoaDon], [TenKH], [TenPhong], [SoKhach], [SoDem], [TongTien]) VALUES (8, N'Trần Quốc Việt', N'Phòng số 6', 4, 3, 800000)
SET IDENTITY_INSERT [dbo].[QLHD] OFF
GO
SET IDENTITY_INSERT [dbo].[QLKH] ON 

INSERT [dbo].[QLKH] ([MaKH], [TenKhachHang], [QuocTich], [Ngayden], [Ngaydi]) VALUES (1, N'Hoàng Thị Hưng Hiền', N'Đài Loan', CAST(N'2022-02-05' AS Date), CAST(N'2022-02-05' AS Date))
INSERT [dbo].[QLKH] ([MaKH], [TenKhachHang], [QuocTich], [Ngayden], [Ngaydi]) VALUES (2, N'Nguyễn Công Giang', N'Việt Nam', NULL, NULL)
INSERT [dbo].[QLKH] ([MaKH], [TenKhachHang], [QuocTich], [Ngayden], [Ngaydi]) VALUES (3, N'Vũ Thị Hồng Gấm', N'Việt Nam', NULL, NULL)
INSERT [dbo].[QLKH] ([MaKH], [TenKhachHang], [QuocTich], [Ngayden], [Ngaydi]) VALUES (4, N'Trần Minh Phúc', N'Mỹ', NULL, NULL)
INSERT [dbo].[QLKH] ([MaKH], [TenKhachHang], [QuocTich], [Ngayden], [Ngaydi]) VALUES (5, N'Trần Quốc Việt', N'Nhật Bản', NULL, NULL)

SET IDENTITY_INSERT [dbo].[QLKH] OFF
GO
SET IDENTITY_INSERT [dbo].[QLNV] ON 

INSERT [dbo].[QLNV] ([IDNhanVien], [TenNhanVien], [NgaySinh], [DiaChi]) VALUES (1, N'Nguyễn Hòa', CAST(N'2001-03-18' AS Date), N'Hà Nội')
INSERT [dbo].[QLNV] ([IDNhanVien], [TenNhanVien], [NgaySinh], [DiaChi]) VALUES (2, N'Hoàng Thị Hưng Hiền', CAST(N'2001-04-03' AS Date), N'Hà Nội')
SET IDENTITY_INSERT [dbo].[QLNV] OFF
GO
SET IDENTITY_INSERT [dbo].[QLP] ON 

INSERT [dbo].[QLP] ([IDPhong], [TenPhong], [LoaiPhong], [GiaPhong]) VALUES (1, N'Phòng số 1', N'Normal', 350000)
INSERT [dbo].[QLP] ([IDPhong], [TenPhong], [LoaiPhong], [GiaPhong]) VALUES (2, N'Phòng số 2', N'Normal', 350000)
INSERT [dbo].[QLP] ([IDPhong], [TenPhong], [LoaiPhong], [GiaPhong]) VALUES (3, N'Phòng số 3', N'Normal', 350000)
INSERT [dbo].[QLP] ([IDPhong], [TenPhong], [LoaiPhong], [GiaPhong]) VALUES (4, N'Phòng số 4', N'Vip', 800000)
INSERT [dbo].[QLP] ([IDPhong], [TenPhong], [LoaiPhong], [GiaPhong]) VALUES (5, N'Phòng số 5', N'Vip', 800000)
INSERT [dbo].[QLP] ([IDPhong], [TenPhong], [LoaiPhong], [GiaPhong]) VALUES (6, N'Phòng số 6', N'Vip', 800000)
SET IDENTITY_INSERT [dbo].[QLP] OFF
GO
USE [master]
GO
ALTER DATABASE [QLkhachsan] SET  READ_WRITE 
GO
