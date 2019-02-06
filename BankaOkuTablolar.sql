CREATE TABLE [dbo].[TBLBANKASERVIS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BANKAAD] [varchar](50) NULL,
	[BASLANGICTARIH] [date] NULL,
	[BASLANGICSAAT] [time](7) NULL,
	[BITISTARIH] [date] NULL,
	[BITISSAAT] [time](7) NULL,
	[SONCALISMATARIH] [date] NULL,
	[SONCALISMASAAT] [time](7) NULL,
	[ZAMANLAYICIDK] [tinyint] NULL,
 CONSTRAINT [PK_TBLBANKASERVIS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TBLGARANTI](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HESAPNO] [varchar](50) NULL,
	[IBANNO] [varchar](50) NULL,
	[KULLANICIID] [varchar](50) NULL,
	[ENCODEDATA] [varchar](100) NULL,
	[FIRMAKOD] [varchar](50) NULL,
	[SERVISADRES] [varchar](500) NULL,
 CONSTRAINT [PK_TBLBANKA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TBLGARANTIHAREKET](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MUSTERINUMARASI] [varchar](50) NULL,
	[IBANNO] [varchar](100) NULL,
	[PARABIRIM] [varchar](50) NULL,
	[SORGULAMATARIHI] [date] NULL,
	[SONISLEMTARIHI] [datetime] NULL,
	[ACIKLAMA] [varchar](250) NULL,
	[BAKIYE] [decimal](28, 8) NULL,
	[KULLANILABILIRBAKIYE] [decimal](28, 8) NULL,
	[HESAPNO] [varchar](100) NULL,
	[HESABACILISTARIH] [date] NULL,
	[KREDILIMIT] [decimal](28, 8) NULL,
	[KREDILITOPLAMBAKIYE] [decimal](28, 8) NULL,
 CONSTRAINT [PK_TBLGARANTIHAREKET] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TBLGARANTIHAREKETDETAYLAR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BASLIKID] [int] NULL,
	[ISLEMACIKLAMA] [varchar](150) NULL,
	[VKN] [varchar](50) NULL,
	[ISLEMID] [varchar](250) NULL,
	[GIRISMIKTAR] [decimal](28, 8) NULL,
	[CIKISMIKTAR] [decimal](28, 8) NULL,
	[BAKIYE] [decimal](28, 8) NULL,
	[HAREKETIBAN] [varchar](100) NULL,
	[HAREKETBANKANO] [varchar](50) NULL,
	[HAREKETBANKASUBENO] [varchar](50) NULL,
	[HAREKETTIP] [varchar](50) NULL,
 CONSTRAINT [PK_TBLGARANTIHAREKETDETAYLAR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[VOID_BNK_LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TARIH] [datetime] NULL,
	[ISLEMTIP] [varchar](50) NULL,
	[ACIKLAMA] [varchar](250) NULL,
	[DURUM] [tinyint] NULL,
 CONSTRAINT [PK_VOID_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VOID_BNK_LOG] ADD  CONSTRAINT [DF_VOID_BNK_LOG_TARIH]  DEFAULT (getdate()) FOR [TARIH]
GO


