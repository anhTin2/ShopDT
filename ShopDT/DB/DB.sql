USE [master]
GO
/****** Object:  Database [wedsite banDT]    Script Date: 4/4/2021 11:35:44 AM ******/
CREATE DATABASE [wedsite banDT] ON  PRIMARY 
( NAME = N'wedsite banDT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\wedsite banDT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'wedsite banDT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\wedsite banDT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [wedsite banDT] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wedsite banDT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wedsite banDT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wedsite banDT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wedsite banDT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wedsite banDT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wedsite banDT] SET ARITHABORT OFF 
GO
ALTER DATABASE [wedsite banDT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wedsite banDT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wedsite banDT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wedsite banDT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wedsite banDT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wedsite banDT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wedsite banDT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wedsite banDT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wedsite banDT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wedsite banDT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [wedsite banDT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wedsite banDT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wedsite banDT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wedsite banDT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wedsite banDT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wedsite banDT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wedsite banDT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wedsite banDT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wedsite banDT] SET  MULTI_USER 
GO
ALTER DATABASE [wedsite banDT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wedsite banDT] SET DB_CHAINING OFF 
GO
USE [wedsite banDT]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 4/4/2021 11:35:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 4/4/2021 11:35:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSX](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSX] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/4/2021 11:35:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](20) NOT NULL,
	[MaLoaiSP] [nvarchar](10) NULL,
	[MaNhaSX] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [text] NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongBan] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSP]) VALUES (N'LSP01', N'Tốt')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSP]) VALUES (N'LSP02', N'Khá')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSP]) VALUES (N'LSP03', N'Trung Bình')
INSERT [dbo].[NhaSX] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX01', N'Huawei')
INSERT [dbo].[NhaSX] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX02', N'Iphone')
INSERT [dbo].[NhaSX] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX03', N'Oppo')
INSERT [dbo].[NhaSX] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX04', N'Xioa Mi')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP1', N'LSP01', N'NSX01', N'Huawei Y6p', N'	EMUI 10 (Android 10 không có Google)', N'huawei-y6p', NULL, NULL, 2790000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP10', N'LSP01', N'NSX03', N'OPPO Reno5', N'Android 11', N'oppo-reno5', NULL, NULL, 8690000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP11', N'LSP01', N'NSX04', N'Xiaomi Mi 11 5G', N'Android 11', N'xiaomi-mi-11', NULL, NULL, 20990000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP12', N'LSP01', N'NSX04', N'Redmi Note 10 (6GB/128GB)', N'Android 11', N'xiaomi-note-10', NULL, NULL, 5190000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP13', N'LSP02', N'NSX04', N'Xiaomi POCO X3', N'Android 10', N'xiaomi-poco', NULL, NULL, 5990000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP14', N'LSP03', N'NSX04', N'Xiaomi Redmi 9T ', N'Android 10', N'xiaomi-redmi-9t', NULL, NULL, 4590000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP15', N'LSP02', N'NSX04', N' Xiaomi Redmi Note 9S', NULL, N'xiaomi-redmi-note-9s', NULL, NULL, 5690000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP2', N'LSP02', N'NSX02', N'Iphone 12 Pro Max 512GB

', N'	iOS 14', N'iphone-12-pro', NULL, NULL, 40490000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP3', N'LSP01', N'NSX02', N'Iphone-11 128GB', N'iOS 14', N'iPhone-11', NULL, NULL, 19690000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP4', N'LSP01', N'NSX02', N'Iphone 12 64GB', N'iOS 14', N'iphone', NULL, NULL, 21990000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP5', N'LSP02', N'NSX02', N'Iphone XR 128GB', N'iOS 12', N'iphone-xr', NULL, NULL, 14490000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP6', N'LSP03', N'NSX02', N'Iphone SE 128GB', N'iOS 14', N'iphone-se', NULL, NULL, 12990000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP7', N'LSP03', N'NSX03', N'OPPO A15s', N'Android 10', N'oppo-a15s', NULL, NULL, 3990000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP8', N'LSP02', N'NSX03', N'OPPO A93', N'Android 10', N'oppo-a93', NULL, NULL, 6490000, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [MaNhaSX], [TenSanPham], [CauHinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongBan], [TinhTrang]) VALUES (N'SP9', N'LSP01', N'NSX03', N'OPPO A94
', N'Android 11', N'oppo-a94', NULL, NULL, 7390000, 0, N'0         ')
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LoaiSanPham]    Script Date: 4/4/2021 11:35:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_LoaiSanPham] ON [dbo].[LoaiSanPham]
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_NhaSX]    Script Date: 4/4/2021 11:35:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_NhaSX] ON [dbo].[NhaSX]
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SanPham]    Script Date: 4/4/2021 11:35:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_SanPham] ON [dbo].[SanPham]
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongBan]  DEFAULT ((0)) FOR [SoLuongBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSX] FOREIGN KEY([MaNhaSX])
REFERENCES [dbo].[NhaSX] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSX]
GO
USE [master]
GO
ALTER DATABASE [wedsite banDT] SET  READ_WRITE 
GO
