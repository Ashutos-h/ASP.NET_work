USE [master]
GO
/****** Object:  Database [zyoung]    Script Date: 02-Aug-17 6:06:18 PM ******/
CREATE DATABASE [zyoung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'zyoung', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\zyoung.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'zyoung_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\zyoung_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [zyoung] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [zyoung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [zyoung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [zyoung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [zyoung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [zyoung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [zyoung] SET ARITHABORT OFF 
GO
ALTER DATABASE [zyoung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [zyoung] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [zyoung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [zyoung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [zyoung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [zyoung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [zyoung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [zyoung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [zyoung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [zyoung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [zyoung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [zyoung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [zyoung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [zyoung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [zyoung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [zyoung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [zyoung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [zyoung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [zyoung] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [zyoung] SET  MULTI_USER 
GO
ALTER DATABASE [zyoung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [zyoung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [zyoung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [zyoung] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [zyoung]
GO
/****** Object:  Table [dbo].[About]    Script Date: 02-Aug-17 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[About](
	[AId] [int] IDENTITY(1,1) NOT NULL,
	[ATitle] [varchar](150) NULL,
	[AContent] [varchar](2500) NULL,
	[ImageUrl] [varchar](300) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[AId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 02-Aug-17 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[BTitle] [varchar](200) NULL,
	[BContent] [varchar](3000) NULL,
	[ImageUrl] [varchar](200) NULL,
	[PostDate] [datetime] NULL,
	[BName] [varchar](250) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__Blogs__54379E30D621EFDE] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 02-Aug-17 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[CNo] [int] IDENTITY(1,1) NOT NULL,
	[CName] [varchar](200) NULL,
	[ALine1] [varchar](250) NULL,
	[ALine2] [varchar](250) NULL,
	[CCity] [varchar](50) NULL,
	[CState] [varchar](80) NULL,
	[CPin] [varchar](20) NULL,
	[CPhone] [varchar](12) NULL,
	[CEmailId] [varchar](100) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[CNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Logo]    Script Date: 02-Aug-17 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Logo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [varchar](350) NULL,
	[ITagLine] [varchar](250) NULL,
 CONSTRAINT [PK_Logo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 02-Aug-17 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slider](
	[SId] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [varchar](250) NULL,
	[HContent] [varchar](150) NULL,
	[SContent] [varchar](150) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[timings]    Script Date: 02-Aug-17 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[timings](
	[TId] [int] IDENTITY(1,1) NOT NULL,
	[dayset1] [varchar](100) NULL,
	[MonToFri] [varchar](50) NULL,
	[dayset2] [varchar](100) NULL,
	[SatToSun] [varchar](50) NULL,
 CONSTRAINT [PK_timings] PRIMARY KEY CLUSTERED 
(
	[TId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([AId], [ATitle], [AContent], [ImageUrl]) VALUES (1, N'ABOUT US', N'Lorem ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur Nulla 
fringilla purus at leo dignissim congue. Mauris elementum accumsan leo vel tempor. Sit amet cursus nisl aliquam. 
Aliquam et elit eu nunc rhoncus viverra quis at felis. Sed do', NULL)
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (1, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor sapien ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan eu id nibh.

Donec accumsan ut mi et tincidunt. Aliquam eget metus nec leo tempor bibendum. Phasellus tincidunt lobortis metus. Duis euismod lorem turpis,', N'/images/1.jpg', CAST(0x0000A7BC00000000 AS DateTime), N'Admin', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (2, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor sapien ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan.', N'/images/4.jpg', CAST(0x0000A7BC00000000 AS DateTime), N'Admin', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (3, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor sapien ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan eu id nibh. Donec accumsan ut mi et tincidunt sapien ac lectus euismod imperdiet', N'/images/7.jpg', CAST(0x0000A7BD00000000 AS DateTime), N'Arhan', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (4, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor sapien ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan eu id nibh. Donec accumsan ut mi et tincidunt', N'/images/2.jpg', CAST(0x0000A7BD00000000 AS DateTime), N'Admin', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (5, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor sapien ac imperdiet. Curabitur nec nibh at accumsan.', N'/images/5.jpg', CAST(0x0000A7BD00000000 AS DateTime), N'Admin', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (6, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan eu id nibh.

Donec accumsan ut mi et tincidunt. Aliquam eget metus nec leo tempor bibendum. Phasellus tincidunt lobortis metus. Duis euismod ', N'/images/8.jpg', CAST(0x0000A7BD00000000 AS DateTime), N'Arslaan', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (7, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor sapien ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan.', N'/images/3.jpg', CAST(0x0000A7BE00000000 AS DateTime), N'Arhan', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (8, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor sapien ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan.', N'/images/6.jpg', CAST(0x0000A7BE00000000 AS DateTime), N'Allen', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (9, N'CLASS APTENT TACITI SOCIO SQU AD LITORA', N'Suspendisse porttitor sapien ac lectus euismod imperdiet. Curabitur nec nibh at massa pellentesque accumsan eu id nibh.

Donec accumsan ut mi et tincidunt. Aliquam eget metus nec leo tempor bibendum. Phasellus tincidunt lobortis metus. Duis euismod lorem turpis,', N'/images/9.jpg', CAST(0x0000A7BE00000000 AS DateTime), N'Arhan', 1)
INSERT [dbo].[Blogs] ([BlogId], [BTitle], [BContent], [ImageUrl], [PostDate], [BName], [Status]) VALUES (10, NULL, NULL, NULL, CAST(0x0000A7BE00000000 AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([CNo], [CName], [ALine1], [ALine2], [CCity], [CState], [CPin], [CPhone], [CEmailId]) VALUES (1, N'zYoung', N'26 Mohan Pur', N'PremNagar', N'Dehradun', N'Uttarakhand', N'248007', N'9997909316', N'info@zyoung.com')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Logo] ON 

INSERT [dbo].[Logo] ([Id], [ImageUrl], [ITagLine]) VALUES (1, N'/images/logo.png', N'The Best Fitness Grow Your Strenght')
INSERT [dbo].[Logo] ([Id], [ImageUrl], [ITagLine]) VALUES (2, N'', N'Abc')
INSERT [dbo].[Logo] ([Id], [ImageUrl], [ITagLine]) VALUES (3, N'../ADManager/Images/1.jpg', N'Abc')
INSERT [dbo].[Logo] ([Id], [ImageUrl], [ITagLine]) VALUES (4, N'../ADManager/Images/10.jpg', N'this is new logo tag linw')
INSERT [dbo].[Logo] ([Id], [ImageUrl], [ITagLine]) VALUES (5, N'../ADManager/Images/logo.png', N'Awesome Work Out every day....')
INSERT [dbo].[Logo] ([Id], [ImageUrl], [ITagLine]) VALUES (6, N'../ADManager/Images/logo1.png', N'Awesome Work Out !!! No Pain No Gain')
SET IDENTITY_INSERT [dbo].[Logo] OFF
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([SId], [ImageUrl], [HContent], [SContent]) VALUES (1, N'../images/slide24.jpg', N'LEARN BOXING', N'Best MMA Coaches In The Country')
INSERT [dbo].[Slider] ([SId], [ImageUrl], [HContent], [SContent]) VALUES (2, N'../images/slide11.jpg', N'Heading 2', N'My 2nd slider content')
INSERT [dbo].[Slider] ([SId], [ImageUrl], [HContent], [SContent]) VALUES (3, N'images/slide41.jpg', N'Heading 3', N'My 3rd Slider Conent')
INSERT [dbo].[Slider] ([SId], [ImageUrl], [HContent], [SContent]) VALUES (4, N'../ADManager/Images/7.jpg', N'My Demo ', N'Slider Content')
INSERT [dbo].[Slider] ([SId], [ImageUrl], [HContent], [SContent]) VALUES (5, N'../ADManager/Images/10.jpg', N'test2', N'test 2 cotent ajsdfjasdj ;fjl;asdjlfj')
INSERT [dbo].[Slider] ([SId], [ImageUrl], [HContent], [SContent]) VALUES (6, N'../ADManager/Images/8.jpg', N'Demo3', N'Demo3 span content')
INSERT [dbo].[Slider] ([SId], [ImageUrl], [HContent], [SContent]) VALUES (7, N'../ADManager/Images/typography-28a.jpg', N'vipin new content', N'new content')
SET IDENTITY_INSERT [dbo].[Slider] OFF
SET IDENTITY_INSERT [dbo].[timings] ON 

INSERT [dbo].[timings] ([TId], [dayset1], [MonToFri], [dayset2], [SatToSun]) VALUES (1, N'Mon-Fri', N'9:00 - 21:00 ', N'Sat-Sun', N'9:00 - 2:00')
SET IDENTITY_INSERT [dbo].[timings] OFF
ALTER TABLE [dbo].[Blogs] ADD  CONSTRAINT [DF_Blogs_Status]  DEFAULT ((0)) FOR [Status]
GO
USE [master]
GO
ALTER DATABASE [zyoung] SET  READ_WRITE 
GO
