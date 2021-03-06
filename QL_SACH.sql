create database [QL_SACH]
USE [QL_SACH]
GO
/****** Object:  Table [dbo].[CHITIETHD]    Script Date: 29-12-2020 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHD](
	[SOHD] [int] NOT NULL,
	[MASACH] [int] NOT NULL,
	[SL] [int] NULL,
	[GIA] [float] NULL,
	[THANHTIEN] [float] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[SOHD] ASC,
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[BANNER](
	[MABANNER] [int] IDENTITY(1,1) NOT NULL,
	[HINH] [varchar](100) NULL,
 CONSTRAINT [PK_BANNER] PRIMARY KEY CLUSTERED 
(
	[MABANNER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETPN]    Script Date: 29-12-2020 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPN](
	[MAPN] [int] NOT NULL,
	[MASACH] [int] NOT NULL,
	[SL] [int] NULL,
	[GIANHAP] [float] NULL,
	[THANHTIEN] [float] NULL,
 CONSTRAINT [PK_CTPN] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC,
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 29-12-2020 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[QUYEN] [int] NOT NULL,
	[TENCHUCVU] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[QUYEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 29-12-2020 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[SOHD] [int] IDENTITY(1,1) NOT NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[THANHTIEN] [float] NULL,
	[GIAMGIA] [float] NULL,
	[TONGTIEN] [float] NULL,
	[MAND] [int] NULL,
	[TINHTRANG] [int] NULL,
	[DIACHIGIAO] [nvarchar](max) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[SOHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 29-12-2020 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].NGUOIDUNG(
	[MAND] [int] IDENTITY(1,1) NOT NULL,
	[TENND] [nvarchar](50) NULL,
	[NGAYSINH] [date] NULL,
	[USERNAME] [varchar](50) NULL,
	[PASS] [varchar](50) NULL,
	[QUYEN] [int] NULL,
	[DIACHI] [nvarchar](100) NULL,
	[SDT] [char](10) NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

GO
SET IDENTITY_INSERT [dbo].[BANNER] ON 

INSERT [dbo].[BANNER] ([MABANNER], [HINH]) VALUES (1, N'1.jpg')
INSERT [dbo].[BANNER] ([MABANNER], [HINH]) VALUES (2, N'2.jpg')
INSERT [dbo].[BANNER] ([MABANNER], [HINH]) VALUES (3, N'3.jpg')
SET IDENTITY_INSERT [dbo].[BANNER] OFF
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 29-12-2020 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MANXB] [int] IDENTITY(1,1) NOT NULL,
	[TENNXB] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[SDT] [char](10) NULL,
	[HINHNXB] [varchar](100) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[MANXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 29-12-2020 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [int] IDENTITY(1,1) NOT NULL,
	[TONGTIEN] [float] NULL,
	[MANXB] [int] NULL,
	[NGAYNHAP] [datetime] NULL,
 CONSTRAINT [PK_PN] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 12/29/2020 11:09:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACH](
	[MASACH] [int] IDENTITY(1,1) NOT NULL,
	[MATHELOAI] [int] NULL,
	[TENSACH] [nvarchar](100) NULL,
	[HINH] [varchar](100) NULL,
	[MATACGIA] [int] NULL,
	[GIABAN] [float] NULL,
	[GIAMGIA] [float] NULL,
	[THANHTIEN] [float] NULL,
	[SOLUONG] [int] NULL,
	[MOTA] [nvarchar](4000) NULL,
	[TINHTRANG] [nvarchar](10) NULL,
	[MANXB] [int] NULL,
	[MOI] [int] NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 12/29/2020 11:09:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MATG] [int] IDENTITY(1,1) NOT NULL,
	[TENTG] [nvarchar](100) NULL,
	[HINHTG] [varchar](50) NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[MATG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 12/29/2020 11:09:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MATHELOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENTHELOAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[MATHELOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (1, 3, 1, 126000, NULL)
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (10, 1, 1, 71200, 71200)
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (11, 1, 1, 71200, 71200)
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (12, 1, 1, 71200, 71200)
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (13, 1, 1, 71200, 71200)
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (14, 1, 1, 71200, 71200)
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (15, 3, 1, 126000, 126000)
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (16, 3, 1, 126000, 126000)
INSERT [dbo].[CHITIETHD] ([SOHD], [MASACH], [SL], [GIA], [THANHTIEN]) VALUES (17, 3, 1, 126000, 126000)
INSERT [dbo].[CHUCVU] ([QUYEN], [TENCHUCVU]) VALUES (1, N'Nhân Viên')
INSERT [dbo].[CHUCVU] ([QUYEN], [TENCHUCVU]) VALUES (2, N'Khách Hàng')
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (1, CAST(0x0000ACA00013E074 AS DateTime), CAST(0x0000ACA000000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (3, CAST(0x0000ACA0001ADDFE AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (4, CAST(0x0000ACA0001B42AB AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (9, CAST(0x0000ACA0001E5424 AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (10, CAST(0x0000ACA0001EA9C9 AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (11, CAST(0x0000ACA0001EF7B6 AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (12, CAST(0x0000ACA0001F3FAB AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (13, CAST(0x0000ACA0001F6E45 AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (14, CAST(0x0000ACA0001F7902 AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (15, CAST(0x0000ACA00020226C AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (16, CAST(0x0000ACA00020A469 AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[HOADON] ([SOHD], [NGAYDAT], [NGAYGIAO], [THANHTIEN], [GIAMGIA], [TONGTIEN], [MAND], [TINHTRANG], [DIACHIGIAO]) VALUES (17, CAST(0x0000ACA00026E5F4 AS DateTime), CAST(0x0000ACA100000000 AS DateTime), NULL, NULL, NULL, 1, 0, N'Bình Tân')
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 

INSERT [dbo].[NGUOIDUNG] ([MAND], [TENND], [NGAYSINH], [USERNAME], [PASS], [QUYEN], [DIACHI], [SDT], [GIOITINH], [EMAIL]) VALUES (1, N'Đặng Hoàng Cẩm My', CAST(0xA9240B00 AS Date), N'my', N'my', 1, NULL, NULL, N'Nữ', N'my@gmail.com')
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] ON 

INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI], [SDT], [HINHNXB]) VALUES (1, N'Nhà Xuất Bản Trẻ', N'161B Lý Chính Thắng, Phường 7, Quận 3, Thành phố Hồ Chí Minh.', N'39 317 849', N'nxbtre.jfif')
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI], [SDT], [HINHNXB]) VALUES (2, N'Kim Đồng', N'55 Quang Trung, Hai Bà Trưng, Hà Nội', N'39 434 730', N'nxbkimdong.png')
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI], [SDT], [HINHNXB]) VALUES (3, N'NXB Tổng hợp TPHCM', N'62 Nguyễn Thị Minh Khai, Phường Đa Kao, Quận 1, TP.HCM', N'38 225 340', N'nxbtphcm.jfif')
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI], [SDT], [HINHNXB]) VALUES (4, N'NXB Giáo dục', N'81 Trần Hưng Đạo, Hà Nội', N'38 220 801', N'nxbgd.png')
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI], [SDT], [HINHNXB]) VALUES (5, N'NXB Hội Nhà văn', N'Số 65 Nguyễn Du, Hà Nội', N'38 222 135', N'nxbhoinv.jfif')
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] OFF
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (1, 3, N'Đừng Cúi Đầu Mà Khóc, Hãy Ngẩng Đầu Mà Đi', N'dungcuoidaumakhoc.jpg', 3, 89000, 20, 71200, 20, N'Tiến về phía trước đi, thế giới này không quan tâm đến sự yếu đuối của bạn đâu!', N'Còn', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (2, 3, N'Trời Sinh Vụng Về, Hãy Bù Đắp Bằng Sự Kiên Trì', N'troisinhvungve.jpg', 3, 103200, 15, 87720, 20, N'Hãy cứ nỗ lực như thế nhé. \nNgày tháng về sau, mong sao bạn và tôi ngày càng có thể sống là chính mình', N'Còn', 2, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (3, 2, N'Chuyện tình những nhà soạn nhạc thiên tài', N'chuyentinhnhungnhasoannhacthientai.jpg', 9, 168000, 25, 126000, 20, N'“Muôn kiếp nhân sinh” là một bức tranh lớn với vô vàn mảnh ghép cuộc đời, là một cuốn phim đồ sộ, sống động về những kiếp sống huyền bí, trải dài từ nền văn minh Atlantis hùng mạnh đến vương quốc Ai Cập cổ đại của các Pharaoh quyền uy, đến Hợp Chủng Quốc Hoa Kỳ ngày nay.', N'Còn', 5, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (4, 5, N'Muôn Kiếp Nhân Sinh', N'muonkiepnhansinh.jpg', 15, 168000, 0, 168000, 20, N'“Quyển sách viết về những câu chuyện tình của các nhà soạn nhạc thiên tài: Lugwig van Beethoven, Frederic Franois Chopin, Robert Schumann, Felix Mendelssohn, Franz Liszt, Wilhelm Richard Wagner, Wolfgang Amadeus Mozart. Quyển sách chỉ vỏn vẹn 7 chương, mỗi chương dành riêng cho 1 nhà soạn nhạc thiên tài. Tình yêu vốn dĩ là chất xúc tác không thể thiếu của những nhà soạn nhạc, với tình yêu mang lại nhiều cảm xúc cho ra những bản nhạc bất hủ.', N'Còn', 3, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (5, 4, N'Đường Về Nhà', N'duongvenha.jpg', 14, 168000, 0, 168000, 20, N'Cũng chẳng có gì đâu. Chỉ là chuyện một cô gái trẻ quyết định năm nay không về nhà ăn Tết bằng cách thông thường nữa. Nhà cô cách trường 3.395 km. Cô đạp xe từ mùa đông Bắc Kinh cóng buốt về mùa xuân Hà Nội ẩm ướt. Dưới cái lạnh âm độ C, dưới mưa tuyết, dưới sương mù dày đặc, cô đạp xe dọc theo những đường nội hạt, đường vành đai, đường quốc lộ, đường đồi núi cheo leo, đêm tối ngủ nhờ dưới mái nhà của những con người hào hiệp hoặc trong một nhà trọ tồi tàn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (6, 6, N'Ngân hàng đột phá', N'nganhangdotpha.jpg', 20, 170000, 0, 170000, 20, N'Cuốn sách này không chỉ đơn thuần là bảng tóm tắt những cuộc phỏng vấn; mà còn thể hiện nhiều phân tích với các mô hình kinh doanh đang thành công, các khái niệm, cách tiếp cận và hướng xậy dựng từ góc nhìn chiến lược dựa trên công nghệ và những thành tựu - từ góc nhìn về những thành công và cả những thất bại. Quan trọng hơn nữa, chúng ta sẽ phân tích những điều mà các ngân hàng truyền thống có thể học hỏi được từ những nhà kiến tạo trong công cuộc tiên phong cho những dự án hay kế hoạch đột phá , và cả những rủi ro học có thể gặp phải nếu như không chịu lắng nghe và học hỏi. Những cuộc phỏng vấn
này đều rất sâu sắc và có khả năng dẫn dắt chúng ta theo những đường hướng mới. Chúng đồng thời cũng cho chúng ta những ví dụ thực tiễn về một số kỹ thuật và mô hình kinh doanh có khả năng tái định hình ngành ngân hàng trong vòng 20-30 năm sắp tới. Những dữ liệu thu thập được xung quanh các bài phỏng vấn và khái niệm này được xây dựng để giúp độc giả hiểu sâu sắc hơn về các mô hình và đưa ra những dẫn chứng thống kê và số liệu bổ trợ cho nhiều chiến lược.

 ', N'Còn', 2, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (7, 6, N'Bank 3.0 tương lai của ngân hàng trong kỷ nguyên số', N'nganhangkynguyenso.jpg', 20, 85000, 0, 85000, 20, N'Bank 3.0 - Tương Lai Của Ngân Hàng Trong Kỷ Nguyên Số Trong vòng 10 năm tới đây, chuyên gia tư vấn tài chính Brett King đã có dự đoán về tương lai của ngành ngân hàng: - Các chi nhánh ngân hàng sẽ biến mất vì chúng ngày càng phiền phức và kém hấp dẫn hơn. Khách hàng vẫn hoàn toàn có thể thao tác nhanh chóng trên không gian kỹ thuật số. - Website, điện thoại di động và máy tính bảng sẽ là nguồn doanh thu lớn nhất của ngành ngân hàng bán lẻ thay vì là một “mối đe dọa” về bảo mật như trước đây. - ATM sẽ chỉ còn chức năng chuyên biệt duy nhất là “rút tiền mặt” mà thôi. Mọi thao tác khác đã có thiết bị di động lo. Khi thẻ ghi nợ cùng với điện thoại gắn ứng dụng và các hệ thống POS cho phép chúng ta thanh toán bằng thiết bị di động, những chiếc thẻ nhựa của ngày hôm nay sẽ trôi vào dĩ vãng. Liệu phiên bản “Bank 3.0” với sự lên ngôi của các thiết bị di động và kỹ thuật số có thực sự tối ưu. Hãy theo dõi những lập luận, phân tích và dẫn chứng mà Brett King đưa ra nhằm mở ra trước mắt người đọc tương lai của ngân hàng trong kỷ nguyên số. Cuốn sách thực sự hữu ích cho những người quan tâm tới lĩnh vực tài chính, ngân hàng và muốn đón đầu những xu hướng tương lai trong ngành này.', N'Còn', 4, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (8, 6, N'Bitcoin', N'bitcoins.jpg', 21, 215000, 0, 215000, 20, N'Tiền điện tử, với đại diện tiêu biểu nhất là Bitcoin, đang là mối quan tâm hàng đầu của giới tài chính toàn cầu. Khả năng thanh toán bằng tiền điện tử mở ra hàng loạt tiềm năng cho thương mại và thay đổi toàn diện thói quen tiêu dùng của con người. Hạt nhân của công nghệ hứa hẹn rung chuyển thế giới này được gọi là Blockchain. Blockchain được giới công nghệ đánh giá là phát kiến vĩ đại nhất sau khi mạng Internet ra đời. Ứng dụng phổ biến nhất của nó là các loại tiền điện tử nổi tiếng (Bitcoin, Ethereum, Ripple...) đang làm mưa làm gió trên thị trường. Nhưng nghịch lý là, lại rất ít người nắm được bản chất của tiền điện tử và Blockchain. Rốt cuộc, Blockchain là gì? Nó hoạt động như thế nào? Blockchain thật sự là một đột phá trong công nghệ hay chỉ là một trào lưu nhất thời? Blockchain có liên hệ như thế nào với Bitcoin? Liệu Blockchain có nắm giữ tiềm năng thay đổi thế giới?... Thực chất, những bài viết cung cấp thông tin về Blockchain và tiền điện tử không thiếu trên các website hay mạng xã hội, nhưng lại chưa đủ tính bao quát và còn khó tiếp thu. Đó là lý do cuốn sách “BLOCKCHAIN: Bản chất của Blockchain, Bitcoin, tiền điện tử, hợp đồng thông minh và tương lai của tiền tệ” của Mark Gates ra đời. Gates cung cấp một bản tóm lược dễ hiểu nhất, cung cấp nền tảng thiết yếu cho những người mới bắt đầu và cả những ai muốn nghiên cứu sâu hơn về công nghệ Blockchain và tiền điện tử. Đọc cuốn sách này, bạn sẽ hiểu được Blockchain dưới nhiều khía cạnh, trong đó không chỉ có những lời ngợi khen mà còn không thiếu các chỉ trích, bình luận trái chiều.', N'Còn', 2, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (9, 6, N'Cẩm nang quản trị rủi ro trong kinh doanh ngân hàng', N'quantriruiro.jpg', 22, 73500, 0, 73500, 20, N' 

Trong nền kinh tế thị trường, hệ thống ngân hàng được ví như hệ thần kinh của nền kinh tế . Hệ thống ngân hàng quốc gia hoạt động thông suốt, lành mạnh và hiệu quả là tiền đề để các nguồn lực tài chính luân chuyển, phân bổ và sử dụng hiệu quả, kích thích tăng trưởng kinh tế, ổn định giá trị đồng tiền và tạo công ăn việc làm.

 

Tuy nhiên, trong nền kinh tế thị trường, rủi ro là không thể tránh khỏi, mà đặc biệt là rủi ro trong kinh doanh ngân hàng  có phản ứng dây chuyền, lây lan và ngày càng có biểu hiện phức tạp. Sự sụp đổ của ngân hàng ảnh hưởng tiêu cực đến toàn bộ đời sống kinh tế, chính trị, xã hội của một nước và có thể lan rộng sang quy mô quốc tế. Vì vậy, việc trang bị kiến thức về nghiệp vụ kinh doanh và quản trị ngân hàng, mà trọng tâm là quản trị rủi ro trở nên cần thiết.

 

Quản trị ngân hàng thương mại, với trọng tâm là quản trị rủi ro, là một lĩnh vực vừa mang tính học thuật, vừa mang tính thực tiễn và vừa là nghệ thuật quản lý. Kiến thức quản trị ngân hàng thương mại không những cần được trang bị cho sinh viên, học viên cao học, nghiên cứu sinh, mà còn thiết thực đối với nhà quản trị Tài chính – Ngân hàng.', N'Còn', 5, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (10, 6, N'Quản trị rủi ro trong ngân hành kinh tế toàn cầu', N'quantriruiro.jpg', 23, 145000, 0, 145000, 20, N' 

Trong nền kinh tế thị trường, hệ thống ngân hàng được ví như hệ thần kinh của nền kinh tế . Hệ thống ngân hàng quốc gia hoạt động thông suốt, lành mạnh và hiệu quả là tiền đề để các nguồn lực tài chính luân chuyển, phân bổ và sử dụng hiệu quả, kích thích tăng trưởng kinh tế, ổn định giá trị đồng tiền và tạo công ăn việc làm.

 

Tuy nhiên, trong nền kinh tế thị trường, rủi ro là không thể tránh khỏi, mà đặc biệt là rủi ro trong kinh doanh ngân hàng  có phản ứng dây chuyền, lây lan và ngày càng có biểu hiện phức tạp. Sự sụp đổ của ngân hàng ảnh hưởng tiêu cực đến toàn bộ đời sống kinh tế, chính trị, xã hội của một nước và có thể lan rộng sang quy mô quốc tế. Vì vậy, việc trang bị kiến thức về nghiệp vụ kinh doanh và quản trị ngân hàng, mà trọng tâm là quản trị rủi ro trở nên cần thiết.

 

Quản trị ngân hàng thương mại, với trọng tâm là quản trị rủi ro, là một lĩnh vực vừa mang tính học thuật, vừa mang tính thực tiễn và vừa là nghệ thuật quản lý. Kiến thức quản trị ngân hàng thương mại không những cần được trang bị cho sinh viên, học viên cao học, nghiên cứu sinh, mà còn thiết thực đối với nhà quản trị Tài chính – Ngân hàng.', N'CÒn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (11, 6, N'Ngân hàng trung ương các vai trò và nghiệp vụ', N'nganhangtrunguong.jpg', 23, 45000, 0, 45000, 20, N'Trong đời sống kinh tế phức tạp và đa dạng như hiện nay, hay chính xác hơn, kể từ cuối thập niên 1960, Ngân hàng Trung Ương của bất cứ quốc gia nào đều trở thành một định chế rất quan trọng có nhiệm vụ định hướng và điều tiết kinh tế quốc gia. Đối với hoạt động của ngân hàng trung ương, điều tiết kinh tế có nghĩa là việc điều chỉnh cung ứng tiền (money supply regulation) vì số lượng cung ứng tiền gây tác động mạnh, toàn diện đến sản phẩm, trao đổi và thu nhập trong nền kinh tế, tức đã thực sự điều tiết kinh tế vĩ mô. Tất cả ngân hàng trung ương của các nước trên thế giới hiện nay (tất nhiên kể cả Việt Nam) đều có cùng các mục tiêu khá giống nhau trong việc thiết lập chính sách tiền tệ và điều tiết việc cung ứng cho hoạt động kinh tế...', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (12, 16, N'Xét nghiệm sử dụng trong lâm sàng', N'xetnghiemlamsang', 24, 147300, 0, 147300, 20, N'Những năm qua, với sự bùng nổ về tiến bộ khoa học kỹ thuật, nền y học thế giới và trong nước càng phát triển mạnh, chúng tôi thấy có thêm một số thông tin mới cần được đưa vào tài liệu. Theo yêu cầu của nhiều bạn đọc và Nhà xuất bản Y học; đổng thời cũng là nguyện vọng của chúng tôi luôn luôn mong muốn tài liệu được cập nhạt, cuốn sách lại được tiếp tục chỉnh lý và bổ sung để tái bản.

Ngoài đối tượng chủ yếu là các thầy thuốc lâm sàng, tài liệu còn có thể được dùng cho các sinh viên y, dược khoa, học viên các trường trung học y tế và làm tài liệu tham khảo cho cán bộ làm công tác xét nghiệm. Với các đối tượng như vậy, tài liệu được biên soạn nhằm giới thiệu tất cả các xét nghiệm cần thiết cho việc chẩn đoán lâm sàng, nghiên cứu y học, chủ yếu chú trọng về cách phân tích các kết quả, cách sử dụng các xét nghiệm thế nào cho đúng và hợp lý.', N'Còn', 4, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (13, 2, N'Đường ngược chiều ', N'duongnguocchieu.jpg', 27, 89000, 30, 62300, 20, N'Thầy Thanh hỏi tôi: “Yến không đi học gì à?”. 
Tôi thưa: “Dạ không thầy, bố mẹ không cho em đi học”. 
Thầy lại nói tiếp: “Cứ mãi không đi học bao giờ mới thoát nghèo em? Bố mẹ cả đời vất vả rồi, em không đi học sau lại vất vả như bố mẹ”. 
Tôi giả vờ quay mặt đi để gạt nước mắt, tôi là đứa hay khóc, nhưng tôi tự thấy tôi kiên cường. 
Thầy Thanh lại hỏi: “Thế bây giờ em còn muốn đi học nữa không?”. 
Câu hỏi của thầy chạm vào đúng vết thương lâu năm đang chờ ngày bưng mủ. Tôi như ngậm nguyên một ngụm nước mắt trong miệng, ngập ngừng một lúc lâu, gắng kìm cảm xúc xuống, tôi mới dám trả lời thầy: “Dạ em có ạ, nhưng nhà em nghèo, bố mẹ không nuôi được em đi học nên thôi thầy ạ”. 
Thầy im lặng một lúc lâu rồi an ủi: “Ừ, thế cố gắng em nhé!”.', N'Còn', 4, 1)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (14, 16, N'4, 5, 6 Nhật ký học làm bánh tập 1', N'nhatkyhoclambanh.jpg', 26, 93000, 15, 79050, 20, N'Nhật kí học làm bánh không chỉ đơn thuần là một tập hợp các công thức bánh trái. Nó trước hết là một quyển nhật kí về chặng đường tự vật lộn với bột, bơ, đường, trứng, sữa của một cô nàng không có nhiều kinh nghiệm bếp núc và hoàn toàn chẳng có hoa tay nào cả.

Trong chặng đường học làm bánh gập ghềnh, nhiều thất bại, cô nàng ấy luôn thầm mong có một cuốn sách chỉ dẫn tỉ mỉ hơn cho những người mới bắt đầu như mình. Công thức rất dễ tìm, nhưng bắt tay vào làm, cô mới nhận ra rằng với kẻ còn bỡ ngỡ, chúng sơ sài làm sao. Vậy nên, vừa mày mò học hỏi, Linh Trang vừa soạn luôn cuốn sách mình hằng mơ ước, cho những người mới sau này, với hy vọng cuốn sách ấy sẽ giúp chặng đường của những người bạn trong bếp bánh suôn sẻ hơn.', N'Còn', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (15, 16, N'4, 5, 6 Nhật ký học làm bánh tập ', N'nhatkyhoclambanh.jpg', 26, 93000, 15, 79050, 20, N'Nhật kí học làm bánh không chỉ đơn thuần là một tập hợp các công thức bánh trái. Nó trước hết là một quyển nhật kí về chặng đường tự vật lộn với bột, bơ, đường, trứng, sữa của một cô nàng không có nhiều kinh nghiệm bếp núc và hoàn toàn chẳng có hoa tay nào cả.

Trong chặng đường học làm bánh gập ghềnh, nhiều thất bại, cô nàng ấy luôn thầm mong có một cuốn sách chỉ dẫn tỉ mỉ hơn cho những người mới bắt đầu như mình. Công thức rất dễ tìm, nhưng bắt tay vào làm, cô mới nhận ra rằng với kẻ còn bỡ ngỡ, chúng sơ sài làm sao. Vậy nên, vừa mày mò học hỏi, Linh Trang vừa soạn luôn cuốn sách mình hằng mơ ước, cho những người mới sau này, với hy vọng cuốn sách ấy sẽ giúp chặng đường của những người bạn trong bếp bánh suôn sẻ hơn.', N'Còn', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (16, 16, N'4, 5, 6 Nhật ký học làm bánh tập 3', N'nhatkyhoclambanh.jpg', 26, 93000, 15, 79050, 20, N'Nhật kí học làm bánh không chỉ đơn thuần là một tập hợp các công thức bánh trái. Nó trước hết là một quyển nhật kí về chặng đường tự vật lộn với bột, bơ, đường, trứng, sữa của một cô nàng không có nhiều kinh nghiệm bếp núc và hoàn toàn chẳng có hoa tay nào cả.

Trong chặng đường học làm bánh gập ghềnh, nhiều thất bại, cô nàng ấy luôn thầm mong có một cuốn sách chỉ dẫn tỉ mỉ hơn cho những người mới bắt đầu như mình. Công thức rất dễ tìm, nhưng bắt tay vào làm, cô mới nhận ra rằng với kẻ còn bỡ ngỡ, chúng sơ sài làm sao. Vậy nên, vừa mày mò học hỏi, Linh Trang vừa soạn luôn cuốn sách mình hằng mơ ước, cho những người mới sau này, với hy vọng cuốn sách ấy sẽ giúp chặng đường của những người bạn trong bếp bánh suôn sẻ hơn.', N'Còn', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (18, 16, N'4, 5, 6 Nhật ký học làm bánh tập 4', N'nhatkyhoclambanh.jpg', 26, 93000, 15, 79050, 20, N'Nhật kí học làm bánh không chỉ đơn thuần là một tập hợp các công thức bánh trái. Nó trước hết là một quyển nhật kí về chặng đường tự vật lộn với bột, bơ, đường, trứng, sữa của một cô nàng không có nhiều kinh nghiệm bếp núc và hoàn toàn chẳng có hoa tay nào cả.

Trong chặng đường học làm bánh gập ghềnh, nhiều thất bại, cô nàng ấy luôn thầm mong có một cuốn sách chỉ dẫn tỉ mỉ hơn cho những người mới bắt đầu như mình. Công thức rất dễ tìm, nhưng bắt tay vào làm, cô mới nhận ra rằng với kẻ còn bỡ ngỡ, chúng sơ sài làm sao. Vậy nên, vừa mày mò học hỏi, Linh Trang vừa soạn luôn cuốn sách mình hằng mơ ước, cho những người mới sau này, với hy vọng cuốn sách ấy sẽ giúp chặng đường của những người bạn trong bếp bánh suôn sẻ hơn.', N'Còn', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (19, 16, N'4, 5, 6 Nhật ký học làm bánh tập 5', N'nhatkyhoclambanh.jpg', 26, 93000, 15, 79050, 20, N'Nhật kí học làm bánh không chỉ đơn thuần là một tập hợp các công thức bánh trái. Nó trước hết là một quyển nhật kí về chặng đường tự vật lộn với bột, bơ, đường, trứng, sữa của một cô nàng không có nhiều kinh nghiệm bếp núc và hoàn toàn chẳng có hoa tay nào cả.

Trong chặng đường học làm bánh gập ghềnh, nhiều thất bại, cô nàng ấy luôn thầm mong có một cuốn sách chỉ dẫn tỉ mỉ hơn cho những người mới bắt đầu như mình. Công thức rất dễ tìm, nhưng bắt tay vào làm, cô mới nhận ra rằng với kẻ còn bỡ ngỡ, chúng sơ sài làm sao. Vậy nên, vừa mày mò học hỏi, Linh Trang vừa soạn luôn cuốn sách mình hằng mơ ước, cho những người mới sau này, với hy vọng cuốn sách ấy sẽ giúp chặng đường của những người bạn trong bếp bánh suôn sẻ hơn.', N'Còn', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (20, 1, N'Doraemon Truyện Dài - Tập 1 - Chú Khủng Long Của Nobita', N'doraemon1.jpg', 9, 18000, 10, 16200, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (21, 1, N'
Doraemon Tập 2: Nobita Và Lịch Sử Khai Phá Vũ Trụ', N'doraemon2.jpg', 9, 18000, 10, 16200, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (22, 1, N'
Doraemon Truyện Dài - Tập 3 - Nobita Thám Hiểm Vùng Đất Mới', N'doraemon3.jpg', 9, 18000, 10, 16200, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (23, 1, N'Doraemon Truyện Dài - Tập 4 - Nobita Và Lâu Đài Dưới Đáy Biển', N'doraemon4.jpg', 9, 16200, 10, 14580, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (24, 1, N'Doraemon Truyện Dài - Tập 5 - Nobita Và Chuyến Lưu Vào Xứ Quỷ', N'doraemon5.jpg', 9, 18000, 10, 16200, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (25, 1, N'
Doraemon Tập 6: Nobita Và Cuộc Chiến Vũ Trụ', N'doraemon6.jpg', 9, 18000, 10, 16200, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (26, 1, N'
Doraemon Truyện Dài - Tập 7 - Nobita Và Binh Đoàn Người Sắt', N'doraemon7.jpg', 9, 18000, 10, 16200, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (27, 1, N'Doraemon Truyện Dài - Tập 8 - Nobita Và Hiệp Sĩ Rồng', N'doraemon8.jpg', 9, 18000, 10, 16200, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
INSERT [dbo].[SACH] ([MASACH], [MATHELOAI], [TENSACH], [HINH], [MATACGIA], [GIABAN], [GIAMGIA], [THANHTIEN], [SOLUONG], [MOTA], [TINHTRANG], [MANXB], [MOI]) VALUES (28, 1, N'Doraemon Truyện Dài - Tập 9 - Nobita Và Nước Nhật Thời Nguyên Thủy', N'doraemon9.jpg', 9, 18000, 10, 16200, 5, N'Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ. Ban đầu, chú mèo vốn dĩ thuộc sở hữu của cậu bé Sewashi, là con cháu nhiều đời sau của Nobita nhưng về sau Sewashi gửi lại cho ông Nobita của mình nhằm cải thiện cuộc sống của ông mình do Nobita là người hậu đậu, vụng về, luôn gặp trắc trở trong cuộc sống mà dẫn đến các thế hệ con cháu sau này phải sống trong cảnh nghèo khổ trong đó có Sewashi. Doraemon có một chiếc túi nhỏ trước bụng mà bên trong chứa vô vàn bảo bối tiện ích của tương lai chính vì vậy mà thường xuyên bị Nobita vòi vĩnh mượn.', N'Còn', 1, 0)
SET IDENTITY_INSERT [dbo].[SACH] OFF
SET IDENTITY_INSERT [dbo].[TACGIA] ON 

INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (1, N'Nguyễn Nhật Ánh', N'nguyennhatanh.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (2, N'Gào', N'gao.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (3, N'Helmet Trương', N'helmettruong.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (4, N'Phan Ý Yên', N'phanyyen.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (5, N'Lư Tư Hạo', N'lutuhao.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (6, N'Hạ Vũ', N'havu.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (7, N'Nguyễn Ngọc Tư', N'nguyenngoctu.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (9, N'Fujiko F Fujio', N'fujiko.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (10, N'Eiichiro Oda', N'oda.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (11, N'Gosho Aoyama', N'Gosho_Aoyama.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (12, N'Đinh Hằng', N'dinhhang.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (13, N'Đinh Phương Linh', N'dinhphuonglinh.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (14, N'Gustav Kobbe', N'kobbe.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (15, N'Rich Habits', N'richhabit')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (16, N'Hiromi Shinya', N'hiromishinya.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (17, N'Nicola Yoon', N'nicolayoon.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (18, N'J. D. Salinger', N'salinger.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (19, N'Mori Eto', N'morieto.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (20, N'Brett King', N'brettking.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (21, N'Mark Gates', N'markgate.jpg')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (22, N'Nguyễn Văn Tiến', N'nguyenvantien')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (23, N'Dương Hữu Hạnh', N'duonghuumanh')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (24, N'Nguyễn Thế Khánh', N'')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (25, N'Uỷ ban ATGTQG', NULL)
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (26, N'Ngô Thanh Hòa', N'ngothanhhoa')
INSERT [dbo].[TACGIA] ([MATG], [TENTG], [HINHTG]) VALUES (27, N'Chảo Yến', N'chaoyen.jpg')
SET IDENTITY_INSERT [dbo].[TACGIA] OFF
SET IDENTITY_INSERT [dbo].[THELOAI] ON 

INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (1, N'Truyện Tranh')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (2, N'Tiểu Thuyết')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (3, N'Tản Văn')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (4, N'Du Lịch')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (5, N'Âm Nhạc')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (6, N'Kinh Tế')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (7, N'Lịch Sử, Địa Lý')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (8, N'Chăm Sóc Sức Khỏe')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (9, N'Văn Học Nước Ngoài')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (10, N'Luật')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (11, N'Công Nghệ Thông Tin')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (12, N'Ngoại Ngữ')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (13, N'Khoa Học - Tự Nhiên')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (14, N'Nấu Ăn')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (15, N'Báo Chí')
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI]) VALUES (16, N'Y Khoa')
SET IDENTITY_INSERT [dbo].[THELOAI] OFF
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HOADON] FOREIGN KEY([SOHD])
REFERENCES [dbo].[HOADON] ([SOHD])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CTHD_HOADON]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SANPHAM] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MASACH])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CTHD_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETPN]  WITH CHECK ADD  CONSTRAINT [fk_ctpn_mapn] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CHITIETPN] CHECK CONSTRAINT [fk_ctpn_mapn]
GO
ALTER TABLE [dbo].[CHITIETPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_SACH] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MASACH])
GO
ALTER TABLE [dbo].[CHITIETPN] CHECK CONSTRAINT [FK_CTPN_SACH]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_ND] FOREIGN KEY([MAND])
REFERENCES [dbo].[NGUOIDUNG] ([MAND])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_ND]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_ND_CV] FOREIGN KEY([QUYEN])
REFERENCES [dbo].[CHUCVU] ([QUYEN])
GO
ALTER TABLE [dbo].NGUOIDUNG CHECK CONSTRAINT [FK_ND_CV]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PN_NXB] FOREIGN KEY([MANXB])
REFERENCES [dbo].[NHAXUATBAN] ([MANXB])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PN_NXB]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SP_NXB] FOREIGN KEY([MANXB])
REFERENCES [dbo].[NHAXUATBAN] ([MANXB])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SP_NXB]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SP_TG] FOREIGN KEY([MATACGIA])
REFERENCES [dbo].[TACGIA] ([MATG])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SP_TG]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SP_TL] FOREIGN KEY([MATHELOAI])
REFERENCES [dbo].[THELOAI] ([MATHELOAI])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SP_TL]
GO
/****** Object:  Trigger [dbo].[TongTien]    Script Date: 12/29/2020 11:09:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TongTien] ON [dbo].[SACH]
FOR INSERT, UPDATE
AS
BEGIN
	UPDATE dbo.SACH
	SET thanhtien = inserted.GIABAN -inserted.GIABAN*(inserted.GIAMGIA/100)
	FROM SACH ,inserted
	WHERE inserted.MASACH = SACH.MASACH
END

GO
