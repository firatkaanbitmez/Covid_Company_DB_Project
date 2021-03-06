USE [CovidDB]
GO
/****** Object:  Table [dbo].[ASI_LISTESI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASI_LISTESI](
	[ASI_ID] [int] IDENTITY(1,1) NOT NULL,
	[ASI_ADI] [nvarchar](150) NULL,
 CONSTRAINT [PK_ASI_LISTESI] PRIMARY KEY CLUSTERED 
(
	[ASI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOLUM_TIPLERI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOLUM_TIPLERI](
	[BOLUM_TIP_ID] [int] IDENTITY(1,1) NOT NULL,
	[BOLUM_TIP_ADI] [nvarchar](50) NULL,
 CONSTRAINT [PK_BOLUM_TIPLERI] PRIMARY KEY CLUSTERED 
(
	[BOLUM_TIP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COVID_GECMISI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COVID_GECMISI](
	[COV_GEC_ID] [int] IDENTITY(1,1) NOT NULL,
	[COV_GEC_PER_ID] [int] NULL,
	[COV_GEC_POZITIF_TAR] [datetime] NULL,
	[COV_GEC_NEGATIF_TARIH] [datetime] NULL,
 CONSTRAINT [PK_COVID] PRIMARY KEY CLUSTERED 
(
	[COV_GEC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COVID_SEMPTOMLARI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COVID_SEMPTOMLARI](
	[COV_SEMP_ID] [int] IDENTITY(1,1) NOT NULL,
	[COV_GEC_ID] [int] NULL,
	[SEMPTOM_ID] [int] NULL,
 CONSTRAINT [PK_COVID_SEMPTOMLARI] PRIMARY KEY CLUSTERED 
(
	[COV_SEMP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COVID_TEMASLILARI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COVID_TEMASLILARI](
	[TEMAS_ID] [int] IDENTITY(1,1) NOT NULL,
	[COV_ID] [int] NULL,
	[PER_ID] [int] NULL,
 CONSTRAINT [PK_COVID_TEMASLILARI] PRIMARY KEY CLUSTERED 
(
	[TEMAS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HASTALIK_SEMPTOMLARI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HASTALIK_SEMPTOMLARI](
	[HAS_SEMP_ID] [int] IDENTITY(1,1) NOT NULL,
	[HAS_ID] [int] NULL,
	[SEMPTOM_ID] [int] NULL,
 CONSTRAINT [PK_HASTALIK_SEMPTOMLARI] PRIMARY KEY CLUSTERED 
(
	[HAS_SEMP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HASTALIK_TIPLERI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HASTALIK_TIPLERI](
	[HAS_TIP_ID] [int] IDENTITY(1,1) NOT NULL,
	[HAS_TIP_ADI] [nvarchar](50) NULL,
 CONSTRAINT [PK_HASTALIK_TIPLERI] PRIMARY KEY CLUSTERED 
(
	[HAS_TIP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOBI_LISTESI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOBI_LISTESI](
	[HOB_ID] [int] IDENTITY(1,1) NOT NULL,
	[HOB_ADI] [nvarchar](150) NULL,
 CONSTRAINT [PK_HOBI_LISTESI] PRIMARY KEY CLUSTERED 
(
	[HOB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ILLER]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ILLER](
	[IL_ID] [int] IDENTITY(1,1) NOT NULL,
	[IL_PLAKA] [char](3) NULL,
	[IL_AD] [nchar](100) NULL,
 CONSTRAINT [PK_ILLER] PRIMARY KEY CLUSTERED 
(
	[IL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OKUL_BOLUMLERI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OKUL_BOLUMLERI](
	[OKUL_BOLUM_ID] [int] IDENTITY(1,1) NOT NULL,
	[OKUL_BOLUM_TIPI] [int] NULL,
	[OKUL_BOLUM_AD] [nvarchar](100) NULL,
 CONSTRAINT [PK_OKUL_BOLUMLERI] PRIMARY KEY CLUSTERED 
(
	[OKUL_BOLUM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OKUL_TIPLERI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OKUL_TIPLERI](
	[OKUL_TIP_ID] [int] IDENTITY(1,1) NOT NULL,
	[OKUL_TIP_ADI] [nvarchar](50) NULL,
 CONSTRAINT [PK_OKUL_TIPLERI] PRIMARY KEY CLUSTERED 
(
	[OKUL_TIP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OKULLAR]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OKULLAR](
	[OKUL_ID] [int] IDENTITY(1,1) NOT NULL,
	[OKUL_ADI] [nvarchar](200) NULL,
	[OKUL_TIPI] [int] NULL,
 CONSTRAINT [PK_OKULLAR] PRIMARY KEY CLUSTERED 
(
	[OKUL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL_ASILARI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL_ASILARI](
	[PER_ASI_ID] [int] IDENTITY(1,1) NOT NULL,
	[ASI_ID] [int] NULL,
	[ASI_OLMA_TARIHI] [datetime] NULL,
	[ASI_PER_ID] [int] NULL,
 CONSTRAINT [PK_PERSONEL_ASILARI] PRIMARY KEY CLUSTERED 
(
	[PER_ASI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL_CALISMA_TARIHLERI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL_CALISMA_TARIHLERI](
	[CAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[CAL_PER_ID] [int] NULL,
	[CAL_BAS_TAR] [datetime] NULL,
	[CAL_BIT_TAR] [datetime] NULL,
 CONSTRAINT [PK_PERSONEL_CALISMA_TARIHLERI] PRIMARY KEY CLUSTERED 
(
	[CAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL_HASTALIKLARI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL_HASTALIKLARI](
	[HAS_ID] [int] IDENTITY(1,1) NOT NULL,
	[HAS_ADI] [nvarchar](50) NULL,
	[HAS_TARİH] [datetime] NULL,
	[HAS_RECETE_ID] [int] NULL,
	[HAS_PER_ID] [int] NULL,
	[HAS_TIPI] [int] NULL,
 CONSTRAINT [PK_PERSONEL_HASTALIKLARI] PRIMARY KEY CLUSTERED 
(
	[HAS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL_HOBILERI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL_HOBILERI](
	[PHOB_ID] [int] IDENTITY(1,1) NOT NULL,
	[PHOB_PER_ID] [int] NULL,
	[PHOB_HOB_ID] [int] NULL,
 CONSTRAINT [PK_PERSONEL_HOBILERI] PRIMARY KEY CLUSTERED 
(
	[PHOB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL_OGRENIM_BILGILERI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL_OGRENIM_BILGILERI](
	[PER_OGR_ID] [int] IDENTITY(1,1) NOT NULL,
	[PER_ID] [int] NULL,
	[PER_OGR_OKULID] [int] NULL,
	[PER_OGR_BOLUM_ID] [int] NULL,
 CONSTRAINT [PK_PERSONEL_OGRENIM_BILGILERI] PRIMARY KEY CLUSTERED 
(
	[PER_OGR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL_RECETE_DETAYLARI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL_RECETE_DETAYLARI](
	[RECETE_DETAY_ID] [int] IDENTITY(1,1) NOT NULL,
	[RECETE_ID] [int] NULL,
	[RECETE_ILAC_ADI] [nvarchar](150) NULL,
	[RECETE_ILAC_DOZ] [nvarchar](150) NULL,
 CONSTRAINT [PK_PERSONEL_RECETE_DETAYLARI] PRIMARY KEY CLUSTERED 
(
	[RECETE_DETAY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONEL_RECETETLERI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONEL_RECETETLERI](
	[RECETE_ID] [int] IDENTITY(1,1) NOT NULL,
	[RECETE_TARIH] [int] NULL,
 CONSTRAINT [PK_PERSONEL_RECETETLERI] PRIMARY KEY CLUSTERED 
(
	[RECETE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONELLER]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONELLER](
	[PER_ID] [int] IDENTITY(1,1) NOT NULL,
	[PER_KIMLIKNO] [nchar](11) NOT NULL,
	[PER_AD] [nvarchar](50) NULL,
	[PER_SOYAD] [nvarchar](50) NULL,
	[PER_KANGRUBU] [nchar](20) NULL,
	[PER_DOGUN_YERI] [int] NULL,
	[PER_POZISYON] [int] NULL,
	[PER_MAAS] [float] NULL,
 CONSTRAINT [PK_PERSONELLER] PRIMARY KEY CLUSTERED 
(
	[PER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POZISYONLAR]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POZISYONLAR](
	[POZ_ID] [int] IDENTITY(1,1) NOT NULL,
	[POZ_AD] [nvarchar](50) NULL,
 CONSTRAINT [PK_POZISYONLAR] PRIMARY KEY CLUSTERED 
(
	[POZ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEMPTOM_LISTESI]    Script Date: 29.12.2021 10:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEMPTOM_LISTESI](
	[SEMTOPM_ID] [int] IDENTITY(1,1) NOT NULL,
	[SEMPTOM_ADI] [nvarchar](200) NULL,
 CONSTRAINT [PK_SEMPTOM_LISTESI] PRIMARY KEY CLUSTERED 
(
	[SEMTOPM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ASI_LISTESI] ON 

INSERT [dbo].[ASI_LISTESI] ([ASI_ID], [ASI_ADI]) VALUES (1, N'BIONTECH')
INSERT [dbo].[ASI_LISTESI] ([ASI_ID], [ASI_ADI]) VALUES (2, N'SINOVAC')
INSERT [dbo].[ASI_LISTESI] ([ASI_ID], [ASI_ADI]) VALUES (3, N'TURKOVAC')
INSERT [dbo].[ASI_LISTESI] ([ASI_ID], [ASI_ADI]) VALUES (4, N'TETENOZ')
INSERT [dbo].[ASI_LISTESI] ([ASI_ID], [ASI_ADI]) VALUES (5, N'KIZAMIK')
SET IDENTITY_INSERT [dbo].[ASI_LISTESI] OFF
SET IDENTITY_INSERT [dbo].[BOLUM_TIPLERI] ON 

INSERT [dbo].[BOLUM_TIPLERI] ([BOLUM_TIP_ID], [BOLUM_TIP_ADI]) VALUES (1, N'Ön Lisans')
INSERT [dbo].[BOLUM_TIPLERI] ([BOLUM_TIP_ID], [BOLUM_TIP_ADI]) VALUES (2, N'Lisans')
INSERT [dbo].[BOLUM_TIPLERI] ([BOLUM_TIP_ID], [BOLUM_TIP_ADI]) VALUES (3, N'Yüksek Lisans')
INSERT [dbo].[BOLUM_TIPLERI] ([BOLUM_TIP_ID], [BOLUM_TIP_ADI]) VALUES (4, N'Doktora')
SET IDENTITY_INSERT [dbo].[BOLUM_TIPLERI] OFF
SET IDENTITY_INSERT [dbo].[HASTALIK_TIPLERI] ON 

INSERT [dbo].[HASTALIK_TIPLERI] ([HAS_TIP_ID], [HAS_TIP_ADI]) VALUES (1, N'Normal')
INSERT [dbo].[HASTALIK_TIPLERI] ([HAS_TIP_ID], [HAS_TIP_ADI]) VALUES (2, N'Kronik')
SET IDENTITY_INSERT [dbo].[HASTALIK_TIPLERI] OFF
SET IDENTITY_INSERT [dbo].[HOBI_LISTESI] ON 

INSERT [dbo].[HOBI_LISTESI] ([HOB_ID], [HOB_ADI]) VALUES (1, N'Yüzmek')
INSERT [dbo].[HOBI_LISTESI] ([HOB_ID], [HOB_ADI]) VALUES (2, N'Bisiklet Sürmek')
INSERT [dbo].[HOBI_LISTESI] ([HOB_ID], [HOB_ADI]) VALUES (3, N'Yürüyüş yapmak')
SET IDENTITY_INSERT [dbo].[HOBI_LISTESI] OFF
SET IDENTITY_INSERT [dbo].[ILLER] ON 

INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (1, N'01 ', N'ADANA                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (2, N'02 ', N'ADIYAMAN                                                                                            ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (3, N'03 ', N'AFYONKARAHİSAR	                                                                                     ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (4, N'04 ', N'AĞRI                                                                                                ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (5, N'05 ', N'AMASYA                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (6, N'06 ', N'ANKARA                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (7, N'07 ', N'ANTALYA                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (8, N'08 ', N'ARTVİN                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (9, N'09 ', N'AYDIN                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (10, N'10 ', N'BALIKESİR                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (11, N'11 ', N'BİLECİK                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (12, N'12 ', N'BİNGÖL                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (13, N'13 ', N'BİTLİS                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (14, N'14 ', N'BOLU                                                                                                ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (15, N'15 ', N'BURDUR                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (16, N'16 ', N'BURSA                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (17, N'17 ', N'ÇANAKKALE                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (18, N'18 ', N'ÇANKIRI                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (19, N'19 ', N'ÇORUM                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (20, N'20 ', N'DENİZLİ                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (21, N'21 ', N'DİYARBAKIR                                                                                          ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (22, N'22 ', N'EDİRNE                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (23, N'23 ', N'ELAZIĞ                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (24, N'24 ', N'ERZİNCAN                                                                                            ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (25, N'25 ', N'ERZURUM                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (26, N'26 ', N'ESKİŞEHİR                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (27, N'27 ', N'GAZİANTEP                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (28, N'28 ', N'GİRESUN                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (29, N'29 ', N'GÜMÜŞHANE                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (30, N'30 ', N'HAKKARİ                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (31, N'31 ', N'HATAY                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (32, N'32 ', N'ISPARTA                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (33, N'33 ', N'MERSİN                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (34, N'34 ', N'İSTANBUL                                                                                            ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (35, N'35 ', N'İZMİR                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (36, N'36 ', N'KARS                                                                                                ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (37, N'37 ', N'KASTAMONU                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (38, N'38 ', N'KAYSERİ                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (39, N'39 ', N'KIRKLARELİ                                                                                          ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (40, N'40 ', N'KIRŞEHİR                                                                                            ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (41, N'41 ', N'KOCAELİ                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (42, N'42 ', N'KONYA                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (43, N'43 ', N'KÜTAHYA                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (44, N'44 ', N'MALATYA                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (45, N'45 ', N'MANİSA                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (46, N'46 ', N'KAHRAMANMARAŞ                                                                                       ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (47, N'47 ', N'MARDİN                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (48, N'48 ', N'MUĞLA                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (49, N'49 ', N'MUŞ                                                                                                 ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (50, N'50 ', N'NEVŞEHİR                                                                                            ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (51, N'51 ', N'NİĞDE                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (52, N'52 ', N'ORDU                                                                                                ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (53, N'53 ', N'RİZE                                                                                                ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (54, N'54 ', N'SAKARYA                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (55, N'55 ', N'SAMSUN                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (56, N'56 ', N'SİİRT                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (57, N'57 ', N'SİNOP                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (58, N'58 ', N'SİVAS                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (59, N'59 ', N'TEKİRDAĞ                                                                                            ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (60, N'60 ', N'TOKAT                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (61, N'61 ', N'TRABZON                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (62, N'62 ', N'TUNCELİ                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (63, N'63 ', N'ŞANLIURFA                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (64, N'64 ', N'UŞAK                                                                                                ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (65, N'65 ', N'VAN                                                                                                 ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (66, N'66 ', N'YOZGAT                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (67, N'67 ', N'ZONGULDAK                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (68, N'68 ', N'AKSARAY                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (69, N'69 ', N'BAYBURT                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (70, N'70 ', N'KARAMAN                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (71, N'71 ', N'KIRIKKALE                                                                                           ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (72, N'72 ', N'BATMAN                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (73, N'73 ', N'ŞIRNAK                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (74, N'74 ', N'BARTIN                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (75, N'75 ', N'ARDAHAN                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (76, N'76 ', N'IĞDIR                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (77, N'77 ', N'YALOVA                                                                                              ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (78, N'78 ', N'KARABÜK                                                                                             ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (79, N'79 ', N'KİLİS                                                                                               ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (80, N'80 ', N'OSMANİYE                                                                                            ')
INSERT [dbo].[ILLER] ([IL_ID], [IL_PLAKA], [IL_AD]) VALUES (81, N'81 ', N'DÜZCE                                                                                               ')
SET IDENTITY_INSERT [dbo].[ILLER] OFF
SET IDENTITY_INSERT [dbo].[OKUL_TIPLERI] ON 

INSERT [dbo].[OKUL_TIPLERI] ([OKUL_TIP_ID], [OKUL_TIP_ADI]) VALUES (1, N'İlk öğetim')
INSERT [dbo].[OKUL_TIPLERI] ([OKUL_TIP_ID], [OKUL_TIP_ADI]) VALUES (2, N'Orta Öğretim')
INSERT [dbo].[OKUL_TIPLERI] ([OKUL_TIP_ID], [OKUL_TIP_ADI]) VALUES (3, N'Lise')
INSERT [dbo].[OKUL_TIPLERI] ([OKUL_TIP_ID], [OKUL_TIP_ADI]) VALUES (4, N'Üniversite')
SET IDENTITY_INSERT [dbo].[OKUL_TIPLERI] OFF
SET IDENTITY_INSERT [dbo].[SEMPTOM_LISTESI] ON 

INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (1, N'Ateş')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (2, N'Öksürük')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (3, N'Yorgunluk')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (4, N'Tat alma veya koku duyusunun kaybı
')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (5, N'Boğaz ağrısı
')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (6, N'Baş ağrısı
')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (7, N'Ağrı ve sızı
')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (8, N'İshal')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (9, N'Ciltte döküntü ya da el veya ayak parmaklarında renk değişimi')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (10, N'Gözlerde kızarıklık veya tahriş')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (11, N'Solunum güçlüğü veya nefes darlığı')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (12, N'Konuşma ya da hareket kaybı veya bilinç bulanıklığı')
INSERT [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID], [SEMPTOM_ADI]) VALUES (13, N'Göğüs ağrısı
')
SET IDENTITY_INSERT [dbo].[SEMPTOM_LISTESI] OFF
ALTER TABLE [dbo].[COVID_GECMISI]  WITH CHECK ADD  CONSTRAINT [FK_COVID_PERSONELLER] FOREIGN KEY([COV_GEC_PER_ID])
REFERENCES [dbo].[PERSONELLER] ([PER_ID])
GO
ALTER TABLE [dbo].[COVID_GECMISI] CHECK CONSTRAINT [FK_COVID_PERSONELLER]
GO
ALTER TABLE [dbo].[COVID_SEMPTOMLARI]  WITH CHECK ADD  CONSTRAINT [FK_COVID_SEMPTOMLARI_COVID_GECMISI] FOREIGN KEY([COV_GEC_ID])
REFERENCES [dbo].[COVID_GECMISI] ([COV_GEC_ID])
GO
ALTER TABLE [dbo].[COVID_SEMPTOMLARI] CHECK CONSTRAINT [FK_COVID_SEMPTOMLARI_COVID_GECMISI]
GO
ALTER TABLE [dbo].[COVID_SEMPTOMLARI]  WITH CHECK ADD  CONSTRAINT [FK_COVID_SEMPTOMLARI_SEMPTOM_LISTESI] FOREIGN KEY([SEMPTOM_ID])
REFERENCES [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID])
GO
ALTER TABLE [dbo].[COVID_SEMPTOMLARI] CHECK CONSTRAINT [FK_COVID_SEMPTOMLARI_SEMPTOM_LISTESI]
GO
ALTER TABLE [dbo].[COVID_TEMASLILARI]  WITH CHECK ADD  CONSTRAINT [FK_COVID_TEMASLILARI_COVID] FOREIGN KEY([COV_ID])
REFERENCES [dbo].[COVID_GECMISI] ([COV_GEC_ID])
GO
ALTER TABLE [dbo].[COVID_TEMASLILARI] CHECK CONSTRAINT [FK_COVID_TEMASLILARI_COVID]
GO
ALTER TABLE [dbo].[COVID_TEMASLILARI]  WITH CHECK ADD  CONSTRAINT [FK_COVID_TEMASLILARI_PERSONELLER] FOREIGN KEY([PER_ID])
REFERENCES [dbo].[PERSONELLER] ([PER_ID])
GO
ALTER TABLE [dbo].[COVID_TEMASLILARI] CHECK CONSTRAINT [FK_COVID_TEMASLILARI_PERSONELLER]
GO
ALTER TABLE [dbo].[HASTALIK_SEMPTOMLARI]  WITH CHECK ADD  CONSTRAINT [FK_HASTALIK_SEMPTOMLARI_PERSONEL_HASTALIKLARI] FOREIGN KEY([HAS_ID])
REFERENCES [dbo].[PERSONEL_HASTALIKLARI] ([HAS_ID])
GO
ALTER TABLE [dbo].[HASTALIK_SEMPTOMLARI] CHECK CONSTRAINT [FK_HASTALIK_SEMPTOMLARI_PERSONEL_HASTALIKLARI]
GO
ALTER TABLE [dbo].[HASTALIK_SEMPTOMLARI]  WITH CHECK ADD  CONSTRAINT [FK_HASTALIK_SEMPTOMLARI_SEMPTOM_LISTESI] FOREIGN KEY([SEMPTOM_ID])
REFERENCES [dbo].[SEMPTOM_LISTESI] ([SEMTOPM_ID])
GO
ALTER TABLE [dbo].[HASTALIK_SEMPTOMLARI] CHECK CONSTRAINT [FK_HASTALIK_SEMPTOMLARI_SEMPTOM_LISTESI]
GO
ALTER TABLE [dbo].[OKUL_BOLUMLERI]  WITH CHECK ADD  CONSTRAINT [FK_OKUL_BOLUMLERI_BOLUM_TIPLERI] FOREIGN KEY([OKUL_BOLUM_TIPI])
REFERENCES [dbo].[BOLUM_TIPLERI] ([BOLUM_TIP_ID])
GO
ALTER TABLE [dbo].[OKUL_BOLUMLERI] CHECK CONSTRAINT [FK_OKUL_BOLUMLERI_BOLUM_TIPLERI]
GO
ALTER TABLE [dbo].[OKULLAR]  WITH CHECK ADD  CONSTRAINT [FK_OKULLAR_OKUL_TIPLERI] FOREIGN KEY([OKUL_TIPI])
REFERENCES [dbo].[OKUL_TIPLERI] ([OKUL_TIP_ID])
GO
ALTER TABLE [dbo].[OKULLAR] CHECK CONSTRAINT [FK_OKULLAR_OKUL_TIPLERI]
GO
ALTER TABLE [dbo].[PERSONEL_ASILARI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_ASILARI_ASI_LISTESI] FOREIGN KEY([ASI_ID])
REFERENCES [dbo].[ASI_LISTESI] ([ASI_ID])
GO
ALTER TABLE [dbo].[PERSONEL_ASILARI] CHECK CONSTRAINT [FK_PERSONEL_ASILARI_ASI_LISTESI]
GO
ALTER TABLE [dbo].[PERSONEL_ASILARI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_ASILARI_PERSONELLER] FOREIGN KEY([ASI_PER_ID])
REFERENCES [dbo].[PERSONELLER] ([PER_ID])
GO
ALTER TABLE [dbo].[PERSONEL_ASILARI] CHECK CONSTRAINT [FK_PERSONEL_ASILARI_PERSONELLER]
GO
ALTER TABLE [dbo].[PERSONEL_CALISMA_TARIHLERI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_CALISMA_TARIHLERI_PERSONELLER] FOREIGN KEY([CAL_PER_ID])
REFERENCES [dbo].[PERSONELLER] ([PER_ID])
GO
ALTER TABLE [dbo].[PERSONEL_CALISMA_TARIHLERI] CHECK CONSTRAINT [FK_PERSONEL_CALISMA_TARIHLERI_PERSONELLER]
GO
ALTER TABLE [dbo].[PERSONEL_HASTALIKLARI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_HASTALIKLARI_HASTALIK_TIPLERI] FOREIGN KEY([HAS_TIPI])
REFERENCES [dbo].[HASTALIK_TIPLERI] ([HAS_TIP_ID])
GO
ALTER TABLE [dbo].[PERSONEL_HASTALIKLARI] CHECK CONSTRAINT [FK_PERSONEL_HASTALIKLARI_HASTALIK_TIPLERI]
GO
ALTER TABLE [dbo].[PERSONEL_HASTALIKLARI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_HASTALIKLARI_PERSONEL_RECETETLERI] FOREIGN KEY([HAS_RECETE_ID])
REFERENCES [dbo].[PERSONEL_RECETETLERI] ([RECETE_ID])
GO
ALTER TABLE [dbo].[PERSONEL_HASTALIKLARI] CHECK CONSTRAINT [FK_PERSONEL_HASTALIKLARI_PERSONEL_RECETETLERI]
GO
ALTER TABLE [dbo].[PERSONEL_HASTALIKLARI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_HASTALIKLARI_PERSONELLER] FOREIGN KEY([HAS_PER_ID])
REFERENCES [dbo].[PERSONELLER] ([PER_ID])
GO
ALTER TABLE [dbo].[PERSONEL_HASTALIKLARI] CHECK CONSTRAINT [FK_PERSONEL_HASTALIKLARI_PERSONELLER]
GO
ALTER TABLE [dbo].[PERSONEL_HOBILERI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_HOBILERI_HOBI_LISTESI] FOREIGN KEY([PHOB_PER_ID])
REFERENCES [dbo].[HOBI_LISTESI] ([HOB_ID])
GO
ALTER TABLE [dbo].[PERSONEL_HOBILERI] CHECK CONSTRAINT [FK_PERSONEL_HOBILERI_HOBI_LISTESI]
GO
ALTER TABLE [dbo].[PERSONEL_HOBILERI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_HOBILERI_PERSONELLER] FOREIGN KEY([PHOB_HOB_ID])
REFERENCES [dbo].[PERSONELLER] ([PER_ID])
GO
ALTER TABLE [dbo].[PERSONEL_HOBILERI] CHECK CONSTRAINT [FK_PERSONEL_HOBILERI_PERSONELLER]
GO
ALTER TABLE [dbo].[PERSONEL_OGRENIM_BILGILERI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_OGRENIM_BILGILERI_OKUL_BOLUMLERI] FOREIGN KEY([PER_OGR_BOLUM_ID])
REFERENCES [dbo].[OKUL_BOLUMLERI] ([OKUL_BOLUM_ID])
GO
ALTER TABLE [dbo].[PERSONEL_OGRENIM_BILGILERI] CHECK CONSTRAINT [FK_PERSONEL_OGRENIM_BILGILERI_OKUL_BOLUMLERI]
GO
ALTER TABLE [dbo].[PERSONEL_OGRENIM_BILGILERI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_OGRENIM_BILGILERI_OKULLAR] FOREIGN KEY([PER_OGR_OKULID])
REFERENCES [dbo].[OKULLAR] ([OKUL_ID])
GO
ALTER TABLE [dbo].[PERSONEL_OGRENIM_BILGILERI] CHECK CONSTRAINT [FK_PERSONEL_OGRENIM_BILGILERI_OKULLAR]
GO
ALTER TABLE [dbo].[PERSONEL_OGRENIM_BILGILERI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_OGRENIM_BILGILERI_PERSONELLER] FOREIGN KEY([PER_ID])
REFERENCES [dbo].[PERSONELLER] ([PER_ID])
GO
ALTER TABLE [dbo].[PERSONEL_OGRENIM_BILGILERI] CHECK CONSTRAINT [FK_PERSONEL_OGRENIM_BILGILERI_PERSONELLER]
GO
ALTER TABLE [dbo].[PERSONEL_RECETE_DETAYLARI]  WITH CHECK ADD  CONSTRAINT [FK_PERSONEL_RECETE_DETAYLARI_PERSONEL_RECETETLERI] FOREIGN KEY([RECETE_ID])
REFERENCES [dbo].[PERSONEL_RECETETLERI] ([RECETE_ID])
GO
ALTER TABLE [dbo].[PERSONEL_RECETE_DETAYLARI] CHECK CONSTRAINT [FK_PERSONEL_RECETE_DETAYLARI_PERSONEL_RECETETLERI]
GO
ALTER TABLE [dbo].[PERSONELLER]  WITH CHECK ADD  CONSTRAINT [FK_PERSONELLER_ILLER] FOREIGN KEY([PER_DOGUN_YERI])
REFERENCES [dbo].[ILLER] ([IL_ID])
GO
ALTER TABLE [dbo].[PERSONELLER] CHECK CONSTRAINT [FK_PERSONELLER_ILLER]
GO
ALTER TABLE [dbo].[PERSONELLER]  WITH CHECK ADD  CONSTRAINT [FK_PERSONELLER_POZISYONLAR] FOREIGN KEY([PER_POZISYON])
REFERENCES [dbo].[POZISYONLAR] ([POZ_ID])
GO
ALTER TABLE [dbo].[PERSONELLER] CHECK CONSTRAINT [FK_PERSONELLER_POZISYONLAR]
GO
