USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 12/4/2024 7:24:41 PM ******/
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
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 12/4/2024 7:24:41 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/4/2024 7:24:42 PM ******/
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
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 12/4/2024 7:24:42 PM ******/
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
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (35, 14, 15, N'Giày Sneaker Nam', 1, CAST(670000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (36, 15, 143, N'Giày adidas Galaxy 7 Nam ', 1, CAST(1590000 AS Decimal(18, 0)))
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
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (16, 18, 7, CAST(34000000 AS Decimal(18, 0)), 10)
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
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (14, CAST(N'2024-12-04T17:17:28.847' AS DateTime), 0, NULL, 0, 18, 0, 0, 0)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (15, CAST(N'2024-12-04T17:31:24.480' AS DateTime), 0, NULL, 0, 19, 0, 0, 0)
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
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (18, N'1123', N'ádasdad', N'dy@gmail.com', N'1123123', NULL)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (19, N'1123', N'ádasdad', N'dy@gmail.com', N'1123123', NULL)
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
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (6, N'Giày Adidas Nữ', N'Giày Adidas Nữ', N'Giày Adidas Nữ')
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
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (2, N'Giày Adidas Samba OG ‘White’ IE3675', CAST(1000000 AS Decimal(18, 0)), NULL, N'adidas Advancourt Baseadidas Advancourt Baseadidas Advancourt Base* Myshoes.vn cam kết:- Giày adidas Advancourt Base chính hãng 100%. Phát hiện hàng Fake đền tiền gấp 2 lần giá sản phẩm.- Myshoes.vn miễn phí giao hàng toàn quốc (với đơn hàng từ 500.000 vnđ).- Đổi hàng trong 30 ngày. (Áp dụng với sản phẩm chưa sử dụng, nguyên vẹn như khi nhận hàng)* Cách thức mua hàng:- Khách hàng MUA HÀNG trên website hoặc gọi điện tới Hotline: 0973 711 868 để được tư vấn.- Khách hàng sẽ nhận được sản phẩm sau 1 - 3 ngày kể từ khi đặt hàng.', NULL, N'sp2.jpg', 9, 12, 0, 0, 3, 1, 1, 11, 1, 0, N'sp2-1.jpg', N'sp2-2.jpg', N'sp2-3.jpg', N'sp2-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (3, N'Giày adidas Advancourt Base Nam Nữ - Trắng Xanh lá', CAST(800000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Gam màu đỏ thời trang hiện đại, phong cách thể thao khỏe khoắn, được làm trên chất liệu da bò mềm. lớp lót đệm êm chống thấm, đế cao su đúc với trọng lượng nhẹ mang lại cảm giác nhẹ nhàng khi di chuyển, có thể kết hợp với các trang phục : quần jeans, quần kaki.....Giay thể thao BD82891M Thích hợp sử dụng để đi chơi, đi du lịch, dã ngoại...Giày thể thao Asisa đỏ mận-cập nhật 11/7/22#k', N'Giá thị trường: 1,250,000 VND
Giá bán: 1,180,000 VND
Mô tả:Gam màu đỏ thời trang hiện đại, phong cách thể thao khỏe khoắn, được làm trên chất liệu da bò mềm. lớp lót đệm êm chống thấm, đế cao su đúc với trọng lượng nhẹ mang lại cảm giác nhẹ nhàng khi di chuyển, có thể kết hợp với các trang phục : quần jeans, quần kaki.....Giay thể thao BD82891M Thích hợp sử dụng để đi chơi, đi du lịch, dã ngoại...Giày thể thao Asisa đỏ mận-cập nhật 11/7/22#k
Thể loại:  Thời trang
Tình trạng:  Còn hàng
', N'sp3.jpg', 8, 50, 0, 0, 3, 1, 1, 2, 2, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (4, N'Giày sneaker Samba OG', CAST(780000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Đôi giày dép adidas Samba OG Wonder Quartz (Nữ) thêm một màu sắc hơi mờ của Wonder Quartz và Cloud White, cùng với đế cao su gum tối để silhout của Samba OG.

Màu gum tốicontra màu Wonder Quartz sáng không làm phân tâm từ thiết kế Samba OG cổ điển. Phần trên được làm hoàn toàn từ da mịn, cho đôi giày dép một cảm giác cao cấp. Căn bản là Cloud White, nhưng Wonder Quartz trên vạch 3-Stripes serrated. Both phần chỉ gót và vân toebox T-molded đều có một tông màu sẫm nhẹ, hợp với các màu khác.', N'Dáng regular fit
Có dây giày
Thân giày bằng da và da lộn
Lớp lót bằng vải dệt
Đế ngoài bằng cao su
Màu sản phẩm: Cloud White / Wonder Quartz / Wonder White
Mã sản phẩm: IH2751', N'sp4.jpg', 14, 12, 0, 0, 3, 1, 1, 2, 3, 0, N'sp4-1.jpg', N'sp4-2.jpg', N'sp4-3.jpg', N'sp4-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (5, N'Giày buộc dây nam da bò mạnh mẽ BD23055D', CAST(450000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Mô tả:Giày buộc dây nam da bò mạnh mẽ; BD23055D sẽ là người bạn đồng hành hoàn hảo của đôi chân bạn trong cách se lạnh của đông xuân. Với chất da thật 100% bền bỉ, đế cao su kép, kiểu cách hoàn thiện tuyệt mỹ. BD23055D sẽ rất thích hợp để đi coffee, đi tiệc sinh nhật, đi học, đi làm và có thể kết hợp mọi trang phục như jeans T shirt, kaki, joggers, .. #Q
Thể loại:  Thời trang
', N'Giày Adidas chuyên d?ng cho bóng đá, giúp b?n chơi t?t hơn và di chuy?n linh ho?t.', N'sp5.jpg', 9, 12, 0, 0, 3, 1, 1, 2, 4, 0, N'sp5-1.jpg', N'sp5-2.jpg', N'sp5-3.jpg', N'sp5-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (7, N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', CAST(890000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', N'sp7.jpg', 14, 12, 0, 0, 3, 1, 1, 1, 3, 0, N'sp7-1.jpg', N'sp7-2.jpg', N'sp7-3.jpg', N'sp7-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (15, N'Giày Sneaker Nam', CAST(670000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Loại Khóa Khóa dây Xuất xứ Trung Quốc Chất liệu Cao su Dịp Thể thao', N'<div class="VYmrqq"><label class="zgeHL-">Loại Kh&oacute;a</label>
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
</div>', N'555.jpg', 4, 12, 0, 0, 3, 1, 2, 1, 2, 0, N'666.jpg', N'777.jpg', N'777.jpg', N'666.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (23, N'Giày đá bóng Wika Galaxy', CAST(7800000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'Giày Slip On Vans Bee Check VN0A33TB9EH Màu Đen Trắng', N'<p>Gi&agrave;y Đ&aacute; B&oacute;ng Wika Galaxy Ch&iacute;nh h&atilde;ng🔥 ✔️Cam kết ch&iacute;nh h&atilde;ng 100% ✔️Bảo h&agrave;nh keo trọn đời ✔️Đổi trả miễn ph&iacute; trong 7 ng&agrave;y nếu sp lỗi</p>', N'sp3.jpg', 4, 12, 0, 0, 3, 1, 1, 1, 1, 0, N'sp3-1.jpg', N'sp3-2.jpg', N'sp3-3.jpg', N'sp3-4.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (143, N'Giày adidas Galaxy 7 Nam ', CAST(1590000 AS Decimal(18, 0)), CAST(N'2024-03-12T00:00:00.000' AS DateTime), N' Myshoes.vn cam kết:  - Giày adidas Grand Court Base 2.0 chính hãng 100%. Phát hiện hàng Fake đền tiền gấp 2 lần giá sản phẩm.  - Myshoes.vn miễn phí giao hàng toàn quốc (với đơn hàng từ 500.000 vnđ).  - Đổi hàng trong 30 ngày. (Áp dụng với sản phẩm chưa sử dụng, nguyên vẹn như khi nhận hàng)  * Cách thức mua hàng:  - Khách hàng MUA HÀNG trên website hoặc gọi điện tới Hotline: 0973 711 868 để được tư vấn. - Khách hàng sẽ nhận được sản phẩm sau 1 - 3 ngày kể từ khi đặt hàng.', N'<p><em>Adidas Galaxy 7 l&agrave; đ&ocirc;i gi&agrave;y thể thao&nbsp;l&yacute; tưởng d&agrave;nh cho việc chạy bộ, tập thể thao v&agrave; đi lại h&agrave;ng ng&agrave;y. Một mẫu gi&agrave;y c&oacute; thiết kế đơn giản nhưng rất đẹp v&agrave; sử dụng v&ocirc; c&ugrave;ng thoải m&aacute;i của adidas.</em></p>
<p>Điểm nhấn của Adidas Galaxy 7 ch&iacute;nh l&agrave; đệm giữa Cloudfoam, gi&uacute;p giảm chấn v&agrave; mang lại cảm gi&aacute;c &ecirc;m &aacute;i tr&ecirc;n mỗi bước đi. Đệm n&agrave;y kh&ocirc;ng chỉ gi&uacute;p bạn duy tr&igrave; sự thoải m&aacute;i, m&agrave; c&ograve;n hỗ trợ tốt trong việc n&acirc;ng cao sức bền khi luyện tập. Cho d&ugrave; bạn mới bắt đầu hay đ&atilde; l&agrave; một vận động vi&ecirc;n gi&agrave;u kinh nghiệm, Galaxy 7 sẽ gi&uacute;p bạn đạt được mục ti&ecirc;u với sự hỗ trợ to&agrave;n diện.</p>
<p>Adidas Galaxy 7 l&agrave; sự kết hợp ho&agrave;n hảo giữa c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; thiết kế thời trang, mang đến cho bạn sự hỗ trợ v&agrave; thoải m&aacute;i tối đa tr&ecirc;n từng bước chạy.</p>', N'sp3.jpg', 3, 2, 1, 2, 2, 1, 6, 1, 3, 0, N'sp3.jpg', N'sp3-2.jpg', N'sp3-2.jpg', N'sp3-2.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (144, N'Giày adidas Grand Court Base 2 Nam', CAST(1690000 AS Decimal(18, 0)), CAST(N'2024-10-12T00:00:00.000' AS DateTime), N' Myshoes.vn cam kết:  - Giày adidas Grand Court Base 2.0 chính hãng 100%. Phát hiện hàng Fake đền tiền gấp 2 lần giá sản phẩm.  - Myshoes.vn miễn phí giao hàng toàn quốc (với đơn hàng từ 500.000 vnđ).  - Đổi hàng trong 30 ngày. (Áp dụng với sản phẩm chưa sử dụng, nguyên vẹn như khi nhận hàng)  * Cách thức mua hàng:  - Khách hàng MUA HÀNG trên website hoặc gọi điện tới Hotline: 0973 711 868 để được tư vấn. - Khách hàng sẽ nhận được sản phẩm sau 1 - 3 ngày kể từ khi đặt hàng.', N'<p><em>Gi&agrave;y adidas Grand Court Base 2.0&nbsp;phi&ecirc;n bản n&acirc;ng cấp rất được ưu chuộng của d&ograve;ng&nbsp;Grand Court Base&nbsp;.Với những cải tiến mới khiến cho mẫu gi&agrave;y n&agrave;y bền đẹp v&agrave; năng động hơn kh&aacute; nhiều.</em></p>
<p>Gi&agrave;y adidas Grand Court Base 2.0 chắc chắn sẽ l&agrave; một mẫu gi&agrave;y thời trang kh&ocirc;ng thể n&agrave;o bỏ qua được trong năm nay.</p>', N'giay-adidas-grand-court-base-2-nam-xam-01.jpg', 3, 2, 3, 2, 2, 1, 6, 15, 4, 0, N'giay-adidas-grand-court-base-2-nam-xam-03.jpg', N'giay-adidas-grand-court-base-2-nam-xam-02.jpg', N'giay-adidas-grand-court-base-2-nam-xam-04.jpg', N'giay-adidas-grand-court-base-2-nam-xam-05.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (145, N'Giày adidas NY 90 Nam ', CAST(1790000 AS Decimal(18, 0)), CAST(N'2024-08-12T00:00:00.000' AS DateTime), N' Myshoes.vn cam kết:  - Giày adidas Grand Court Base 2.0 chính hãng 100%. Phát hiện hàng Fake đền tiền gấp 2 lần giá sản phẩm.  - Myshoes.vn miễn phí giao hàng toàn quốc (với đơn hàng từ 500.000 vnđ).  - Đổi hàng trong 30 ngày. (Áp dụng với sản phẩm chưa sử dụng, nguyên vẹn như khi nhận hàng)  * Cách thức mua hàng:  - Khách hàng MUA HÀNG trên website hoặc gọi điện tới Hotline: 0973 711 868 để được tư vấn. - Khách hàng sẽ nhận được sản phẩm sau 1 - 3 ngày kể từ khi đặt hàng.', N'<p><em>Gi&agrave;y adidas NY 90&nbsp;l&agrave; mẫu gi&agrave;y sneaker lấy cảm hứng phong c&aacute;ch những năm 90. Một mẫu gi&agrave;y kh&ocirc;ng bao giờ lỗi mốt c&oacute; thiết kế basic cổ điển nhưng với c&ocirc;ng nghệ vật liệu hiện đại cao cấp.</em></p>
<p>Adidas NY 90 với phần upper chất liệu da cao cấp kết hợp da lộn tinh tế, mũi gi&agrave;y với c&aacute;c lỗ nhỏ gi&uacute;p gi&agrave;y th&ocirc;ng tho&aacute;ng, dễ chịu khi sử dụng. Phần đế chất liệu cao su chất lượng cao c&oacute; khả năng b&aacute;m đường v&agrave; chịu m&agrave;i m&ograve;n rất tốt.</p>', N'giay-adidas-ny-90-nam-trang-xanh-la-01.jpg', 2, 2, 2, 3, 1, 1, 4, 1, 4, 0, N'giay-adidas-ny-90-nam-trang-xanh-la-05-800x800.jpg', N'giay-adidas-ny-90-nam-trang-xanh-la-04-800x800.jpg', N'giay-adidas-ny-90-nam-trang-xanh-la-03-800x800.jpg', N'giay-adidas-ny-90-nam-trang-xanh-la-02-800x800.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (146, N'Giày adidas Ultraboost Light Nữ ( Hồng )', CAST(3490000 AS Decimal(18, 0)), CAST(N'2024-09-12T00:00:00.000' AS DateTime), N'* Myshoes.vn cam kết:  - Giày adidas Ultraboost Light chính hãng 100%. Phát hiện hàng Fake đền tiền gấp 2 lần giá sản phẩm.  - Myshoes.vn miễn phí giao hàng toàn quốc (với đơn hàng từ 500.000 vnđ).  - Đổi hàng trong 30 ngày. (Áp dụng với sản phẩm chưa sử dụng, nguyên vẹn như khi nhận hàng)  * Cách thức mua hàng:  - Khách hàng MUA HÀNG trên website hoặc gọi điện tới Hotline: 0973 711 868 để được tư vấn. - Khách hàng sẽ nhận được sản phẩm sau 1 - 3 ngày kể từ khi đặt hàng.', N'<p><em>Gi&agrave;y adidas Ultraboost Light si&ecirc;u phẩm gi&agrave;y thể thao mới nhất đến từ nh&agrave; adidas, với vật liệu v&agrave; c&ocirc;ng nghệ tốt nhất được &aacute;p dụng tối đa cho sản n&agrave;y&nbsp;</em><em>adidas Ultraboost Light&nbsp;</em><em>xứng đ&aacute;ng trở th&agrave;nh niềm mơ ước của t&iacute;n đồ gi&agrave;y thể thao chạy bộ.</em></p>
<p>Ch&uacute;ng ta c&ugrave;ng xem adidas Ultraboost Light đẳng cấp như thế n&agrave;o nh&eacute;!</p>
<p>Phần upper của gi&agrave;y&nbsp;được l&agrave; từ PRIMEKNIT+ v&agrave; Forgedmesh &ocirc;m chắc phần giữa b&agrave;n ch&acirc;n cho cảm gi&aacute;c n&acirc;ng đỡ, đồng thời c&aacute;c v&ugrave;ng gi&atilde;n nở linh hoạt theo cử động của b&agrave;n ch&acirc;n khi bạn sải bước.</p>
<p>Đế&nbsp;giữa c&ocirc;ng nghệ Boost Light mới nhất độc quyền của adidas gi&uacute;p gi&agrave;y si&ecirc;u&nbsp;&ecirc;m si&ecirc;u&nbsp;nhẹ, hấp thụ v&agrave; phản hồi năng lượng tối đa gi&uacute;p bạn chinh phục những qu&atilde;ng đường thật d&agrave;i.</p>
<p>Đế ngo&agrave;i với c&ocirc;ng nghệ Continental&trade; Better Rubber nổi tiếng của Đức&nbsp;gi&uacute;p độ b&aacute;m đường rất&nbsp;tốt&nbsp;v&agrave; tăng độ bền tối đa cho gi&agrave;y.</p>
<p>C&ugrave;ng với hệ thống Linear Energy Push tạo độ ổn định cho sải bước đ&agrave;n hồi v&agrave; gọn ghẽ.</p>
<p>Ngo&agrave;i ra, hơn 50% vật liệu cấu tạo l&ecirc;n mẫu gi&agrave;y n&agrave;y được l&agrave;m từ vật liệu th&acirc;n thiện với m&ocirc;i trường gi&uacute;p bảo vệ tương lai.</p>
<p>Với tất cả những g&igrave; tốt nhất m&agrave; adidas đ&atilde; trang bị tr&ecirc;n mẫu&nbsp;Ultraboost Light n&agrave;y, đ&acirc;y chắc chắn sẽ l&agrave; mẫu gi&agrave;y si&ecirc;u hot của adidas trong năm nay.</p>', N'giay-adidas-ultraboost-light-nu-hong-01.jpg', 2, 3, 3, 2, 2, 1, 5, 15, 1, 0, N'giay-adidas-ultraboost-light-nu-hong-02.jpg', N'giay-adidas-ultraboost-light-nu-hong-03.jpg', N'giay-adidas-ultraboost-light-nu-hong-05.jpg', N'giay-adidas-ultraboost-light-nu-hong-06.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Chitiet], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (147, N'Giày adidas Grand Court Base 2 Nam Nữ (Trắng Đen)', CAST(1490000 AS Decimal(18, 0)), CAST(N'2024-11-12T00:00:00.000' AS DateTime), N'* Myshoes.vn cam kết:  - Giày adidas Grand Court Base 2.0 chính hãng 100%. Phát hiện hàng Fake đền tiền gấp 2 lần giá sản phẩm.  - Myshoes.vn miễn phí giao hàng toàn quốc (với đơn hàng từ 500.000 vnđ).  - Đổi hàng trong 30 ngày. (Áp dụng với sản phẩm chưa sử dụng, nguyên vẹn như khi nhận hàng)  * Cách thức mua hàng:  - Khách hàng MUA HÀNG trên website hoặc gọi điện tới Hotline: 0973 711 868 để được tư vấn. - Khách hàng sẽ nhận được sản phẩm sau 1 - 3 ngày kể từ khi đặt hàng.', N'<p><em>Gi&agrave;y adidas Grand Court Base 2.0&nbsp;phi&ecirc;n bản n&acirc;ng cấp rất được ưu chuộng của d&ograve;ng&nbsp;Grand Court Base&nbsp;.Với những cải tiến mới khiến cho mẫu gi&agrave;y n&agrave;y bền đẹp v&agrave; năng động hơn kh&aacute; nhiều.</em></p>
<p>Phần upper được l&agrave;m từ da cao cấp, phần đế l&agrave;m từ cao su tự nhi&ecirc;n cực kỳ bền. Gi&agrave;y adidas Grand Court Base 2.0 chắc chắn sẽ l&agrave; một mẫu gi&agrave;y thời trang kh&ocirc;ng thể n&agrave;o bỏ qua được trong năm nay.</p>', N'113.jpg', 2, 3, 3, 2, 3, 1, 6, 16, 2, 0, N'giay-adidas-grand-court-base-2-nam-trang-den-03.jpg', N'giay-adidas-grand-court-base-2-nam-trang-den-02.jpg', N'giay-adidas-grand-court-base-2-nam-trang-den-04.jpg', N'giay-adidas-grand-court-base-2-nam-trang-den-05.jpg')
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
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (12, N'user', N'123456', N'1123', N'ádasdad', N'dy@gmail.com', N'1123123', N'Hiện tại bạn đang làm công việc gì?', N'viet nam', 3)
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
