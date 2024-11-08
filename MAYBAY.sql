USE [master]
GO
/****** Object:  Database [BANVE]    Script Date: 9/25/2022 12:17:55 PM ******/
CREATE DATABASE [BANVE]
 
GO
ALTER DATABASE [BANVE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BANVE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BANVE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BANVE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BANVE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BANVE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BANVE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BANVE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BANVE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BANVE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BANVE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BANVE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BANVE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BANVE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BANVE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BANVE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BANVE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BANVE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BANVE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BANVE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BANVE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BANVE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BANVE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BANVE] SET  MULTI_USER 
GO
ALTER DATABASE [BANVE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BANVE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BANVE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BANVE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BANVE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BANVE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BANVE] SET QUERY_STORE = OFF
GO
USE [BANVE]
GO
/****** Object:  Table [dbo].[city]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[cityId] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [nvarchar](250) NULL,
	[countryId] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[cityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[countryId] [int] IDENTITY(1,1) NOT NULL,
	[countryName] [nvarchar](150) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[countryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[link] [varchar](255) NULL,
	[tableid] [int] NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[position] [varchar](255) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[guestTotal] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[CusId] [int] NULL,
	[gioitinh] [nvarchar](255) NOT NULL,
	[quoctich] [nvarchar](255) NULL,
	[mess] [nvarchar](255) NULL,
	[phone] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[total] [float] NOT NULL,
	[created_ate] [smalldatetime] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordersdetail]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordersdetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[ticketId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_ordersdetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[topid] [int] NULL,
	[title] [nvarchar](max) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[detail] [ntext] NULL,
	[img] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[accessName] [varchar](255) NOT NULL,
	[description] [nvarchar](225) NULL,
	[GropID] [varchar](50) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[parentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [ntext] NULL,
	[flightCode] [char](50) NULL,
	[airline] [nvarchar](255) NULL,
	[ticketType] [nvarchar](255) NULL,
	[img] [nvarchar](255) NULL,
	[departure_date] [date] NULL,
	[guestTotal] [int] NULL,
	[price] [float] NULL,
	[priceSale] [float] NULL,
	[Sold] [int] NOT NULL,
	[created_at] [date] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [date] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
	[departure_time] [time](7) NULL,
	[arrival_time] [time](7) NULL,
	[fromAirport] [int] NULL,
	[toAirport] [int] NULL,
 CONSTRAINT [PK__ticket__3213E83F9A39E097] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_topic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 9/25/2022 12:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](max) NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[gender] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
	[access] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[city] ON 

INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (12, N'Ha Noi (HAN)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (13, N'Ho Chi Minh City (SGN)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (14, N'Da Nang (DAD)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (15, N'Phu Quoc (PQC)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (16, N'Nha Trang (CXR)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (17, N'Buon Ma Thuot (BMV)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (18, N'Ca Mau (CAH)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (19, N'Can Tho (VCA)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (20, N'Chu Lai (VCL)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (21, N'Con Dao (VCS)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (22, N'Da Lat (DLI)', 4, 2)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (23, N'Dien Bien (DIN)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (24, N'Dong Hoi (DVH)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (25, N'Hai Phong (HPH)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (26, N'Hue (HUI)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (27, N'Pleiku (PXU)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (28, N'Quy Nhon (UIH)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (29, N'Rach Gia (VKG)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (30, N'Thanh Hoa (THD)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (31, N'Tuy Hoa (TBB)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (32, N'Van Don (VDO)', 4, 1)
INSERT [dbo].[city] ([cityId], [cityName], [countryId], [status]) VALUES (33, N'Vinh (VII)', 4, 1)
SET IDENTITY_INSERT [dbo].[city] OFF
GO
SET IDENTITY_INSERT [dbo].[country] ON 

INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (4, N'VIETNAM', 1)
INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (5, N'NORTH EAST ASIA', 1)
INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (8, N'SOUTH EAST ASIA', 1)
INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (9, N'INDOCHINA', 1)
INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (10, N'EUROPE', 1)
INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (11, N'AUSTRALIA', 1)
INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (12, N'NORTH AMERICA', 1)
INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (13, N'MIDDLE EAST', 1)
INSERT [dbo].[country] ([countryId], [countryName], [status]) VALUES (14, N'AFRICA', 1)
SET IDENTITY_INSERT [dbo].[country] OFF
GO
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Trang Chủ', N'menu', N'', 2, 0, 1, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-05T13:03:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Tin Tức - Khuyến Mãi', N'menu', N'tin-tuc/tin-khuyen-mai', 2, 0, 2, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'Liên Hệ', N'menu', N'lien-he', 2, 0, 3, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (32, N'Tin Tức - Vé Bay', N'menu', N'tin-tuc/ve-noi-dia', 3, 0, 19, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1032, N'Tất Cả Chuyến Đi', N'menu', N'all-chuyen-bay', 2, 0, 0, N'mainmenu', CAST(N'2020-11-13T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[menu] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([ID], [guestTotal], [name], [CusId], [gioitinh], [quoctich], [mess], [phone], [email], [total], [created_ate], [status]) VALUES (11, 1, N'Thanh Tuyền', 28, N'male', N'VN', N'Cho em đặt vé cạnh cửa số ', N'0971929282', N'thanhtuyen@gmail.com', 40, CAST(N'2022-09-25T10:29:00' AS SmallDateTime), 0)
INSERT [dbo].[order] ([ID], [guestTotal], [name], [CusId], [gioitinh], [quoctich], [mess], [phone], [email], [total], [created_ate], [status]) VALUES (12, 1, N'Thanh Tuyền', 28, N'male', N'VN', N'sdsd', N'0971929282', N'Dinhp@Unitech.vn', 40, CAST(N'2022-09-25T11:43:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[ordersdetail] ON 

INSERT [dbo].[ordersdetail] ([ID], [orderid], [ticketId], [quantity]) VALUES (10, 11, 3245, 1)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [ticketId], [quantity]) VALUES (11, 12, 3245, 1)
SET IDENTITY_INSERT [dbo].[ordersdetail] OFF
GO
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (84, 21, N'Thông Tin Liên Hệ', N'Liên Hê', N'Đại học Mở HÀ NỘI', NULL, N'1', CAST(N'2022-01-01T00:00:00' AS SmallDateTime), 1, CAST(N'2022-01-01T00:00:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[post] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (1, 0, N'ADMIN', N'Quản trị viên Full quyền', N'ADMIN')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (2, 1, N'CUSTOMER', N'Khách hàng', N'CUSTOMER')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (7, 3, N'SALESMAN', N'Nhân viên bán hàng', N'SALESMAN')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[ticket] ON 

INSERT [dbo].[ticket] ([id], [name], [description], [flightCode], [airline], [ticketType], [img], [departure_date], [guestTotal], [price], [priceSale], [Sold], [created_at], [created_by], [updated_at], [updated_by], [status], [departure_time], [arrival_time], [fromAirport], [toAirport]) VALUES (3245, N'Vé bay Hà Nội', N'Vé Bay Từ Thanh Hóa => Hà Nội', N'SE02                                              ', N'', N'Promotion', N'img.jpg', CAST(N'2022-09-25' AS Date), 50, 40, 40, 50, CAST(N'2022-09-25' AS Date), 1, CAST(N'2022-09-25' AS Date), 1, 1, CAST(N'01:20:00' AS Time), CAST(N'02:20:00' AS Time), 30, 12)
SET IDENTITY_INSERT [dbo].[ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[topic] ON 

INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (17, N'Vé Bay Quốc Tế', N've-quoc-te', 0, 1, CAST(N'2020-08-05T14:24:00' AS SmallDateTime), 1, CAST(N'2021-12-13T09:19:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (18, N'Vé Bay Nội Địa', N've-noi-dia', 0, 1, CAST(N'2020-08-05T14:25:00' AS SmallDateTime), 1, CAST(N'2021-12-13T09:19:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (20, N'Tin Khuyến Mãi', N'tin-khuyen-mai', 0, 1, CAST(N'2020-08-05T14:28:00' AS SmallDateTime), 1, CAST(N'2021-12-13T09:19:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (21, N'Liên Hệ', N'lien-he', 0, 1, CAST(N'2020-08-05T15:43:00' AS SmallDateTime), 1, CAST(N'2021-12-13T09:10:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (22, N'Vé Đi Mỹ Đình', N've-di-my-dinh', 0, 1, CAST(N'2021-12-29T12:46:00' AS SmallDateTime), 1, CAST(N'2021-12-29T23:55:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[topic] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'admin', N'admin', N'4QrcOUm6Wau+VuBX8g+IPg==', N'vanhung3339@gmail.com', N'Nữ', N'cat minh - phu cat - binh dinh', N'0778', N'ádasd', 0, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2021-12-29T23:55:55.440' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'nguyen công 2', N'salesman', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'cat-minhad', N'0975846852', N'ádasd', 3, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2021-06-05T20:13:47.207' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Nguyễn văn Hưng', N'khachhang4', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'Cat minh - Phu cat - Binh Dinh ', N'0975271384', NULL, 1, CAST(N'2021-06-05T20:01:57.283' AS DateTime), 1, CAST(N'2021-06-05T20:01:57.283' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Huỳnh Trần Thế Hùng', N'3333', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'Nam', N'', NULL, N'ádasd', 1, CAST(N'2021-12-11T23:19:09.707' AS DateTime), 1, CAST(N'2021-12-11T23:19:09.707' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (13, N'Đại Học Mở Hà Nội', N'DHMHN', N'xMpCOKC5I4INzFCab3WEmw==', N'Nhannvts2008014@fpt.edu.vn', N'Nữ', N'', N'00888', N'ádasd', 1, CAST(N'2021-12-13T22:20:30.667' AS DateTime), 1, CAST(N'2021-12-13T22:20:30.667' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (14, N'Nguyen Van Nhan', N'user11', N'xMpCOKC5I4INzFCab3WEmw==', N'Hoangguyencaphe18@gmail.com', N'Nam', N'', N'0000', N'ádasd', 3, CAST(N'2021-12-13T22:20:53.963' AS DateTime), 1, CAST(N'2021-12-13T22:25:34.150' AS DateTime), 1, 0)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (15, N'Nguyen Van Nhan', N'khachhang411', N'xMpCOKC5I4INzFCab3WEmw==', N'Nhannvts2008014@fpt.edu.vn', N'Nam', N'', N'0778531555', N'ádasd', 0, CAST(N'2021-12-13T22:21:12.397' AS DateTime), 1, CAST(N'2021-12-13T22:21:12.397' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (17, N'nguyenvana', N'23123', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'nam', N'asd', N'0906677088', N'defalt.png', 1, CAST(N'2021-12-29T12:11:53.490' AS DateTime), 1, CAST(N'2021-12-29T12:11:53.490' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (18, N'huynh tran the hung', N'admin1', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'nam', N'asd', N'0906677088', N'defalt.png', 1, CAST(N'2021-12-29T12:12:56.710' AS DateTime), 1, CAST(N'2021-12-29T12:12:56.710' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (19, N'Nguyen Son Tung', N'admin1', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'nam', N'asd', N'0906677088', N'defalt.png', 1, CAST(N'2021-12-29T12:13:53.163' AS DateTime), 1, CAST(N'2021-12-29T12:13:53.163' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (20, N'huynh tran the hung', N'tung12', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'nam', N'asd@gmail.com', N'0906677088', N'defalt.png', 1, CAST(N'2021-12-29T12:29:56.770' AS DateTime), 1, CAST(N'2021-12-29T12:29:56.770' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (21, N'huynh tran the hung', N'1', N'/OqSD3QStdp74M9CuMk3WQ==', N'huynhhung728@gmail.com', N'nam', N'asd12@gmail.com', N'0906677088', NULL, 1, CAST(N'2021-12-29T12:33:58.727' AS DateTime), 1, CAST(N'2021-12-29T12:33:58.727' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (22, N'huynh tran the hung', N'3', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'nam', N'asd@gmail.com', N'0906677088', N'defalt.png', 1, CAST(N'2021-12-29T12:42:16.153' AS DateTime), 1, CAST(N'2021-12-29T12:42:16.153' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (23, N'huynh trang the', N'5', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'nam', N'huynhhung728@gmail.com', N'+10906677088', N'defalt.png', 1, CAST(N'2021-12-29T13:38:10.947' AS DateTime), 1, CAST(N'2021-12-29T13:38:10.947' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (24, N'Thanh Tuyền', N'7', N'4QrcOUm6Wau+VuBX8g+IPg==', N'ThanhTuyen123@gmail.com', N'nam', N'42, linh trung ,thủ đức', N'0906677088', N'defalt.png', 1, CAST(N'2021-12-29T22:59:23.990' AS DateTime), 1, CAST(N'2021-12-29T22:59:23.990' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (25, N'DSVN', N'98', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'nam', N'asd@gmail.com', N'0906677088', N'defalt.png', 1, CAST(N'2021-12-29T23:27:41.973' AS DateTime), 1, CAST(N'2022-09-25T10:41:22.007' AS DateTime), 1, 0)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (26, N'nguyen van a', N'0', N'4QrcOUm6Wau+VuBX8g+IPg==', N'huynhhung728@gmail.com', N'nam', N'asd12@gmail.com', N'0906677088', N'defalt.png', 1, CAST(N'2021-12-29T23:51:08.480' AS DateTime), 1, CAST(N'2021-12-29T23:51:08.480' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (27, N'PhanDinh', N'6', N'4QrcOUm6Wau+VuBX8g+IPg==', N'Dinh@gmail.com', N'nam', N'Huế ', N'0971010281', N'defalt.png', 1, CAST(N'2022-09-24T16:31:51.877' AS DateTime), 1, CAST(N'2022-09-24T16:31:51.877' AS DateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (28, N'ThanhTuyen', N'ThanhTuyen', N'4QrcOUm6Wau+VuBX8g+IPg==', N'dinh@gmail.com', N'nam', N'Hà Nội', N'0971929282', N'defalt.png', 1, CAST(N'2022-09-25T10:26:47.827' AS DateTime), 1, CAST(N'2022-09-25T10:26:47.827' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[city]  WITH CHECK ADD  CONSTRAINT [FK_city_country1] FOREIGN KEY([countryId])
REFERENCES [dbo].[country] ([countryId])
GO
ALTER TABLE [dbo].[city] CHECK CONSTRAINT [FK_city_country1]
GO
ALTER TABLE [dbo].[menu]  WITH CHECK ADD  CONSTRAINT [FK_menu_to_user] FOREIGN KEY([created_by])
REFERENCES [dbo].[user] ([ID])
GO
ALTER TABLE [dbo].[menu] CHECK CONSTRAINT [FK_menu_to_user]
GO
ALTER TABLE [dbo].[ordersdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderDetail_to_order11] FOREIGN KEY([orderid])
REFERENCES [dbo].[order] ([ID])
GO
ALTER TABLE [dbo].[ordersdetail] CHECK CONSTRAINT [FK_orderDetail_to_order11]
GO
ALTER TABLE [dbo].[ordersdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderDetail_to_product] FOREIGN KEY([ticketId])
REFERENCES [dbo].[ticket] ([id])
GO
ALTER TABLE [dbo].[ordersdetail] CHECK CONSTRAINT [FK_orderDetail_to_product]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK_topic_to_post1] FOREIGN KEY([topid])
REFERENCES [dbo].[topic] ([ID])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK_topic_to_post1]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_city] FOREIGN KEY([fromAirport])
REFERENCES [dbo].[city] ([cityId])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_city]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_city1] FOREIGN KEY([toAirport])
REFERENCES [dbo].[city] ([cityId])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_city1]
GO
ALTER TABLE [dbo].[topic]  WITH CHECK ADD  CONSTRAINT [FK_topic_to_user] FOREIGN KEY([created_by])
REFERENCES [dbo].[user] ([ID])
GO
ALTER TABLE [dbo].[topic] CHECK CONSTRAINT [FK_topic_to_user]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_to_role] FOREIGN KEY([access])
REFERENCES [dbo].[role] ([parentId])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_to_role]
GO
USE [master]
GO
ALTER DATABASE [BANVE] SET  READ_WRITE 
GO
