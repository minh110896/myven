USE [VenDatabase]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BanTinAnhs]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanTinAnhs](
	[IdAnh] [int] IDENTITY(1,1) NOT NULL,
	[BanTinId] [int] NOT NULL,
	[FileName] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.BanTinAnhs] PRIMARY KEY CLUSTERED 
(
	[IdAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BanTins]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanTins](
	[BanTinId] [int] IDENTITY(1,1) NOT NULL,
	[ThanhVienId] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThoiGian] [datetime] NOT NULL,
	[The] [nvarchar](max) NULL,
	[DiaDiemId] [int] NULL,
	[QuyenRiengTu] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.BanTins] PRIMARY KEY CLUSTERED 
(
	[BanTinId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BanTinTuKhoa]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanTinTuKhoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TuKhoaId] [int] NOT NULL,
	[BanTinId] [int] NOT NULL,
 CONSTRAINT [PK_BanTinTuKhoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuans]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuans](
	[BinhLuanId] [int] IDENTITY(1,1) NOT NULL,
	[BanTinId] [int] NOT NULL,
	[ThanhVienId] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[AnhId] [int] NULL,
	[ThoiGian] [datetime] NOT NULL,
	[DiaDiemId] [int] NULL,
 CONSTRAINT [PK_dbo.BinhLuans] PRIMARY KEY CLUSTERED 
(
	[BinhLuanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiaSes]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiaSes](
	[ChiaSeId] [int] IDENTITY(1,1) NOT NULL,
	[BanTinId] [int] NOT NULL,
	[HinhThuc] [nvarchar](max) NULL,
	[ThoiGian] [datetime] NOT NULL,
	[QuyenRiengTu] [nvarchar](max) NULL,
	[DiaDiem] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ChiaSes] PRIMARY KEY CLUSTERED 
(
	[ChiaSeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaDiems]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiems](
	[DiaDiemId] [int] IDENTITY(1,1) NOT NULL,
	[TheDiaLy] [int] NOT NULL,
	[MaDiaLy] [int] NOT NULL,
 CONSTRAINT [PK_dbo.DiaDiems] PRIMARY KEY CLUSTERED 
(
	[DiaDiemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KetBans]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetBans](
	[KetBanId] [int] IDENTITY(1,1) NOT NULL,
	[ThanhVienId] [int] NOT NULL,
	[ThoiGianKetBan] [datetime] NOT NULL,
	[ThoiGianDongY] [datetime] NOT NULL,
	[ThoiGianHuyKetBan] [datetime] NOT NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.KetBans] PRIMARY KEY CLUSTERED 
(
	[KetBanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Likes]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[LikeId] [int] IDENTITY(1,1) NOT NULL,
	[BanTinId] [int] NOT NULL,
	[ThanhVienId] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Likes] PRIMARY KEY CLUSTERED 
(
	[LikeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhoms]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhoms](
	[NhomId] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](max) NULL,
	[HinhThuc] [nvarchar](max) NULL,
	[ThanhVienId] [int] NOT NULL,
	[ThoiGianThamGia] [datetime] NOT NULL,
	[ThoiGianXacNhan] [datetime] NOT NULL,
	[ThoiGianRoi] [datetime] NOT NULL,
	[ThongBaoId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Nhoms] PRIMARY KEY CLUSTERED 
(
	[NhomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhVienNhoms]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVienNhoms](
	[ThanhVienId] [int] IDENTITY(1,1) NOT NULL,
	[NhomId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[ThoiGianXacNhan] [datetime] NOT NULL,
	[ThoiGianXoa] [datetime] NOT NULL,
	[TrangThai] [nvarchar](max) NULL,
	[ThoiGianYeuCauThamGia] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ThanhVienNhoms] PRIMARY KEY CLUSTERED 
(
	[ThanhVienId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhViens]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhViens](
	[ThanhVienId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[NgaySinh] [datetime2](7) NULL,
	[GioiTinh] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ThanhViens] PRIMARY KEY CLUSTERED 
(
	[ThanhVienId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongBaos]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBaos](
	[ThongBaoId] [int] IDENTITY(1,1) NOT NULL,
	[ThanhVienId] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[ThoiGianDaXem] [datetime] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[BinhLuanId] [int] NOT NULL,
	[BanTinId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ThongBaos] PRIMARY KEY CLUSTERED 
(
	[ThongBaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuMuc_Anh_]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuMuc_Anh_](
	[TMAnhId] [int] IDENTITY(1,1) NOT NULL,
	[TenThuMuc] [nvarchar](max) NULL,
	[ThanhVienId] [int] NOT NULL,
	[KieuDuLieu] [nvarchar](max) NULL,
	[KichThuoc] [int] NOT NULL,
	[ThuTu] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[ThuMuc] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ThuMuc_Anh_] PRIMARY KEY CLUSTERED 
(
	[TMAnhId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TuKhoas]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuKhoas](
	[TuKhoaId] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[CountView] [int] NULL,
 CONSTRAINT [PK_dbo.TuKhoas] PRIMARY KEY CLUSTERED 
(
	[TuKhoaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Nhoms] ADD  DEFAULT ((0)) FOR [ThongBaoId]
GO
ALTER TABLE [dbo].[BanTinAnhs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BanTinAnhs_dbo.BanTins_BanTinId] FOREIGN KEY([BanTinId])
REFERENCES [dbo].[BanTins] ([BanTinId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BanTinAnhs] CHECK CONSTRAINT [FK_dbo.BanTinAnhs_dbo.BanTins_BanTinId]
GO
ALTER TABLE [dbo].[BanTins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BanTins_dbo.DiaDiems_DiaDiemId] FOREIGN KEY([DiaDiemId])
REFERENCES [dbo].[DiaDiems] ([DiaDiemId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BanTins] CHECK CONSTRAINT [FK_dbo.BanTins_dbo.DiaDiems_DiaDiemId]
GO
ALTER TABLE [dbo].[BanTins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BanTins_dbo.ThanhViens_ThanhVienId] FOREIGN KEY([ThanhVienId])
REFERENCES [dbo].[ThanhViens] ([ThanhVienId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BanTins] CHECK CONSTRAINT [FK_dbo.BanTins_dbo.ThanhViens_ThanhVienId]
GO
ALTER TABLE [dbo].[BanTinTuKhoa]  WITH CHECK ADD  CONSTRAINT [FK_BanTinTuKhoa_BanTins] FOREIGN KEY([BanTinId])
REFERENCES [dbo].[BanTins] ([BanTinId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BanTinTuKhoa] CHECK CONSTRAINT [FK_BanTinTuKhoa_BanTins]
GO
ALTER TABLE [dbo].[BanTinTuKhoa]  WITH CHECK ADD  CONSTRAINT [FK_BanTinTuKhoa_TuKhoas] FOREIGN KEY([TuKhoaId])
REFERENCES [dbo].[TuKhoas] ([TuKhoaId])
GO
ALTER TABLE [dbo].[BanTinTuKhoa] CHECK CONSTRAINT [FK_BanTinTuKhoa_TuKhoas]
GO
ALTER TABLE [dbo].[BinhLuans]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BinhLuans_dbo.BanTins_BanTinId] FOREIGN KEY([BanTinId])
REFERENCES [dbo].[BanTins] ([BanTinId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuans] CHECK CONSTRAINT [FK_dbo.BinhLuans_dbo.BanTins_BanTinId]
GO
ALTER TABLE [dbo].[ChiaSes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ChiaSes_dbo.BanTins_BanTinId] FOREIGN KEY([BanTinId])
REFERENCES [dbo].[BanTins] ([BanTinId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiaSes] CHECK CONSTRAINT [FK_dbo.ChiaSes_dbo.BanTins_BanTinId]
GO
ALTER TABLE [dbo].[KetBans]  WITH CHECK ADD  CONSTRAINT [FK_dbo.KetBans_dbo.ThanhViens_ThanhVienId] FOREIGN KEY([ThanhVienId])
REFERENCES [dbo].[ThanhViens] ([ThanhVienId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KetBans] CHECK CONSTRAINT [FK_dbo.KetBans_dbo.ThanhViens_ThanhVienId]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Likes_dbo.BanTins_BanTinId] FOREIGN KEY([BanTinId])
REFERENCES [dbo].[BanTins] ([BanTinId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_dbo.Likes_dbo.BanTins_BanTinId]
GO
ALTER TABLE [dbo].[Nhoms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Nhoms_dbo.ThongBaos_ThongBaoId] FOREIGN KEY([ThongBaoId])
REFERENCES [dbo].[ThongBaos] ([ThongBaoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nhoms] CHECK CONSTRAINT [FK_dbo.Nhoms_dbo.ThongBaos_ThongBaoId]
GO
ALTER TABLE [dbo].[ThanhVienNhoms]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ThanhVienNhoms_dbo.Nhoms_NhomId] FOREIGN KEY([NhomId])
REFERENCES [dbo].[Nhoms] ([NhomId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThanhVienNhoms] CHECK CONSTRAINT [FK_dbo.ThanhVienNhoms_dbo.Nhoms_NhomId]
GO
ALTER TABLE [dbo].[ThongBaos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ThongBaos_dbo.ThanhViens_ThanhVienId] FOREIGN KEY([ThanhVienId])
REFERENCES [dbo].[ThanhViens] ([ThanhVienId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongBaos] CHECK CONSTRAINT [FK_dbo.ThongBaos_dbo.ThanhViens_ThanhVienId]
GO
ALTER TABLE [dbo].[ThuMuc_Anh_]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ThuMuc_Anh__dbo.ThanhViens_ThanhVienId] FOREIGN KEY([ThanhVienId])
REFERENCES [dbo].[ThanhViens] ([ThanhVienId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThuMuc_Anh_] CHECK CONSTRAINT [FK_dbo.ThuMuc_Anh__dbo.ThanhViens_ThanhVienId]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ThanhViens_Login]    Script Date: 6/11/2018 1:02:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_ThanhViens_Login]
@Email nvarchar(MAX),
@Password nvarchar(MAX)

as
begin 
    declare @count int 
	declare @res bit 
	select @count = COUNT(*) from ThanhViens where Email= @Email and Password = @Password
	if @count >0 
	   set @res=1 
	else 
	   set @res= 0
	select @res
end



GO
