USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 11/21/2024 5:16:39 AM ******/
CREATE DATABASE [QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyBanHang] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanHang', N'ON'
GO
ALTER DATABASE [QuanLyBanHang] SET QUERY_STORE = OFF
GO
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoidungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDh] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[DaHuy] [bit] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](150) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien_Quyen](
	[MaLoaiTV] [int] NOT NULL,
	[MaQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiThanhVien_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC,
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[Fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](250) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[Chitiet] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLuotMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [bit] NULL,
	[HinhAnh1] [nvarchar](max) NULL,
	[HinhAnh2] [nvarchar](max) NULL,
	[HinhAnh3] [nvarchar](max) NULL,
	[HinhAnh4] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 11/21/2024 5:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](150) NULL,
	[MatKhau] [nvarchar](150) NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
	[MaLoaiTV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (1, 1, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (2, 1, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (3, 2, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (4, 2, 2, N'Alienware M15 R2', 2, CAST(40000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (5, 4, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (6, 4, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (7, 5, 30, N'Dell Business Multimedia Keyboard - KB522', 1, CAST(700000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (8, 5, 31, N'Dell Keyboard - Smartcard USB', 2, CAST(900000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (9, 6, 20, N'Alienware AURORA RYZEN™ EDITION R10 GAMING', 1, CAST(24000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (10, 6, 21, N'Alienware Aurora R12 Gaming Desktop', 1, CAST(26000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (11, 7, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (12, 9, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (13, 10, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (14, 11, 1, N'Alienware M15 R1', 3, CAST(35000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (15, 12, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (16, 12, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (17, 12, 7, N'Dell XPS 13 9310 (2021)', 1, CAST(27000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (18, 12, 56, N'Alienware 27 Gaming Monitor - AW2720HF', 1, CAST(9000000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 7, 1, CAST(20000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 8, 1, CAST(20000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 8, 2, CAST(25000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (6, 8, 5, CAST(30000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (7, 9, 1, CAST(20000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (8, 10, 2, CAST(25000000 AS Decimal(18, 0)), 12)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (9, 11, 1, CAST(35000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (10, 12, 1, CAST(35000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (11, 13, 4, CAST(50000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (12, 14, 2, CAST(34000000 AS Decimal(18, 0)), 5)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (13, 15, 3, CAST(30000000 AS Decimal(18, 0)), 5)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (14, 16, 5, CAST(27000000 AS Decimal(18, 0)), 5)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (15, 17, 6, CAST(27000000 AS Decimal(18, 0)), 5)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (16, 18, 7, CAST(34000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (17, 19, 8, CAST(27000000 AS Decimal(18, 0)), 5)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (18, 20, 9, CAST(34000000 AS Decimal(18, 0)), 5)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (19, 21, 10, CAST(30000000 AS Decimal(18, 0)), 5)
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (1, CAST(N'2021-04-11T23:22:38.417' AS DateTime), 0, NULL, 0, 10, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (2, CAST(N'2021-04-12T14:07:58.713' AS DateTime), 0, NULL, 0, 10, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (3, CAST(N'2021-04-12T14:08:20.460' AS DateTime), 0, NULL, 0, 10, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (4, CAST(N'2021-04-12T14:08:27.353' AS DateTime), 0, NULL, 1, 10, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (5, CAST(N'2021-04-15T17:48:18.297' AS DateTime), 0, NULL, 1, 10, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (6, CAST(N'2021-04-15T22:26:51.883' AS DateTime), 1, NULL, 1, 11, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (7, CAST(N'2021-04-15T22:28:36.757' AS DateTime), 1, NULL, 1, 12, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (9, CAST(N'2021-04-23T11:38:30.620' AS DateTime), 0, NULL, 0, 13, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (10, CAST(N'2021-04-25T08:08:20.747' AS DateTime), 0, NULL, 0, 14, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (11, CAST(N'2021-04-25T15:22:36.147' AS DateTime), 0, NULL, 0, 15, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (12, CAST(N'2021-04-25T15:31:48.393' AS DateTime), 1, NULL, 1, 16, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1, N'Nguyễn văn A', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (2, N'Đỗ Văn B', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (3, N'Phạm Thế C', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (4, N'Nguyễn văn D', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (5, N'Đỗ Văn E', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (6, N'Phạm Thế F', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (7, N'Nguyễn văn G', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (8, N'Đỗ Văn H', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (9, N'Phạm Thế I', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (10, N'xxx', N'vvv', N'asdda@gmail.com', N'0123456789', 1)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (11, N'xxxxx', N'vvvv', N'admin@gmail.com', N'0123456789', 1)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (12, N'xxxxxxxxxxx', N'vvvv', N'giahuyle1@gmail.com', N'0123456789', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (13, N'xxxxxxxxxxxxxxx', N'vvvvv', N'giahuyle1@gmail.com', N'0123456789', 1)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (14, N'xxxx', N'vv', N'giahuyle1@gmail.com', N'0123456789', 1)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (15, N'xxxxx', N'vvvv', N'giahuyle1@gmail.com', NULL, NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (16, N'xxxx', N'vvvvvvv', N'giahuyle1@gmail.com', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'Giày Nam', N'Giày Nam', N'Giày Nam')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'Giày nữ', N'Giày nữ', N'Giày nữ')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Giày trẻ em', N'Giày trẻ em', N'Giày trẻ em')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (4, N'Giày thể thao', N'Giày thể thao', N'Giày thể thao')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (5, N'Dép nam', N'Dép', N'Dép')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (6, N'Dép nữ', N'Dép nữ', N'Dép nữ')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (7, N'Khuyễn mãi', N'Khuyễn mãi', N'Khuyễn mãi')
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 
GO
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Admin', 0)
GO
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Staff', 0)
GO
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Khách Thường', 5)
GO
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (4, N'Khách Vip', 10)
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'DangNhap', NULL)
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanLy', NULL)
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanTriWeb', NULL)
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'DangNhap', NULL)
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'QuanLy', NULL)
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (3, N'DangNhap', NULL)
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (4, N'DangNhap', NULL)
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'vietcargo', N'180/17 Nguyễn Hữu Cảnh, phường 22, Bình Thạnh,TP.HCM', N'contact@vietcargo.vn', N'0931620000', N'02866567777')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'ezitrans', N'79/14 Dương Quảng Hàm, Cầu Giấy, Hà Nội', N'contact@ezitrans.com', N'0867503500', N'0389118500')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (3, N'PAKAGO', N'14/16A Thân Nhân Trung, P.13, Q. Tân Bình, HCM', N'hotro@pakago.com', N'0886788247', N'02866567777')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (4, N'Indochinapost', N'167 Quang Trung, Đống Đa, Hà Nội', N'lienhe@indochinapost.com', N'0931620000', N'02866567777')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (5, N'tantrieuexpress', N'39 Hồng Hà, P.2, Q. Tân Bình, HCM', N'tantrieuexpress@gmail.com', N'0905620000', N'02863569777')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (6, N'cargoexpress', N'158/2 Hoàng Hoa Thám, P.12, Q. Tân Bình, Tp. HCM', N'contact@cargoexpress.vn', N'02822537487', N'02863569777')
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (1, N'MWC', N'MWC@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (2, N'Nike', N'Nike@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (3, N'Converse', N'Converse@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (4, N'Biti''s', N'Biti''sk@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (5, N'MSI', N'MSI_Pro@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (6, N'Puma', N'Puma@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (7, N'Lenovo', N'Lenovo_Pro@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (8, N'New balance', N'New balance@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (9, N'Balenciaga', N'Balenciaga@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (10, N'Vans', N'Vans.@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (11, N'Fila', N'Fila@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (12, N'Fhhlen', N'Fhhlen_Pro@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (13, N'Corsair', N'Corsair_Pro@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (14, N'SteelSeries', N'SteelSeries_Pro@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (15, N'Vietnam', N'Vietnam@gmail.com')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (16, N'Hanquoc', N'Hanquoc@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (1, 1, NULL, 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (2, 1, NULL, 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (3, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (4, 2, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (5, 3, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (7, 1, NULL, NULL)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (8, 1, NULL, NULL)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (9, 1, NULL, NULL)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (10, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (11, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (12, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (13, 3, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (14, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (15, 6, CAST(N'2021-04-25T01:18:31.977' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (16, 6, CAST(N'2021-04-25T01:22:20.483' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (17, 6, CAST(N'2021-04-25T01:25:06.517' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (18, 1, CAST(N'2021-04-25T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (19, 6, CAST(N'2021-04-25T15:25:38.263' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (20, 1, CAST(N'2021-04-25T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (21, 6, CAST(N'2021-04-25T15:35:07.850' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'DangNhap', N'Đăng nhập')
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLy', N'Quản lý')
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanTriWeb', N'Quản trị web')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (1, N'Giày lười công sở Sdrolun màu đen mới nhất mã GL21817D', CAST(3500000 AS Decimal(18, 0)), NULL, N'Giày lười nam mã GL21817D nổi bật với họa tiết đường gân sóng chính giữa trung tâm và là mẫu giày được cánh mày râu rất ưa chuộng bởi nhiều lí do. Từ thiết kế giày đến chất lượng đế, da giày đều được lựa chọn và tính toán cẩn thận từ những nguyên liệu tốt nhất. Bởi vậy chúng ta có một đôi giày tốt, hoản hảo dễ dàng kết hợp với các trang phục : quần âu/tây, kaki, áo sơ mi, vest... cho những hoàn cảnh khác nhau. Các bạn cũng có thể xem thêm các mẫu giày Savato tương tư.', NULL, N'sp1.jpg', 23, 2, 0, 0, 3, 1, 1, 2, 1, 0, N'sp1-1.jpg', N'sp1-2.jpg', N'sp1-3.jpg', N'sp1-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (2, N'Giày lười nam trẻ trung tiện lợi; GL2125N', CAST(1000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Giày lười nam trẻ trung tiện lợi; GL2125N là một sản phẩm được người dùng ưa thích là do thiết kể bề ngoài sang trọng, không cầu kì với chất liệu da bò. Chi tiết hơn, sản phẩm sở hữu da nguyên tấm, đế cao su mềm đi rất em chân, lót giày có khả năng hút khí ẩm khiến đôi chân của bạn luôn được trong tình trạng tốt nhất.#19/08/2022 - N', N'ĐẶC ĐIỂM GIÀY LƯỜI NAM
💥 Chất liệu da bò cao cấp, da thật 100%
💥 Màu: VÀNG
💥 Hàng chuẩn y hình - Bảo Hành 1 Năm
💥 Miễn phí vận chuyển toàn quốc - Xem và đi thử trước khi thanh toán
💥 Hỗ trợ đổi size trong vòng 7 ngày', N'sp2.jpg', 9, 12, 0, 0, 3, 1, 1, 2, 1, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (3, N'Giày Thể Thao Buộc Dây Anh Quốc ASISA màu đỏ; MS BD82891M', CAST(800000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Gam màu đỏ thời trang hiện đại, phong cách thể thao khỏe khoắn, được làm trên chất liệu da bò mềm. lớp lót đệm êm chống thấm, đế cao su đúc với trọng lượng nhẹ mang lại cảm giác nhẹ nhàng khi di chuyển, có thể kết hợp với các trang phục : quần jeans, quần kaki.....Giay thể thao BD82891M Thích hợp sử dụng để đi chơi, đi du lịch, dã ngoại...Giày thể thao Asisa đỏ mận-cập nhật 11/7/22#k', N'Giá thị trường: 1,250,000 VND
Giá bán: 1,180,000 VND
Mô tả:Gam màu đỏ thời trang hiện đại, phong cách thể thao khỏe khoắn, được làm trên chất liệu da bò mềm. lớp lót đệm êm chống thấm, đế cao su đúc với trọng lượng nhẹ mang lại cảm giác nhẹ nhàng khi di chuyển, có thể kết hợp với các trang phục : quần jeans, quần kaki.....Giay thể thao BD82891M Thích hợp sử dụng để đi chơi, đi du lịch, dã ngoại...Giày thể thao Asisa đỏ mận-cập nhật 11/7/22#k
Thể loại:  Thời trang
Tình trạng:  Còn hàng
', N'sp3.jpg', 8, 50, 0, 0, 3, 1, 1, 2, 1, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (4, N'Giày sneaker nam da bò cao cấp; BD11028D', CAST(780000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Mô tả:Giày sneaker nam da bò cao cấp; BD11028D sở hữu một thiết kế khỏe khoắn mạnh mẽ, có được sự trẻ trung với tone màu đen. Tấm da của sản phẩm được làm từ công nghệ độc quyền từ nước ngoài, là dòng giày buộc dây thể thao, BD11028D được hoàn thiện bằng chất liệu mềm hoàn toàn, đi sẽ không phát ra tiếng động và rất êm chân.#Q
Thể loại:  Thời trang
', NULL, N'sp4.jpg', 14, 12, 0, 0, 3, 1, 1, 2, 1, 0, N'sp4-1.jpg', N'sp4-2.jpg', N'sp4-3.jpg', N'sp4-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (5, N'Giày buộc dây nam da bò mạnh mẽ; BD23055D', CAST(450000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Mô tả:Giày buộc dây nam da bò mạnh mẽ; BD23055D sẽ là người bạn đồng hành hoàn hảo của đôi chân bạn trong cách se lạnh của đông xuân. Với chất da thật 100% bền bỉ, đế cao su kép, kiểu cách hoàn thiện tuyệt mỹ. BD23055D sẽ rất thích hợp để đi coffee, đi tiệc sinh nhật, đi học, đi làm và có thể kết hợp mọi trang phục như jeans T shirt, kaki, joggers, .. #Q
Thể loại:  Thời trang
', NULL, N'sp5.jpg', 9, 12, 0, 0, 3, 1, 1, 2, 1, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (6, N'Giày Tennis Nike Court Zoom GP Turbo CK7513-103 Màu Trắng Size 40', CAST(570000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'3.500.000 ₫ GIẢM 9%
Kiểu dáng:
Giày tennis
Giới tính:
Nam
Màu sắc:
Trắng
Gọi đặt mua:
093.934.8888(7:30 - 22:00)
Ưu đãi:
Freeship Hà Nội & HCM
Miễn phí vận chuyển
Ưu đãi dành cho bạn
Miễn phí giao hàng 30.000đ cho đơn hàng từ 500.000đ (Áp dụng tại Hà Nội & HCM).
Lưu ý: Với các đơn hàng tại nội thành Hà Nội và Hồ Chí Minh, khách hàng muốn giao nhanh trong ngày hoặc Đơn hàng giao hỏa tốc theo yêu cầu của khách hàng phí vận chuyển sẽ được thông báo và áp dụng theo cước phí của đơn vị vận chuyển tại thời điểm đó.
Xem chi tiết →
Mã giảm giá:', N'3.500.000 ₫ GIẢM 9%
Kiểu dáng:
Giày tennis
Giới tính:
Nam
Màu sắc:
Trắng
Gọi đặt mua:
093.934.8888(7:30 - 22:00)
Ưu đãi:
Freeship Hà Nội & HCM
Miễn phí vận chuyển
Ưu đãi dành cho bạn
Miễn phí giao hàng 30.000đ cho đơn hàng từ 500.000đ (Áp dụng tại Hà Nội & HCM).
Lưu ý: Với các đơn hàng tại nội thành Hà Nội và Hồ Chí Minh, khách hàng muốn giao nhanh trong ngày hoặc Đơn hàng giao hỏa tốc theo yêu cầu của khách hàng phí vận chuyển sẽ được thông báo và áp dụng theo cước phí của đơn vị vận chuyển tại thời điểm đó.
Xem chi tiết →
Mã giảm giá:', N'sp6.jpg', 9, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (7, N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', CAST(890000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', N'sp7.jpg', 14, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (8, N'Giày cao nam GOG nhập khẩu; GC126D', CAST(970000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Giày cao nam GOG nhập khẩu; GC126D', NULL, N'sp8.jpg', 9, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'sp8-1.jpg', N'sp8-2.jpg', N'sp8-3.jpg', N'sp8-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (9, N'Giày Thể Thao Nam Sneaker Cao Cấp', CAST(570000 AS Decimal(18, 0)), NULL, N'Diện mạo lịch lãm, nam tính của một người đàn ông sẽ trở nên hoàn thiện hơn với đôi giày ở phía dưới chân. Một đôi giày nam LEVI đẹp chất lượng không chỉ làm bật nên nét hào hoa phong nhã của các anh, mà còn đi rất êm chân, thoải mái. Giày dép có rất nhiều kiểu dáng, chất liệu khác nhau. Cùng tìm hiểu qua một số kiểu giày của Levi Store nhé!', N'<p>Diện mạo lịch l&atilde;m, nam t&iacute;nh của một người đ&agrave;n &ocirc;ng sẽ trở n&ecirc;n ho&agrave;n thiện hơn với đ&ocirc;i gi&agrave;y ở ph&iacute;a dưới ch&acirc;n. Một đ&ocirc;i gi&agrave;y nam LEVI đẹp chất lượng kh&ocirc;ng chỉ l&agrave;m bật n&ecirc;n n&eacute;t h&agrave;o hoa phong nh&atilde; của c&aacute;c anh, m&agrave; c&ograve;n đi rất &ecirc;m ch&acirc;n, thoải m&aacute;i. Gi&agrave;y d&eacute;p c&oacute; rất nhiều kiểu d&aacute;ng, chất liệu kh&aacute;c nhau. C&ugrave;ng t&igrave;m hiểu qua một số kiểu gi&agrave;y của Levi Store nh&eacute;!</p>', N'sp9.jpg', 9, 12, 0, 0, 3, 1, 2, 1, 1, 0, N'sp9-1.jpg', N'sp9-2.jpg', N'sp9-3.jpg', N'sp9-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (10, N'Giày Batta thể thao năng động', CAST(670000 AS Decimal(18, 0)), NULL, N'Hàng quảng châu chuẩn f1 với thiết kế trẻ trung phù hợp với mọi loại trang phục và style khác nhau', NULL, N'sp10.jpg', 9, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp10-1.jpg', N'sp10-2.jpg', N'sp10-3.jpg', N'sp10-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (12, N'Dép Cao Gót Zara', CAST(450000 AS Decimal(18, 0)), NULL, N'Chất liệu trên: PU Chiều cao gót: Cao gót (5cm-8cm) Chất liệu đế: Cao su Đóng cửa: Bộ chân', NULL, N'sp12.jpg', 4, 12, 0, 0, 3, 1, 2, 1, 2, 0, N'sp12-1.jpg', N'sp12-2.jpg', N'sp12-3.jpg', N'sp12-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (13, N'Giày MLB Chunky Liner đủ màu', CAST(870000 AS Decimal(18, 0)), NULL, N'Tình trạng Đã Sử Dụng Giày cao gót Cao Loại Khóa Khóa dây Xuất xứ Trung Quốc Kho hàng 314319 Gửi từ Hà Nội', N'<p>- Nhẹ, &ecirc;m ch&acirc;n, l&ecirc;n d&aacute;ng cực k&igrave; sport - Shop cập nhật mẫu mới li&ecirc;n tục,h&atilde;y bấm follow shop để được trải nghiệm sản phẩm mới nhất nh&eacute; Giay thể thao thiết kế chất da mịn, đường chỉ sắc n&eacute;t, h&agrave;ng fullbox, kh&ocirc;ng lo mất form d&aacute;ng - Hỗ trợ đổi size nếu kh&ocirc;ng vừa, tuy nhi&ecirc;n KH n&ecirc;n đọc kỹ bảng size để đỡ mất c&ocirc;ng đổi nha</p>', N'sp13.jpg', 4, 12, 0, 0, 3, 1, 3, 1, 2, 0, N'sp13-1.jpg', N'sp13-2.jpg', N'sp13-3.jpg', N'sp13-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (14, N'GIÀY THỂ THAO NAM NỮ TRẮNG', CAST(800000 AS Decimal(18, 0)), NULL, N'Tình trạng Đã Sử Dụng Xuất xứ Việt Nam Chất liệu Khác Dịp Thể thao', N'<p>Đ&ocirc;i gi&agrave;y m&agrave;u trắng l&agrave; một phụ kiện "phải c&oacute;" trong tủ đồ của c&aacute;c bạn trẻ. Bởi t&iacute;nh ứng dụng cao trong thời trang, gi&agrave;y trắng thường gi&uacute;p ch&uacute;ng ta dễ phối đồ hơn v&agrave; c&oacute; thể mang ph&ugrave; hợp với bất cứ dịp n&agrave;o (đi học, đi chơi, ...). 365.giay.store đảm bảo mang lại cho c&aacute;c bạn một đ&ocirc;i gi&agrave;y trắng vừa xinh vừa hời. Ngại g&igrave; kh&ocirc;ng tậu ngay một đ&ocirc;i n&agrave;o!!&nbsp;</p>', N'sp14.jpg', 4, 12, 0, 0, 3, 1, 4, 1, 4, 0, N'sp14-1.jpg', N'sp14-2.jpg', N'sp14-3.jpg', N'sp14-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (15, N'Giày Sneaker Nam', CAST(670000 AS Decimal(18, 0)), NULL, N'Loại Khóa Khóa dây Xuất xứ Trung Quốc Chất liệu Cao su Dịp Thể thao', N'<div class="VYmrqq"><label class="zgeHL-">Loại Kh&oacute;a</label>
<div>Kh&oacute;a d&acirc;y</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Xuất xứ</label>
<div>Trung Quốc</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Chất liệu</label>
<div>Cao su</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Dịp</label>
<div>Thể thao</div>
</div>', N'sp15.jpg', 4, 12, 0, 0, 3, 1, 2, 1, 1, 0, N'sp15-1.jpg', N'sp15-2.jpg', N'sp15-3.jpg', N'sp15-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (16, N'Giày Sneaker xVESSE', CAST(8870000 AS Decimal(18, 0)), NULL, N'Giày Hàng Đẹp [ Full Box ] Ảnh hoàn toàn thật do shop chụp các bạn hoàn toàn có thể yên tâm về chất lượng sản phẩm Shop hứa nếu có bất cứ sai sót nào hay khách không hài lòng về sản phẩm thì shop sẽ hoàn trả 100% giá trị đơn hàng cho các bạn. Với kiểu dáng đang hot nhất hiện nay và được rất nhiều các bạn trẻ ưa chuộm', N'<p>Giày Hàng Đẹp [ Full Box ] Ảnh hoàn toàn th&acirc;̣t do shop chụp các bạn hoàn toàn có th&ecirc;̉ y&ecirc;n t&acirc;m v&ecirc;̀ ch&acirc;́t lượng sản ph&acirc;̉m Shop hứa n&ecirc;́u có b&acirc;́t cứ sai sót nào hay khách kh&ocirc;ng hài lòng v&ecirc;̀ sản ph&acirc;̉m thì shop sẽ hoàn trả 100% giá trị đơn hàng cho các bạn. Với ki&ecirc;̉u dáng đang hot nh&acirc;́t hi&ecirc;̣n nay và được r&acirc;́t nhi&ecirc;̀u các bạn trẻ ưa chu&ocirc;̣m</p>', N'sp16.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'sp16-1.jpg', N'sp16-2.jpg', N'sp16-3.jpg', N'sp16-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (17, N'Giày Thể Thao Chzk016', CAST(700000 AS Decimal(18, 0)), NULL, N'Chất liệu trên: vải Chất liệu đế: cao su Mô hình: Kiểm tra Phương thức đóng: ren', N'<p>Chất liệu tr&ecirc;n: vải Chất liệu đế: cao su M&ocirc; h&igrave;nh: Kiểm tra Phương thức đ&oacute;ng: ren</p>', N'sp17.jpg', 4, 12, 0, 0, 3, 1, 2, 1, 1, 0, N'sp17-1.jpg', N'sp17-2.jpg', N'sp17-3.jpg', N'sp17-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (18, N'Giày thể thao nữ dây tết siêu xinh', CAST(4500000 AS Decimal(18, 0)), NULL, N'Là mẫu giày đang được các bạn nữ rất ưa chuộng hiện nay bởi những đặc tính nổi trội: Kiểu dáng thời trang, năng động,trẻ trung dễ phối đồ Chất liệu đẹp, êm và dễ làm sạch; đế cao su tổng hợp nên dẻo và rất êm chân.', N'<p>L&agrave; mẫu gi&agrave;y đang được c&aacute;c bạn nữ rất ưa chuộng hiện nay bởi những đặc t&iacute;nh nổi trội: Kiểu d&aacute;ng thời trang, năng động,trẻ trung dễ phối đồ Chất liệu đẹp, &ecirc;m v&agrave; dễ l&agrave;m sạch; đế cao su tổng hợp n&ecirc;n dẻo v&agrave; rất &ecirc;m ch&acirc;n.&nbsp;</p>', N'sp18.jpg', 4, 12, 0, 0, 3, 1, 3, 1, 2, 0, N'sp18-1.jpg', N'sp18-2.jpg', N'sp18-3.jpg', N'sp18-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (20, N'Giày thể thao nữ RUFINE đế cao 4cm phong cách ulzzang', CAST(7800000 AS Decimal(18, 0)), NULL, N'Là mẫu giày đang được các bạn nữ rất ưa chuộng hiện nay bởi những đặc tính nổi trội: Kiểu dáng thời trang, năng động,trẻ trung dễ phối đồ Chất liệu đẹp, êm và dễ làm sạch; đế cao su tổng hợp nên dẻo và rất êm chân.', N'<p>L&agrave; mẫu gi&agrave;y đang được c&aacute;c bạn nữ rất ưa chuộng hiện nay bởi những đặc t&iacute;nh nổi trội: Kiểu d&aacute;ng thời trang, năng động,trẻ trung dễ phối đồ Chất liệu đẹp, &ecirc;m v&agrave; dễ l&agrave;m sạch; đế cao su tổng hợp n&ecirc;n dẻo v&agrave; rất &ecirc;m ch&acirc;n.</p>', N'sp20.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, N'sp20-1.jpg', N'sp20-2.jpg', N'sp20-3.jpg', N'sp20-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (21, N'Giày thể thao dây to cực xinh V64 ', CAST(3400000 AS Decimal(18, 0)), NULL, N'Siêu Phầm V64 được khách hàng bình chọn là sản phẩm của năm Với 3 màu kem (V64K) , Đen(V64Đ) và Hồng ( V64H ) Nổi bật với kiểu dáng dây to sành điệu  Kiểu dáng thể thao năng động Bảo hành keo trên từng sản phẩm', N'<p>Si&ecirc;u Phầm V64 được kh&aacute;ch h&agrave;ng b&igrave;nh chọn l&agrave; sản phẩm của năm Với 3 m&agrave;u kem (V64K) , Đen(V64Đ) v&agrave; Hồng ( V64H ) Nổi bật với kiểu d&aacute;ng d&acirc;y to s&agrave;nh điệu Kiểu d&aacute;ng thể thao năng động Bảo h&agrave;nh keo tr&ecirc;n từng sản phẩm</p>', N'sp1.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, N'sp1-1.jpg', N'sp1-2.jpg', N'sp1-3.jpg', N'sp1-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (22, N'Giày Sneaker Phong Cách Hồng Kông', CAST(5600000 AS Decimal(18, 0)), NULL, N'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày Màu sắc: be, đen , trắng Kích thước: 35, 36, 37, 38, 39 ,40 Phong cách: thông thường', N'<p>Thời gian giao h&agrave;ng dự kiến cho sản phẩm n&agrave;y l&agrave; từ 7-9 ng&agrave;y M&agrave;u sắc: be, đen , trắng K&iacute;ch thước: 35, 36, 37, 38, 39 ,40 Phong c&aacute;ch: th&ocirc;ng thường</p>', N'sp2.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (23, N'Giày đá bóng Wika Galaxy', CAST(7800000 AS Decimal(18, 0)), NULL, NULL, N'<p>Gi&agrave;y Đ&aacute; B&oacute;ng Wika Galaxy Ch&iacute;nh h&atilde;ng🔥 ✔️Cam kết ch&iacute;nh h&atilde;ng 100% ✔️Bảo h&agrave;nh keo trọn đời ✔️Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu sp lỗi</p>', N'sp3.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (24, N'Giày thể thao nữ kẻ new nibox', CAST(678000 AS Decimal(18, 0)), NULL, N'Giày cao gót Trung Bình Loại Khóa Khóa dây Tên tổ chức chịu trách nhiệm sản xuất Đang cập nhật Chất liệu Khác, Sợi tổng hợp', N'<div class="VYmrqq"><label class="zgeHL-">Gi&agrave;y cao g&oacute;t</label>
<div>Trung B&igrave;nh</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Loại Kh&oacute;a</label>
<div>Kh&oacute;a d&acirc;y</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">T&ecirc;n tổ chức chịu tr&aacute;ch nhiệm sản xuất</label>
<div>Đang cập nhật</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Chất liệu</label>
<div>Kh&aacute;c, Sợi tổng hợp</div>
</div>', N'sp4.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp4-1.jpg', N'sp4-2.jpg', N'sp4-3.jpg', N'sp4-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (25, N'Giày thể thao nữ Berstar ', CAST(900000 AS Decimal(18, 0)), NULL, N'Chất liệu Sợi tổng hợp Xuất xứ Trung Quốc Dịp Hằng Ngày Chiều cao cổ giày Cổ thấp Kho hàng 99842', N'<div class="VYmrqq"><label class="zgeHL-">Chất liệu</label>
<div>Sợi tổng hợp</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Xuất xứ</label>
<div>Trung Quốc</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Dịp</label>
<div>Hằng Ng&agrave;y</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Chiều cao cổ gi&agrave;y</label>
<div>Cổ thấp</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Kho h&agrave;ng</label>
<div>99842</div>
</div>', N'sp5.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (26, N'Giày thể thao nữ Warri', CAST(568000 AS Decimal(18, 0)), NULL, N'Giày cao gót Thấp Loại Khóa Khóa dây Tên tổ chức chịu trách nhiệm sản xuất Đang cập nhật Chất liệu Khác Địa chỉ tổ chức chịu trách nhiệm sản xuất Đang cập nhật', N'<div class="VYmrqq"><label class="zgeHL-">Gi&agrave;y cao g&oacute;t</label>
<div>Thấp</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Loại Kh&oacute;a</label>
<div>Kh&oacute;a d&acirc;y</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">T&ecirc;n tổ chức chịu tr&aacute;ch nhiệm sản xuất</label>
<div>Đang cập nhật</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Chất liệu</label>
<div>Kh&aacute;c</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Địa chỉ tổ chức chịu tr&aacute;ch nhiệm sản xuất</label>
<div>Đang cập nhật</div>
</div>', N'sp6.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (27, N'Giày Nike_Nam Nữ AF1', CAST(890000 AS Decimal(18, 0)), NULL, N'Tình trạng Đã Sử Dụng Dịp Thể thao Chiều cao cổ giày Cổ thấp Kho hàng 79652 Gửi từ Huyện Đông Anh, Hà Nội', N'<div class="VYmrqq"><label class="zgeHL-">T&igrave;nh trạng</label>
<div class="Bv1CNE">Đ&atilde; Sử Dụng</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Dịp</label>
<div>Thể thao</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Chiều cao cổ gi&agrave;y</label>
<div>Cổ thấp</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Kho h&agrave;ng</label>
<div>79652</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Gửi từ</label>
<div>Huyện Đ&ocirc;ng Anh, H&agrave; Nội</div>
</div>', N'sp7.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (28, N'Giày 𝐉𝐨𝐫𝐝𝐚𝐧 𝐜ổ 𝐭𝐡ấ𝐩', CAST(230000 AS Decimal(18, 0)), NULL, N'Shop nằm trong chuỗi cửa hàng trên sàn TMDT mới hoạt động nên sẽ có những chương trình big sale để đón chào những khách hàng mới lần đầu đến trải nghiệm shop, chắc chắn sẽ không đề bạn thất vọng.', N'<p>Shop nằm trong chuỗi cửa h&agrave;ng tr&ecirc;n s&agrave;n TMDT mới hoạt động n&ecirc;n sẽ c&oacute; những chương tr&igrave;nh big sale để đ&oacute;n ch&agrave;o những kh&aacute;ch h&agrave;ng mới lần đầu đến trải nghiệm shop, chắc chắn sẽ kh&ocirc;ng đề bạn thất vọng.&nbsp;</p>', N'sp8.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp8-1.jpg', N'sp8-2.jpg', N'sp8-3.jpg', N'sp8-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (29, N'Giày thể thao nữ SB', CAST(570000 AS Decimal(18, 0)), NULL, N'Giày cao gót Thấp Loại Khóa Khóa dây Tên tổ chức chịu trách nhiệm sản xuất Đang cập nhật Chất liệu Khác Địa chỉ tổ chức chịu trách nhiệm sản xuất Đang cập nhật', N'<div class="VYmrqq"><label class="zgeHL-">Gi&agrave;y cao g&oacute;t</label>
<div>Thấp</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Loại Kh&oacute;a</label>
<div>Kh&oacute;a d&acirc;y</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">T&ecirc;n tổ chức chịu tr&aacute;ch nhiệm sản xuất</label>
<div>Đang cập nhật</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Chất liệu</label>
<div>Kh&aacute;c</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Địa chỉ tổ chức chịu tr&aacute;ch nhiệm sản xuất</label>
<div>Đang cập nhật</div>
</div>', N'sp9.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp9-1.jpg', N'sp9-2.jpg', N'sp9-3.jpg', N'sp9-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (30, N'Giày Thể Thao Đế Dày Tăng Chiều Cao', CAST(800000 AS Decimal(18, 0)), NULL, N'Chất liệu Khác Dịp Hằng Ngày Chiều cao cổ giày Cổ thấp Kho hàng 27996', N'<div class="VYmrqq"><label class="zgeHL-">Chất liệu</label>
<div>Kh&aacute;c</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Dịp</label>
<div>Hằng Ng&agrave;y</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Chiều cao cổ gi&agrave;y</label>
<div>Cổ thấp</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Kho h&agrave;ng</label>
<div>27996</div>
</div>', N'sp10.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 3, 0, N'sp10-1.jpg', N'sp10-2.jpg', N'sp10-3.jpg', N'sp10-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (31, N'Giày Bốt Martin y2k Đế Dày', CAST(900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp11.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 3, 0, N'sp11-1.jpg', N'sp11-2.jpg', N'sp11-3.jpg', N'sp11-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (32, N'Giày đến bự 3 màu ', CAST(568000 AS Decimal(18, 0)), NULL, N'Hàng Quảng Châu form lúc nào cũng đẹp miễn bàn rồi nha mọi người 🥰🥰❤❤ Bạn có thắc mắc về sản phẩm Inbox để shop tư vấn cụ thể hơn nha... ib tìm sp,giá sỉ qua zalo :', N'<p>H&agrave;ng Quảng Ch&acirc;u form l&uacute;c n&agrave;o cũng đẹp miễn b&agrave;n rồi nha mọi người 🥰🥰❤❤ Bạn c&oacute; thắc mắc về sản phẩm Inbox để shop tư vấn cụ thể hơn nha... ib t&igrave;m sp,gi&aacute; sỉ qua zalo :&nbsp;</p>', N'sp12.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 3, 0, N'sp12-1.jpg', N'sp12-2.jpg', N'sp12-3.jpg', N'sp12-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (33, N'Giày LV Louis Vuitton Trainer', CAST(780000 AS Decimal(18, 0)), NULL, N'Tình trạng Đã Sử Dụng Giày cao gót Không gót Loại Khóa Khóa dây Tên tổ chức chịu trách nhiệm sản xuất Đang cập nhật', N'<div class="VYmrqq"><label class="zgeHL-">T&igrave;nh trạng</label>
<div class="Bv1CNE">Đ&atilde; Sử Dụng</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Gi&agrave;y cao g&oacute;t</label>
<div>Kh&ocirc;ng g&oacute;t</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Loại Kh&oacute;a</label>
<div>Kh&oacute;a d&acirc;y</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">T&ecirc;n tổ chức chịu tr&aacute;ch nhiệm sản xuất</label>
<div>Đang cập nhật</div>
</div>', N'sp13.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 3, 0, N'sp13-1.jpg', N'sp13-2.jpg', N'sp13-3.jpg', N'sp13-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (34, N'Giày cao gót thời trang ulzzang Velcro ', CAST(400000 AS Decimal(18, 0)), NULL, N'Chất liệu trên: da tổng hợp Chất liệu duy nhất: Cao su Mô hình: hoạt hình hoạt hình Đóng cửa: ren-up khóa dán Phong cách: Hàn Quốc', N'<p>Chất liệu tr&ecirc;n: da tổng hợp Chất liệu duy nhất: Cao su M&ocirc; h&igrave;nh: hoạt h&igrave;nh hoạt h&igrave;nh Đ&oacute;ng cửa: ren-up kh&oacute;a d&aacute;n Phong c&aacute;ch: H&agrave;n Quốc</p>', N'sp14.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 3, 0, N'sp14-1.jpg', N'sp14-2.jpg', N'sp14-3.jpg', N'sp14-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (35, N'GIÀY THỂ THAO PROPHERE', CAST(340000 AS Decimal(18, 0)), NULL, N'Giày thể thao prophere cao cấp , dáng đẹp , ôm chân . Cực kỳ êm ái ạ  GIÁ KM: CAM KẾT RẺ VÀ CHẤT LƯỢNG NHẤT SHOPEE ^^', N'<p>Gi&agrave;y thể thao prophere cao cấp , d&aacute;ng đẹp , &ocirc;m ch&acirc;n . Cực kỳ &ecirc;m &aacute;i ạ GI&Aacute; KM: CAM KẾT RẺ V&Agrave; CHẤT LƯỢNG NHẤT SHOPEE ^^</p>', N'sp15.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 3, 0, N'sp15-1.jpg', N'sp15-2.jpg', N'sp15-3.jpg', N'sp15-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (37, N'GIÀY THỂ THAO PROPHERE', CAST(890000 AS Decimal(18, 0)), NULL, N'Loại Khóa Khóa dây Dịp Thể thao Chiều cao cổ giày Cổ cao Kho hàng 306', N'<div class="VYmrqq"><label class="zgeHL-">Loại Kh&oacute;a</label>
<div>Kh&oacute;a d&acirc;y</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Dịp</label>
<div>Thể thao</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Chiều cao cổ gi&agrave;y</label>
<div>Cổ cao</div>
</div>
<div class="VYmrqq"><label class="zgeHL-">Kho h&agrave;ng</label>
<div>306</div>
</div>', N'sp17.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, N'sp17-1.jpg', N'sp17-2.jpg', N'sp17-3.jpg', N'sp17-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (38, N'Dép nữ đế bằng ', CAST(6700000 AS Decimal(18, 0)), NULL, N'Dép nữ thời trang dép ulzzang đế bằng này sử dụng trong mọi phong cách, mọi hoàn cảnh.  Sử dụng mọi mục đích: dép nữ thời trang dép đi biển, dép nữ thời trang dép đế bằng đi học, dép nữ thời trang dép đế bằng đi du lịch, dép nữ thời trang dép nữ đế bằng đi chơi dạo phố', NULL, N'sp18.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, N'sp18-1.jpg', N'sp18-2.jpg', N'sp18-3.jpg', N'sp18-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (39, N'giầy đá bóng sân nhân tạo', CAST(8900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp19.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, N'sp19-1.jpg', N'sp19-2.jpg', N'sp19-3.jpg', N'sp19-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (40, N'Giày thể thao nữ', CAST(670000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp20.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp20-1.jpg', N'sp20-2.jpg', N'sp20-3.jpg', N'sp20-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (41, N'Giày thể thao nữ Warri', CAST(340000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp1.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, N'sp1-1.jpg', N'sp1-2.jpg', N'sp1-3.jpg', N'sp1-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (42, N'Boot chiến binh khoá ', CAST(5780000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp2.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (43, N'Giày Nữ SNEAKER HWEI ', CAST(4800000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp3.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (46, N'giày sneaker hình hoa cúc', CAST(1200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp6.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (47, N'Giầy SNEAKER YR ', CAST(560000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp7.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (48, N'Giày thể thao nam Sport WWB', CAST(1500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp8.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, N'sp8-1.jpg', N'sp8-2.jpg', N'sp8-3.jpg', N'sp8-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (49, N'Giầy thể thao nữ dây buộc SPORT', CAST(2300000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp9.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 5, 0, N'sp9-1.jpg', N'sp9-2.jpg', N'sp9-3.jpg', N'sp9-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (50, N'Chzk TYT051 2022 ', CAST(1300000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp10.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 5, 0, N'sp10-1.jpg', N'sp10-2.jpg', N'sp10-3.jpg', N'sp10-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (51, N'Giày thể thao CHZK TYT079', CAST(3700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp11.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, N'sp11-1.jpg', N'sp11-2.jpg', N'sp11-3.jpg', N'sp11-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (52, N'Giày thể thao QIAOYILUO', CAST(1100000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp12.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, N'sp12-1.jpg', N'sp12-2.jpg', N'sp12-3.jpg', N'sp12-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (53, N'Giày Thể Thao Đế Bằng', CAST(4600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp13.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, N'sp13-1.jpg', N'sp13-2.jpg', N'sp13-3.jpg', N'sp13-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (54, N'Giày Thể Thao Mùa ', CAST(8700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp14.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, N'sp14-1.jpg', N'sp14-2.jpg', N'sp14-3.jpg', N'sp14-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (55, N'Giày thể thao chạy bộ nhẹ ', CAST(7500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp15.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, N'sp15-1.jpg', N'sp15-2.jpg', N'sp15-3.jpg', N'sp15-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (56, N'Giày nữ thể thao snaeker ', CAST(9000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp16.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, N'sp16-1.jpg', N'sp16-2.jpg', N'sp16-3.jpg', N'sp16-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (57, N'Giày thể thao sneaker nữ', CAST(230000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp17.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, N'sp17-1.jpg', N'sp17-2.jpg', N'sp17-3.jpg', N'sp17-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (58, N'Sneaker nữ', CAST(170000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp18.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, N'sp18-1.jpg', N'sp18-2.jpg', N'sp18-3.jpg', N'sp18-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (59, N'GIÀY THỂ THAO NAM ĐẾ ĐÚC FULL', CAST(670000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp19.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, N'sp19-1.jpg', N'sp19-2.jpg', N'sp19-3.jpg', N'sp19-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (60, N'Giầy thể thao nữ độn đế,giày uzzang sneaker ', CAST(7800000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp20.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp20-1.jpg', N'sp20-2.jpg', N'sp20-3.jpg', N'sp20-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (61, N'Giầy thể thao nữ buộc dây tăng chiều cao đế bánh mì', CAST(890000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp1.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp1-1.jpg', N'sp1-2.jpg', N'sp1-3.jpg', N'sp1-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (62, N'Giầy da', CAST(340000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp2.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (63, N'Giày vải', CAST(8900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp3.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (64, N'Giày thượng đình', CAST(560000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp4.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp4-1.jpg', N'sp4-2.jpg', N'sp4-3.jpg', N'sp4-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (65, N'Giầy SNEAKER YR ', CAST(8900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp5.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (66, N'Giày cao gót thời trang ulzzang Velcro ', CAST(458000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp6.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (67, N'GIÀY THỂ THAO PROPHERE', CAST(678000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp7.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (68, N'Giầy thể thao nữ buộc dây tăng chiều ', CAST(800000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp8.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp8-1.jpg', N'sp8-2.jpg', N'sp8-3.jpg', N'sp8-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (69, N'Giày bảo hộ', CAST(900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp9.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp9-1.jpg', N'sp9-2.jpg', N'sp9-3.jpg', N'sp9-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (70, N'Giầy độn đế', CAST(600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp10.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp10-1.jpg', N'sp10-2.jpg', N'sp10-3.jpg', N'sp10-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (71, N'Giày mũi nhọn', CAST(3400000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp11.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp11-1.jpg', N'sp11-2.jpg', N'sp11-3.jpg', N'sp11-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (72, N'Giày cao cổ', CAST(700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp12.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp12-1.jpg', N'sp12-2.jpg', N'sp12-3.jpg', N'sp12-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (73, N'Giày nữ đế cao', CAST(800000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp13.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp13-1.jpg', N'sp13-2.jpg', N'sp13-3.jpg', N'sp13-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (74, N'Giầy nhiều màu', CAST(900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp14.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, N'sp14-1.jpg', N'sp14-2.jpg', N'sp14-3.jpg', N'sp14-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (75, N'Giày ba ta', CAST(400000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp15.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, N'sp15-1.jpg', N'sp15-2.jpg', N'sp15-3.jpg', N'sp15-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (76, N'Giày Nữ SNEAKER HWEI ', CAST(700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp16.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, N'sp16-1.jpg', N'sp16-2.jpg', N'sp16-3.jpg', N'sp16-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (77, N'Giày thể thao nữ Warri', CAST(560000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp17.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, N'sp17-1.jpg', N'sp17-2.jpg', N'sp17-3.jpg', N'sp17-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (78, N'Giày Cao Gót / Sandal ', CAST(700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp18.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, N'sp18-1.jpg', N'sp18-2.jpg', N'sp18-3.jpg', N'sp18-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (79, N'Sneaker nữ siêu nhẹ', CAST(500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp19.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, N'sp19-1.jpg', N'sp19-2.jpg', N'sp19-3.jpg', N'sp19-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (80, N'Giầy SNEAKER YR ', CAST(800000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp20.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, N'sp20-1.jpg', N'sp20-2.jpg', N'sp20-3.jpg', N'sp20-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (81, N'Giày thể thao nam nữ đế êm', CAST(700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp1.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, N'sp1-1.jpg', N'sp1-2.jpg', N'sp1-3.jpg', N'sp1-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (82, N'Giày cao gót thời trang ulzzang Velcro ', CAST(800000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp2.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (83, N'GIÀY THỂ THAO PROPHERE', CAST(400000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp3.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (84, N'Giày thể thao nam nữ đế êm', CAST(5600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp4.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, N'sp4-1.jpg', N'sp4-2.jpg', N'sp4-3.jpg', N'sp4-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (85, N'Giày Af1 Sd trắng', CAST(1200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp5.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (86, N'Giày Jordan Hồng Cổ Cao', CAST(120000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp6.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (87, N'Giày Jordan cổ thấp Low Paris ', CAST(1700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp7.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (88, N'Giày thể thao cổ cao nâu đen', CAST(2500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp8.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, N'sp8-1.jpg', N'sp8-2.jpg', N'sp8-3.jpg', N'sp8-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (89, N'Giày sneaker nữ Jordan', CAST(200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp9.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, N'sp9-1.jpg', N'sp9-2.jpg', N'sp9-3.jpg', N'sp9-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (90, N'Giày Nữ SNEAKER HWEI ', CAST(2700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp10.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, N'sp10-1.jpg', N'sp10-2.jpg', N'sp10-3.jpg', N'sp10-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (91, N'Giày Jordan Đỏ Thấp Cổ', CAST(4700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp11.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, N'sp11-1.jpg', N'sp11-2.jpg', N'sp11-3.jpg', N'sp11-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (92, N'Dép Lê Nam ', CAST(5000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp12.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, N'sp12-1.jpg', N'sp12-2.jpg', N'sp12-3.jpg', N'sp12-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (93, N'Giày jordan 1 cổ thấp cao cấp', CAST(5000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp13.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, N'sp13-1.jpg', N'sp13-2.jpg', N'sp13-3.jpg', N'sp13-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (94, N'Giầy cao gót', CAST(4500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp14.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, N'sp14-1.jpg', N'sp14-2.jpg', N'sp14-3.jpg', N'sp14-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (95, N'Giầy thể thao nữ buộc dây tăng chiều ', CAST(1350000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp15.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, N'sp15-1.jpg', N'sp15-2.jpg', N'sp15-3.jpg', N'sp15-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (96, N'Giày Nike Air Jordan 1 Retro High Dior ', CAST(2650000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp16.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, N'sp16-1.jpg', N'sp16-2.jpg', N'sp16-3.jpg', N'sp16-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (97, N'Giày Sneakers Nam', CAST(1750000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp17.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, N'sp17-1.jpg', N'sp17-2.jpg', N'sp17-3.jpg', N'sp17-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (98, N'AYUER Dép eva đế mềm', CAST(5500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp18.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, N'sp18-1.jpg', N'sp18-2.jpg', N'sp18-3.jpg', N'sp18-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (99, N'AYUER Dép inchoi', CAST(3200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp19.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, N'sp19-1.jpg', N'sp19-2.jpg', N'sp19-3.jpg', N'sp19-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (100, N'Dép đi trong nhà AYUER hình cá mập 4cm', CAST(1500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp20.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, N'sp20-1.jpg', N'sp20-2.jpg', N'sp20-3.jpg', N'sp20-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (101, N'Dép bông đi trong nhà AYUER', CAST(1300000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp1.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, N'sp1-1.jpg', N'sp1-2.jpg', N'sp1-3.jpg', N'sp1-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (102, N'Dép Nữ Thời Trang SODOHA SDH5969', CAST(1500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp2.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (103, N'Giày Thể Thao 5cm Nữ Thời Trang JUNO Sneaker Queendom', CAST(1400000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp3.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (104, N'Giày da chelsea boots', CAST(2600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp4.jpg', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, N'sp4-1.jpg', N'sp4-2.jpg', N'sp4-3.jpg', N'sp4-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (105, N'Giày lười nam , giày da nam', CAST(6000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp5.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (106, N'Giày thể thao nam KATEZAG49', CAST(4600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp6.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (107, N'Giày thể thao nam KATEZAG57 ', CAST(5300000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp7.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (108, N'Giày thể thao nam KATEZAG57 ', CAST(8300000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp8.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, N'sp8-1.jpg', N'sp8-2.jpg', N'sp8-3.jpg', N'sp8-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (109, N' Giày Đi Bộ Biti''s', CAST(6700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp9.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, N'sp9-1.jpg', N'sp9-2.jpg', N'sp9-3.jpg', N'sp9-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (110, N'Giày Thể Thao Biti''s Nam DSM075033TRG', CAST(2800000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp10.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, N'sp10-1.jpg', N'sp10-2.jpg', N'sp10-3.jpg', N'sp10-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (111, N'Giày Thể Thao Nam Biti''s Hunter Core', CAST(4000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp11.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, N'sp11-1.jpg', N'sp11-2.jpg', N'sp11-3.jpg', N'sp11-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (112, N'Giày Thể Thao Nữ Biti''s Hunter Street Cream', CAST(7500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp12.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 2, 0, N'sp12-1.jpg', N'sp12-2.jpg', N'sp12-3.jpg', N'sp12-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (113, N'Giày Thể Thao Biti''s Nữ DSM075033TRG', CAST(5500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp13.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 2, 0, N'sp13-1.jpg', N'sp13-2.jpg', N'sp13-3.jpg', N'sp13-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (114, N'Giày Thể Thao Sneaker Trẻ Em Cao Cấp', CAST(7500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp14.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, N'sp14-1.jpg', N'sp14-2.jpg', N'sp14-3.jpg', N'sp14-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (115, N'Giày Thể Thao Biti''s Trẻ Em Cool Kids', CAST(3500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp15.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, N'sp15-1.jpg', N'sp15-2.jpg', N'sp15-3.jpg', N'sp15-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (116, N'Giày Thể Thao Biti''s Bé Trai DSB141800XNH ', CAST(6000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp16.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, N'sp16-1.jpg', N'sp16-2.jpg', N'sp16-3.jpg', N'sp16-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (117, N'Giày Thể Thao Biti''s Bé Trai Batman DSB141399DOO ', CAST(4000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp17.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, N'sp17-1.jpg', N'sp17-2.jpg', N'sp17-3.jpg', N'sp17-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (118, N'Giày Thể Thao Biti''s Bé Trai DSB140800XNH', CAST(320000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp18.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, N'sp18-1.jpg', N'sp18-2.jpg', N'sp18-3.jpg', N'sp18-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (119, N'Giày Thể Thao Biti''s Bé Trai DSB140800DEN', CAST(200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp19.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, N'sp19-1.jpg', N'sp19-2.jpg', N'sp19-3.jpg', N'sp19-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (120, N'Giày Biti''s Thể Thao Nam -Nữ Hunter X DSMH10500TRG/', CAST(2000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp20.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, N'sp20-1.jpg', N'sp20-2.jpg', N'sp20-3.jpg', N'sp20-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (121, N'Giày Biti''s Thể Thao Nam Hunter X DSMH10500XAM', CAST(2300000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp1.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, N'sp1-1.jpg', N'sp1-2.jpg', N'sp1-3.jpg', N'sp1-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (122, N'Giày Chạy Bộ Nam - Nữ Biti''s Hunter Running Yellow DSMH10000VAG', CAST(4000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp2.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (123, N' Giày Bóng Đá Nam Biti''s Hunter Football', CAST(3100000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp3.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (124, N'Giày Chạy Bộ Nam - Nữ Biti''s Hunter Running BLACK DSMH', CAST(2900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp4.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, N'sp4-1.jpg', N'sp4-2.jpg', N'sp4-3.jpg', N'sp4-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (125, N'iày Bóng Đá Nam Biti''s Hunter Football Futsal DSMH09100XDG', CAST(3200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp5.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (126, N'Sandal Nam Hunter X Blazin’ Neon Collection DEMH01300KEM', CAST(4500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp6.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (127, N'Sandal Biti''s Nam DEM012300NAU', CAST(1700000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp7.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (128, N'andal Eva Phun Nam Biti''s Hunter REMH00100XNH', CAST(2900000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp8.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, N'sp8-1.jpg', N'sp8-2.jpg', N'sp8-3.jpg', N'sp8-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (129, N'Sandal Biti''s Nam DEM012300DEN', CAST(6200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp9.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, N'sp9-1.jpg', N'sp9-2.jpg', N'sp9-3.jpg', N'sp9-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (130, N'Dép Sandal Nam, Dép Quai Hậu Mẫu Mới', CAST(3500000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp10.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, N'sp10-1.jpg', N'sp10-2.jpg', N'sp10-3.jpg', N'sp10-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (131, N'Dép Eva Phun Biti''s Nam DEM012500XNH', CAST(2200000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp11.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, N'sp11-1.jpg', N'sp11-2.jpg', N'sp11-3.jpg', N'sp11-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (132, N'Dép Eva Phun Biti''s Nưx DEM012500XNH', CAST(1600000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp12.jpg', 4, 12, 0, 0, 3, 1, 1, 4, 6, 0, N'sp12-1.jpg', N'sp12-2.jpg', N'sp12-3.jpg', N'sp12-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (133, N'alibaba', CAST(1000000 AS Decimal(18, 0)), CAST(N'2021-04-17T00:00:00.000' AS DateTime), NULL, NULL, N'sp13.jpg', 12, 12, 12, 12, 12, 1, 2, 7, 1, 1, N'sp13-1.jpg', N'sp13-2.jpg', N'sp13-3.jpg', N'sp13-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (134, N'asd', CAST(1233323 AS Decimal(18, 0)), CAST(N'2021-04-17T00:00:00.000' AS DateTime), NULL, NULL, N'sp14.jpg', 12, 12, 12, 12, 12, 1, 6, 1, 1, 1, N'sp14-1.jpg', N'sp14-2.jpg', N'sp14-3.jpg', N'sp14-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (139, N'macbook pro', CAST(10000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'sp19.jpg', 12, 12, 12, 12, 12, 1, 1, 2, 1, NULL, N'sp19-1.jpg', N'sp19-2.jpg', N'sp19-3.jpg', N'sp19-4.jpg')
GO
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 
GO
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (1, N'admin', N'123456', N'Quản trị viên', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', N'Vật nuôi mà bạn yêu thích là gì?', N'HuyAdmin', 1)
GO
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (2, N'staff1', N'123456', N'Nhân viên 1', NULL, NULL, NULL, NULL, NULL, 2)
GO
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (5, N'asida118', N'123', N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', NULL, N'who is your daddy', N'Huy', 3)
GO
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (7, N'asida111', N'123', N'hồ thị như loằn', N'123 ádasd', N'asd@gmail.com', N'0123456789', N'Họ tên người cha bạn là gì?', N'Huy', 3)
GO
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (8, N'asida111123', N'123', N'ád', N'100 Nguyễn Huệ, Q1, TPHCM', N'asd@gmail.com', N'0123456789', N'Vật nuôi mà bạn yêu thích là gì?', N'Huy', 3)
GO
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (9, N'staff2', N'123456', N'nhân viên 2', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', N'Sở thích của bạn là gì', N'Huy', 2)
GO
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (11, N'staff3', N'123456', N'nhân viên 3', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', N'Họ tên người cha bạn là gì?', N'Huy', 2)
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ToTable] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ToTable]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_ToTable] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_ToTable]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_ToTable] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_ToTable]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE 
GO
