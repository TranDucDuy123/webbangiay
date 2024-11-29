USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[Quyen]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/30/2024 3:03:02 AM ******/
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
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 11/30/2024 3:03:02 AM ******/
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
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (20, 1, 2, N'Giày Adidas Samba OG ‘White’ IE3675', 3, CAST(1000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (21, 2, 2, N'Giày Adidas Samba OG ‘White’ IE3675', 3, CAST(1000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (22, 3, 2, N'Giày Adidas Samba OG ‘White’ IE3675', 3, CAST(1000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (23, 4, 2, N'Giày Adidas Samba OG ‘White’ IE3675', 3, CAST(1000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (24, 5, 2, N'Giày Adidas Samba OG ‘White’ IE3675', 3, CAST(1000000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (25, 1, 15, N'Giày Sneaker Nam', 3, CAST(670000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (26, 2, 15, N'Giày Sneaker Nam', 3, CAST(670000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (27, 3, 15, N'Giày Sneaker Nam', 3, CAST(670000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (28, 4, 15, N'Giày Sneaker Nam', 3, CAST(670000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (29, 5, 15, N'Giày Sneaker Nam', 3, CAST(670000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (30, 1, 23, N'Giày đá bóng Wika Galaxy', 3, CAST(7800000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (31, 2, 23, N'Giày đá bóng Wika Galaxy', 3, CAST(7800000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (32, 3, 23, N'Giày đá bóng Wika Galaxy', 3, CAST(7800000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (33, 4, 23, N'Giày đá bóng Wika Galaxy', 3, CAST(7800000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (34, 5, 23, N'Giày đá bóng Wika Galaxy', 3, CAST(7800000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 8, 2, CAST(25000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (6, 8, 5, CAST(30000000 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (8, 10, 2, CAST(25000000 AS Decimal(18, 0)), 12)
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
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (13, CAST(N'2024-11-27T15:17:26.040' AS DateTime), 0, NULL, 0, 17, 0, 0, 0)
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
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (17, N'Quản trị viên', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', NULL)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'Giày mới về', N'Giày mới về', N'Giày mới về')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'Giày Adidas Trắng', N'Giày Adidas Trắng', N'Giày Adidas Trắng')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Giày Chạy Bộ Adidas', N'Giày Chạy Bộ Adidas', N'Giày Chạy Bộ Adidas')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (4, N'Giày Thể Thao Adidas', N'Giày Thể Thao Adidas', N'Giày Thể Thao Adidas')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (5, N'
Giày Adidas Nam', N'
Giày Adidas Nam', N'
Giày Adidas Nam')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (6, N'Giày Adidas Nữ', N'Giày Adidas Nữ', N'Giày Adidas Nữ')
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
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (2, N'Giày Adidas Samba OG ‘White’ IE3675', CAST(1000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Adidas Samba OG Cloud White Core Black (GS) là phiên bản cho trẻ em của đôi giày classic Adidas Samba OG và được trình bày trong một gam màu trung tính gồm Cloud White, Core Black và Gum.

Giày này có phần trên giày da nguyên nhiên Cloud White với overlays vải suede grey. Phần trên giày này cũng giống như các phiên bản khác của Samba OG, với một overlay T-shape trên ngón tay và 3-stripes trên mặt bên. Các chữทอง kim loại viết thành “SAMBA” dọc theo 3-stripes và thêm chút ánh sáng lên mặt bên sau. So với đó, logo Adidas Trefoil đơn giản được tìm thấy trên thẻ lưỡi.', N'NO RETURNS, NO REFUNDS
Item is confirmed after payment confirmation. No refunds, returns or exchanges will be entertained except as required by law. This product is excluded from all promotional discounts and offers. Limited to 1 Quantity per Order.', N'sp2.jpg', 9, 12, 0, 0, 3, 1, 1, 2, 1, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (3, N'Giày Adidas Wmns Samba OG ‘Cloud White’ IH2751', CAST(800000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Gam màu đỏ thời trang hiện đại, phong cách thể thao khỏe khoắn, được làm trên chất liệu da bò mềm. lớp lót đệm êm chống thấm, đế cao su đúc với trọng lượng nhẹ mang lại cảm giác nhẹ nhàng khi di chuyển, có thể kết hợp với các trang phục : quần jeans, quần kaki.....Giay thể thao BD82891M Thích hợp sử dụng để đi chơi, đi du lịch, dã ngoại...Giày thể thao Asisa đỏ mận-cập nhật 11/7/22#k', N'Giá thị trường: 1,250,000 VND
Giá bán: 1,180,000 VND
Mô tả:Gam màu đỏ thời trang hiện đại, phong cách thể thao khỏe khoắn, được làm trên chất liệu da bò mềm. lớp lót đệm êm chống thấm, đế cao su đúc với trọng lượng nhẹ mang lại cảm giác nhẹ nhàng khi di chuyển, có thể kết hợp với các trang phục : quần jeans, quần kaki.....Giay thể thao BD82891M Thích hợp sử dụng để đi chơi, đi du lịch, dã ngoại...Giày thể thao Asisa đỏ mận-cập nhật 11/7/22#k
Thể loại:  Thời trang
Tình trạng:  Còn hàng
', N'sp3.jpg', 8, 50, 0, 0, 3, 1, 1, 2, 2, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (4, N'Giày sneaker nam da bò cao cấp; BD11028D', CAST(780000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Đôi giày dép adidas Samba OG Wonder Quartz (Nữ) thêm một màu sắc hơi mờ của Wonder Quartz và Cloud White, cùng với đế cao su gum tối để silhout của Samba OG.

Màu gum tốicontra màu Wonder Quartz sáng không làm phân tâm từ thiết kế Samba OG cổ điển. Phần trên được làm hoàn toàn từ da mịn, cho đôi giày dép một cảm giác cao cấp. Căn bản là Cloud White, nhưng Wonder Quartz trên vạch 3-Stripes serrated. Both phần chỉ gót và vân toebox T-molded đều có một tông màu sẫm nhẹ, hợp với các màu khác.', N'Giày Adidas t? m? t?ng chi ti?t, ch?t lư?ng cao v?i công ngh? tiên ti?n.', N'sp4.jpg', 14, 12, 0, 0, 3, 1, 1, 2, 3, 0, N'sp4-1.jpg', N'sp4-2.jpg', N'sp4-3.jpg', N'sp4-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (5, N'Giày buộc dây nam da bò mạnh mẽ; BD23055D', CAST(450000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Mô tả:Giày buộc dây nam da bò mạnh mẽ; BD23055D sẽ là người bạn đồng hành hoàn hảo của đôi chân bạn trong cách se lạnh của đông xuân. Với chất da thật 100% bền bỉ, đế cao su kép, kiểu cách hoàn thiện tuyệt mỹ. BD23055D sẽ rất thích hợp để đi coffee, đi tiệc sinh nhật, đi học, đi làm và có thể kết hợp mọi trang phục như jeans T shirt, kaki, joggers, .. #Q
Thể loại:  Thời trang
', N'Giày Adidas chuyên d?ng cho bóng đá, giúp b?n chơi t?t hơn và di chuy?n linh ho?t.', N'sp5.jpg', 9, 12, 0, 0, 3, 1, 1, 2, 4, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
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
Mã giảm giá:', N'sp6.jpg', 9, 12, 0, 0, 3, 1, 1, 1, 5, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (7, N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', CAST(890000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', N'sp7.jpg', 14, 12, 0, 0, 3, 1, 1, 1, 6, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (8, N'Giày cao nam GOG nhập khẩu; GC126D', CAST(970000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Giày cao nam GOG nhập khẩu; GC126D', N'Giày Adidas th? thao dành cho nh?ng ai yêu thích s? tho?i mái và th?i trang.', N'sp8.jpg', 9, 12, 0, 0, 3, 1, 1, 1, 7, 0, N'sp8-1.jpg', N'sp8-2.jpg', N'sp8-3.jpg', N'sp8-4.jpg')
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
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (16, N'Giày Sneaker xVESSE', CAST(8870000 AS Decimal(18, 0)), NULL, N'Giày Hàng Đẹp [ Full Box ] Ảnh hoàn toàn thật do shop chụp các bạn hoàn toàn có thể yên tâm về chất lượng sản phẩm Shop hứa nếu có bất cứ sai sót nào hay khách không hài lòng về sản phẩm thì shop sẽ hoàn trả 100% giá trị đơn hàng cho các bạn. Với kiểu dáng đang hot nhất hiện nay và được rất nhiều các bạn trẻ ưa chuộm', N'<p>Giày Hàng Đẹp [ Full Box ] Ảnh hoàn toàn th&acirc;̣t do shop chụp các bạn hoàn toàn có th&ecirc;̉ y&ecirc;n t&acirc;m v&ecirc;̀ ch&acirc;́t lượng sản ph&acirc;̉m Shop hứa n&ecirc;́u có b&acirc;́t cứ sai sót nào hay khách kh&ocirc;ng hài lòng v&ecirc;̀ sản ph&acirc;̉m thì shop sẽ hoàn trả 100% giá trị đơn hàng cho các bạn. Với ki&ecirc;̉u dáng đang hot nh&acirc;́t hi&ecirc;̣n nay và được r&acirc;́t nhi&ecirc;̀u các bạn trẻ ưa chu&ocirc;̣m</p>', N'sp16.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, N'sp16-1.jpg', N'sp16-2.jpg', N'sp16-3.jpg', N'sp16-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (17, N'Giày Thể Thao Chzk016', CAST(700000 AS Decimal(18, 0)), NULL, N'Chất liệu trên: vải Chất liệu đế: cao su Mô hình: Kiểm tra Phương thức đóng: ren', N'<p>Chất liệu tr&ecirc;n: vải Chất liệu đế: cao su M&ocirc; h&igrave;nh: Kiểm tra Phương thức đ&oacute;ng: ren</p>', N'sp17.jpg', 4, 12, 0, 0, 3, 1, 2, 1, 3, 0, N'sp17-1.jpg', N'sp17-2.jpg', N'sp17-3.jpg', N'sp17-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (18, N'Giày thể thao nữ dây tết siêu xinh', CAST(4500000 AS Decimal(18, 0)), NULL, N'Là mẫu giày đang được các bạn nữ rất ưa chuộng hiện nay bởi những đặc tính nổi trội: Kiểu dáng thời trang, năng động,trẻ trung dễ phối đồ Chất liệu đẹp, êm và dễ làm sạch; đế cao su tổng hợp nên dẻo và rất êm chân.', N'<p>L&agrave; mẫu gi&agrave;y đang được c&aacute;c bạn nữ rất ưa chuộng hiện nay bởi những đặc t&iacute;nh nổi trội: Kiểu d&aacute;ng thời trang, năng động,trẻ trung dễ phối đồ Chất liệu đẹp, &ecirc;m v&agrave; dễ l&agrave;m sạch; đế cao su tổng hợp n&ecirc;n dẻo v&agrave; rất &ecirc;m ch&acirc;n.&nbsp;</p>', N'sp18.jpg', 4, 12, 0, 0, 3, 1, 3, 1, 4, 0, N'sp18-1.jpg', N'sp18-2.jpg', N'sp18-3.jpg', N'sp18-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (20, N'Giày thể thao nữ RUFINE đế cao 4cm phong cách ulzzang', CAST(7800000 AS Decimal(18, 0)), NULL, N'Là mẫu giày đang được các bạn nữ rất ưa chuộng hiện nay bởi những đặc tính nổi trội: Kiểu dáng thời trang, năng động,trẻ trung dễ phối đồ Chất liệu đẹp, êm và dễ làm sạch; đế cao su tổng hợp nên dẻo và rất êm chân.', N'<p>L&agrave; mẫu gi&agrave;y đang được c&aacute;c bạn nữ rất ưa chuộng hiện nay bởi những đặc t&iacute;nh nổi trội: Kiểu d&aacute;ng thời trang, năng động,trẻ trung dễ phối đồ Chất liệu đẹp, &ecirc;m v&agrave; dễ l&agrave;m sạch; đế cao su tổng hợp n&ecirc;n dẻo v&agrave; rất &ecirc;m ch&acirc;n.</p>', N'sp20.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, N'sp20-1.jpg', N'sp20-2.jpg', N'sp20-3.jpg', N'sp20-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (21, N'Giày thể thao dây to cực xinh V64 ', CAST(3400000 AS Decimal(18, 0)), NULL, N'Siêu Phầm V64 được khách hàng bình chọn là sản phẩm của năm Với 3 màu kem (V64K) , Đen(V64Đ) và Hồng ( V64H ) Nổi bật với kiểu dáng dây to sành điệu  Kiểu dáng thể thao năng động Bảo hành keo trên từng sản phẩm', N'<p>Si&ecirc;u Phầm V64 được kh&aacute;ch h&agrave;ng b&igrave;nh chọn l&agrave; sản phẩm của năm Với 3 m&agrave;u kem (V64K) , Đen(V64Đ) v&agrave; Hồng ( V64H ) Nổi bật với kiểu d&aacute;ng d&acirc;y to s&agrave;nh điệu Kiểu d&aacute;ng thể thao năng động Bảo h&agrave;nh keo tr&ecirc;n từng sản phẩm</p>', N'sp1.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, N'sp1-1.jpg', N'sp1-2.jpg', N'sp1-3.jpg', N'sp1-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (22, N'Giày Sneaker Phong Cách Hồng Kông', CAST(5600000 AS Decimal(18, 0)), NULL, N'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày Màu sắc: be, đen , trắng Kích thước: 35, 36, 37, 38, 39 ,40 Phong cách: thông thường', N'<p>Thời gian giao h&agrave;ng dự kiến cho sản phẩm n&agrave;y l&agrave; từ 7-9 ng&agrave;y M&agrave;u sắc: be, đen , trắng K&iacute;ch thước: 35, 36, 37, 38, 39 ,40 Phong c&aacute;ch: th&ocirc;ng thường</p>', N'sp2.jpg', 4, 12, 0, 0, 3, 1, 1, 2, 7, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (23, N'Giày đá bóng Wika Galaxy', CAST(7800000 AS Decimal(18, 0)), NULL, NULL, N'<p>Gi&agrave;y Đ&aacute; B&oacute;ng Wika Galaxy Ch&iacute;nh h&atilde;ng🔥 ✔️Cam kết ch&iacute;nh h&atilde;ng 100% ✔️Bảo h&agrave;nh keo trọn đời ✔️Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu sp lỗi</p>', N'sp3.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
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
</div>', N'sp5.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 3, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
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
</div>', N'sp6.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, N'sp6-1.jpg', N'sp6-2.jpg', N'sp6-3.jpg', N'sp6-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (133, N'alibaba', CAST(1000000 AS Decimal(18, 0)), CAST(N'2021-04-17T00:00:00.000' AS DateTime), NULL, N'Dép Adidas, s? l?a ch?n hoàn h?o cho nh?ng ngày thư gi?n t?i nhà ho?c đi bi?n.', N'sp13.jpg', 12, 12, 12, 12, 12, 1, 2, 7, 5, 1, N'sp13-1.jpg', N'sp13-2.jpg', N'sp13-3.jpg', N'sp13-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (134, N'asd', CAST(1233323 AS Decimal(18, 0)), CAST(N'2021-04-17T00:00:00.000' AS DateTime), NULL, N'Giày Adidas ph?c v? cho m?i m?c đích, t? th? thao đ?n d?o ph?.', N'sp14.jpg', 12, 12, 12, 12, 12, 1, 6, 1, 6, 1, N'sp14-1.jpg', N'sp14-2.jpg', N'sp14-3.jpg', N'sp14-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (142, N'Giày adidas Galaxy 7 Nữ', CAST(1200000 AS Decimal(18, 0)), CAST(N'2024-07-11T00:00:00.000' AS DateTime), N'Thiết kế và Chất liệu:  Galaxy 7 được trang bị phần thân giày làm từ chất liệu dệt bền bỉ, mang lại sự hỗ trợ vững chắc và thoải mái từ những bước đầu tiên cho đến khi bạn hoàn thành chặng đường 5K. Thiết kế của giày không chỉ đảm bảo độ bền lâu dài mà còn giữ cho đôi chân bạn luôn thoải mái và được bảo vệ tốt nhất trong suốt quá trình chạy.', N'<h3 class="title module-title">M&ocirc; tả sản phẩm</h3>
<div class="block-body expand-block">
<div class="block-wrapper">
<div class="block-content ">
<p><em>Adidas Galaxy 7 l&agrave; đ&ocirc;i gi&agrave;y thể thao&nbsp;l&yacute; tưởng d&agrave;nh cho những ai muốn chinh phục từng bước chạy với sự thoải m&aacute;i v&agrave; hỗ trợ vượt trội. Mỗi cuộc chạy bộ kh&ocirc;ng chỉ l&agrave; một b&agrave;i tập, m&agrave; c&ograve;n l&agrave; h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; giới hạn của bản th&acirc;n, v&agrave; Galaxy 7 sẽ l&agrave; người bạn đồng h&agrave;nh ho&agrave;n hảo tr&ecirc;n h&agrave;nh tr&igrave;nh đ&oacute;.</em></p>
</div>
</div>
</div>', N'1111.jpg', 2, 2, 2, 2, 4, 3, 1, 12, 6, 0, N'1.jpg', N'2.jpg', N'3.jpg', N'4.jpg')
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
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (11, N'staff3', N'12345678', N'nhân viên 3', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', N'Họ tên người cha bạn là gì?', N'Huy', 2)
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
