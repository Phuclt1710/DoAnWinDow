USE [QL_CoffeeSunShine]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 8/3/2020 4:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [varchar](5) NOT NULL,
	[TenBan] [nvarchar](50) NOT NULL,
	[KhuVuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HangNhap]    Script Date: 8/3/2020 4:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangNhap](
	[TenHN] [nvarchar](50) NOT NULL,
	[DonViTinh] [nvarchar](10) NOT NULL,
	[SoLuong] [nvarchar](50) NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_HangNhap] PRIMARY KEY CLUSTERED 
(
	[TenHN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 8/3/2020 4:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHD] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[NgayHD] [datetime] NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[ThanhTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiTK]    Script Date: 8/3/2020 4:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTK](
	[MaLTK] [int] NOT NULL,
	[TenLTK] [nvarchar](30) NULL,
 CONSTRAINT [PK_LoaiTK] PRIMARY KEY CLUSTERED 
(
	[MaLTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/3/2020 4:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [nvarchar](30) NOT NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [varchar](12) NULL,
	[TaiKhoan] [nchar](10) NULL,
	[MatKhau] [nchar](10) NULL,
	[MaLTK] [int] NULL,
 CONSTRAINT [PK_NhanVien_1] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 8/3/2020 4:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](6) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[DonGia] [decimal](10, 0) NOT NULL,
 CONSTRAINT [PK_ThucUong] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B01', N'Bàn 01', N'Tầng 1')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B02', N'Bàn 02', N'Tầng 1')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B03', N'Bàn 03', N'Tầng 1')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B04', N'Bàn 04', N'Tầng 1')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B05 ', N'Bàn 05', N'Tầng 1')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B06', N'Bàn 06', N'Tầng 2')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B07', N'Bàn 07', N'Tầng 2')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B08', N'Bàn 08', N'Tầng 2')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B09', N'Bàn 09', N'Tầng 2')
INSERT [dbo].[Ban] ([MaBan], [TenBan], [KhuVuc]) VALUES (N'B10', N'Bàn 10', N'Tầng 2')
INSERT [dbo].[HangNhap] ([TenHN], [DonViTinh], [SoLuong], [DonGia], [TongTien]) VALUES (N'Cà phê', N'Kí', N'3', CAST(30000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)))
INSERT [dbo].[HangNhap] ([TenHN], [DonViTinh], [SoLuong], [DonGia], [TongTien]) VALUES (N'Chanh', N'Kí', N'5', CAST(15000 AS Decimal(18, 0)), CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[HangNhap] ([TenHN], [DonViTinh], [SoLuong], [DonGia], [TongTien]) VALUES (N'Sữa đặc', N'Hộp', N'4', CAST(22 AS Decimal(18, 0)), CAST(88 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonBan] ([MaHD], [MaNV], [NgayHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD001     ', N'NV002     ', CAST(N'2020-08-19 00:00:00.000' AS DateTime), N'SP91      ', 2, CAST(3 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonBan] ([MaHD], [MaNV], [NgayHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD002     ', N'NV002     ', CAST(N'2020-07-08 00:00:00.000' AS DateTime), N'Sp03      ', 5, CAST(8 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonBan] ([MaHD], [MaNV], [NgayHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD004     ', N'NV004     ', CAST(N'2020-07-30 00:00:00.000' AS DateTime), N'SP002     ', 10, CAST(30000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[LoaiTK] ([MaLTK], [TenLTK]) VALUES (1, N'Quản Lý')
INSERT [dbo].[LoaiTK] ([MaLTK], [TenLTK]) VALUES (2, N'Nhân Viên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [TaiKhoan], [MatKhau], [MaLTK]) VALUES (N'NV001', N'Nguyễn Văn Ca', 1, CAST(N'1995-07-01 00:00:00.000' AS DateTime), N'Bình Dương', N'0913131788', N'a         ', N'a         ', 1)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [TaiKhoan], [MatKhau], [MaLTK]) VALUES (N'NV002', N'Đinh Thị Thúy Oanh', 0, CAST(N'2000-08-03 00:00:00.000' AS DateTime), N'Campuchia', N'0954785120', N'b         ', N'b         ', 2)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [TaiKhoan], [MatKhau], [MaLTK]) VALUES (N'NV003', N'Bùi Duy Anh', 1, CAST(N'1999-03-24 00:00:00.000' AS DateTime), N'Bình Định', N'0386221091', N'c         ', N'c         ', 2)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [TaiKhoan], [MatKhau], [MaLTK]) VALUES (N'NV004', N'Nguyễn Mai An', 0, CAST(N'2001-06-20 00:00:00.000' AS DateTime), N'Bình Phước', N'0978997394', N'd         ', N'd         ', 2)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [TaiKhoan], [MatKhau], [MaLTK]) VALUES (N'NV005', N'Trần Tuấn Vũ ', 1, CAST(N'2000-02-03 00:00:00.000' AS DateTime), N'Bình Dương', N'0744628462', N'e         ', N'e         ', 2)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [TaiKhoan], [MatKhau], [MaLTK]) VALUES (N'NV006', N'David', 0, CAST(N'2000-02-17 00:00:00.000' AS DateTime), N'bd', N'073298532', NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'A001', N'CÀ PHÊ ÐÁ', CAST(18000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'A002', N'CÀ PHÊ SỮA', CAST(20000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'A003', N'CÀ PHÊ SỮA ĐẶC BIỆT', CAST(25000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'A004', N'BẠC XỈU', CAST(20000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'A005', N'BAC XIU ÐAC BIÊT', CAST(25000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'B001', N'SINH TỐ DÂU', CAST(35000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'B002', N'SINH TỐ NHO ÐEN', CAST(35000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'B003', N'SINH TỐ VIỆT QUẤT', CAST(35000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'B004', N'SINH TỐ PHÚC BỒN TỬ', CAST(35000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'B005', N'SINH TỐ XOÀI', CAST(39000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'B006', N'SINH TỐ DÂU TẰM', CAST(25000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'E001', N'SODA LUCKY BLUE', CAST(29000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'E002', N'SODA NHIỆT ĐỚI', CAST(35000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'F001', N'YOGURT DRAGON FRUIT', CAST(35000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'F002', N'YOGURT BLUEBERRY', CAST(35000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'F003', N'SNOW YOGURT  ', CAST(35000 AS Decimal(10, 0)))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia]) VALUES (N'F004', N'MANGO FREEZE', CAST(35000 AS Decimal(10, 0)))
