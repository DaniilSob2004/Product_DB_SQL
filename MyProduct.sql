USE [master]
GO
/****** Object:  Database [ATB]    Script Date: 7/7/2023 7:01:02 PM ******/
CREATE DATABASE [ATB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product', FILENAME = N'E:\!!!ШАГ_SQL_Database\Product.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_log', FILENAME = N'E:\!!!ШАГ_SQL_Database\Product_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ATB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ATB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATB] SET RECOVERY FULL 
GO
ALTER DATABASE [ATB] SET  MULTI_USER 
GO
ALTER DATABASE [ATB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ATB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ATB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ATB', N'ON'
GO
ALTER DATABASE [ATB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ATB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ATB]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/7/2023 7:01:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](100) NULL,
	[price] [float] NULL,
	[discount] [float] NULL,
	[quantity] [int] NULL,
	[measurement] [nvarchar](50) NULL,
	[producer] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'Dutch Cheese', N'Молочка', 199, 0, 500, N'кг.', N'КОМО', N'Украина', N'TM Mother', CAST(N'2023-07-05' AS Date), CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (2, N'Coca-Cola', N'Сладкая вода', 35.5, 5.5, 1000, N'бутылки (2 л.)', N'Coca-Cola Company', N'США', N'Simons Good', CAST(N'2023-07-01' AS Date), CAST(N'2025-07-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (3, N'Чипсы Lays', N'Снеки', 53.49, 0, 1200, N'пачки (200 г.)', N'Frito Lay', N'США', N'TM Hinto', CAST(N'2023-06-01' AS Date), CAST(N'2025-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (4, N'Milk', N'Молочка', 39.75, 9.99, 400, N'бутылки (2 л.)', N'Простоквашино', N'Украина', N'Все буде', CAST(N'2023-07-07' AS Date), CAST(N'2023-08-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (5, N'Milk Chocolate', N'Сладости', 45, 0, 1000, N'пачки (200 г.)', N'Milennium', N'Украина', N'Milennium Gold', CAST(N'2023-07-07' AS Date), CAST(N'2024-01-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (6, N'Pepsi-Cola', N'Сладкая вода', 38.49, 2.3, 1000, N'бутылки (2 л.)', N'Pepsi Co', N'США', N'Simons Bad', CAST(N'2023-06-14' AS Date), CAST(N'2026-06-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (7, N'Bread', N'Хлебобулочное', 20, 0, 150, N'шт.', N'Одесский Хлебзавод', N'Украина', N'Хлебзавод', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (8, N'Water', N'Напитки', 35.2, 0, 2000, N'бутылки (2 л.)', N'Morshinska', N'Украина', N'Love Water', CAST(N'2023-05-01' AS Date), CAST(N'2026-05-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'Potato', N'Овощи', 19.25, 2.5, 1000, N'кг.', N'Моя Ферма', N'Беларусь', N'Love Bulba', CAST(N'2023-06-05' AS Date), CAST(N'2023-07-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (10, N'Ice cream', N'Мороженное', 95.59, 9.99, 500, N'шт.', N'Ласунка', N'Украина', N'Road Cream', CAST(N'2023-07-01' AS Date), CAST(N'2023-12-31' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [ATB] SET  READ_WRITE 
GO
