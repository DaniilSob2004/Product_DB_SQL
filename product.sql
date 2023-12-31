USE [master]
GO
/****** Object:  Database [ATB]    Script Date: 7/8/2023 11:38:55 AM ******/
CREATE DATABASE [ATB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product', FILENAME = N'E:\!!!ШАГ_SQL_Database\Product.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_log', FILENAME = N'E:\!!!ШАГ_SQL_Database\Product_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ATB] SET COMPATIBILITY_LEVEL = 160
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
/****** Object:  Table [dbo].[Product]    Script Date: 7/8/2023 11:38:55 AM ******/
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

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'Голандский сыр', N'Молочка', 199, 0, 500, N'кг', N'КОМО', N'Украина', N'TM Mother', CAST(N'2023-07-05' AS Date), CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (2, N'Кока-кола', N'Сладкая вода', 35.5, 5.5, 1000, N'бутылка (2 л.)', N'Coca-Cola Company', N'США', N'Simons Good', CAST(N'2023-07-01' AS Date), CAST(N'2025-07-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (3, N'Чипсы Lays', N'Снеки', 53.49, 0, 1200, N'пачки (200 г.)', N'Frito Lay', N'США', N'TM Hinto', CAST(N'2023-06-01' AS Date), CAST(N'2025-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (4, N'Молоко', N'Молочка', 39.75, 9.99, 400, N'бутылка (2 л.)', N'Простоквашино', N'Украина', N'Все буде', CAST(N'2023-07-07' AS Date), CAST(N'2023-08-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (5, N'Молочный шоколад', N'Сладости', 45, 0, 1000, N'пачки (200 г.)', N'Milennium', N'Украина', N'Milennium Gold', CAST(N'2023-07-07' AS Date), CAST(N'2024-01-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (6, N'Пепси', N'Сладкая вода', 38.49, 2.3, 1000, N'бутылка (2 л.)', N'Pepsi Co', N'США', N'Simons Bad', CAST(N'2023-06-14' AS Date), CAST(N'2026-06-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (7, N'Хлеб', N'Хлебобулочное', 20, 0, 150, N'шт', N'Одесский Хлебзавод', N'Украина', N'Хлебзавод', CAST(N'2023-07-07' AS Date), CAST(N'2023-07-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (8, N'Вода газированная', N'Напитки', 35.2, 0, 2000, N'бутылка (2 л.)', N'Morshinska', N'Украина', N'Love Water', CAST(N'2023-05-01' AS Date), CAST(N'2026-05-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'Картошка', N'Овощи', 19.25, 2.5, 1000, N'кг', N'Моя Ферма', N'Беларусь', N'Love Bulba', CAST(N'2023-06-05' AS Date), CAST(N'2023-07-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (10, N'Мороженное', N'Мороженное', 95.59, 9.99, 500, N'шт', N'Ласунка', N'Украина', N'Road Cream', CAST(N'2023-07-01' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (11, N'Хлеб Бородинский', N'Хлебобулочное', 25.2, 0, 100, N'шт', N'Хлебзавод', N'Украина', N'Хлебзавод', CAST(N'2023-07-02' AS Date), CAST(N'2023-07-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (12, N'Оливковое масло', N'Масла', 119.99, 5, 700, N'бутылка (1 л.)', N'Оливковоя ферма', N'Италия', N'Оливковая ферма', CAST(N'2023-05-01' AS Date), CAST(N'2024-05-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (13, N'Яблоки', N'Фрукты', 49.99, 0, 2000, N'кг', N'Золотая осень', N'Украина', N'Золотая осень ООО', CAST(N'2023-06-01' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (14, N'Сок "Виноградный"', N'Напитки', 38.2, 10, 1500, N'бутылка (1 л.)', N'Sandora', N'Украина', N'Sandora', CAST(N'2023-02-25' AS Date), CAST(N'2025-02-25' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (15, N'Йогурт "Activia"', N'Молочка', 40, 5.3, 200, N'бутылка (0.5 л.)', N'Данон', N'Франция', N'Данон ООО', CAST(N'2023-07-01' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (16, N'Макароны "Спагети"', N'Крупы', 55.5, 0, 4000, N'кг', N'Паста-Фабрик', N'Италия', N'Паста-Фабрик ООО', CAST(N'2023-05-10' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (17, N'Сахар', N'Питание', 45.09, 2.5, 1500, N'кг', N'Сахарный комбинат', N'Украина', N'Сахарный комбинат ООО', CAST(N'2023-06-01' AS Date), CAST(N'2028-06-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (18, N'Рис', N'Крупы', 85.65, 0, 4000, N'кг', N'Рисовая плантация', N'Индия', N'Рисовая плантация ООО', CAST(N'2022-11-10' AS Date), CAST(N'2024-05-26' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (19, N'Помидоры "Черри"', N'Овощи', 149.4, 6, 1000, N'кг', N'Хозяйство "Солнечный"', N'Украина', N'Солнечный ООО', CAST(N'2023-06-10' AS Date), CAST(N'2023-09-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (20, N'Чай "Фруктовый"', N'Напитки', 89.1, 0, 2100, N'упаковка', N'Здоровый чай', N'Киатй', N'Здоровый чай ООО', CAST(N'2023-02-01' AS Date), CAST(N'2026-06-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (21, N'Сыр "Чеддер"', N'Молочка', 248.5, 7.5, 500, N'кг', N'Сырзавод "Вкусный"', N'Украина', N'Вкусный ООО', CAST(N'2023-06-01' AS Date), CAST(N'2023-09-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (22, N'Масло "Подсолнечное"', N'Масла', 112, 0, 800, N'бутылка (0.5 л.)', N'Солнечный', N'Молдоваа', N'Солнечный ООО', CAST(N'2023-05-05' AS Date), CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (23, N'Картофель фри', N'Замороженное', 129.99, 5.5, 400, N'кг', N'Завод заморозки', N'Украина', N'Заморозка ООО', CAST(N'2023-01-25' AS Date), CAST(N'2025-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (24, N'Майонез', N'Соусы', 48.13, 2.3, 1000, N'шт', N'Фабрика "Вкуснятина"', N'Молдова', N'Вкуснятина ООО', CAST(N'2023-03-20' AS Date), CAST(N'2024-03-20' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (25, N'Кукуруза консервированная', N'Консервы', 49.1, 0, 2700, N'шт', N'Зелённый мир', N'Украина', N'Зелёный мир ООО', CAST(N'2023-02-01' AS Date), CAST(N'2027-10-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (26, N'Макароны "Фарфалле"', N'Крупы', 58.75, 0, 1500, N'кг', N'Фабрика "Италия"', N'Италия', N'Италия ООО', CAST(N'2023-02-10' AS Date), CAST(N'2028-02-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (27, N'Молоко кокосовое', N'Молочка', 115.9, 20, 500, N'бутылка (0.5 л.)', N'Кокосовая ферма', N'Таиланд', N'Кокосовая ферма ООО', CAST(N'2023-05-01' AS Date), CAST(N'2023-08-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (28, N'Орехи "Миндаль"', N'Сухофрукты и Орехи', 499.99, 0, 600, N'кг', N'Здоровый орех', N'США', N'Здоровый орех ООО', CAST(N'2023-02-14' AS Date), CAST(N'2024-02-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (29, N'Соус "Помидорный"', N'Соусы', 52.3, 10, 500, N'шт', N'Ароматный мир', N'Украина', N'Ароматный мир ООО', CAST(N'2023-04-01' AS Date), CAST(N'2024-04-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (30, N'Чай "Ассам"', N'Напитки', 135.5, 5.5, 1000, N'шт', N'Восточный аромат', N'Индия', N'Восточный аромат ООО', CAST(N'2023-05-05' AS Date), CAST(N'2025-08-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (31, N'Сыр "Моцарелла"', N'Молочка', 210.65, 10, 350, N'кг', N'Сырный рай', N'Украина', N'Сырный рай ООО', CAST(N'2023-07-01' AS Date), CAST(N'2023-10-20' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (32, N'Мёд "Липовый"', N'Пчелопродукты', 298.25, 0, 200, N'кг', N'Золотая пчела', N'Молдова', N'Золотая пчела ООО', CAST(N'2023-07-05' AS Date), CAST(N'2025-07-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (33, N'Сухофрукты "Изюм"', N'Сухофрукты и Орехи', 95.5, 8.5, 500, N'кг', N'Вкусный урожай', N'Украина', N'Вкусный урожай ООО', CAST(N'2023-05-01' AS Date), CAST(N'2024-05-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (34, N'Помидоры', N'Овощи', 49.49, 0, 500, N'кг', N'Зелёный рай', N'Украина', N'Зелёный рай ООО', CAST(N'2023-06-20' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (35, N'Оливки', N'Консервы', 75.56, 10, 1000, N'шт', N'Ароматные оливки', N'Греция', N'Ароматные оливки ООО', CAST(N'2023-02-02' AS Date), CAST(N'2025-07-02' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (36, N'Гречка', N'Крупы', 85, 0, 900, N'кг', N'Золотая гречка', N'Молдова', N'Золотая гречка ООО', CAST(N'2023-03-01' AS Date), CAST(N'2025-03-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (37, N'Соевое молоко', N'Молочка', 62.39, 5, 200, N'бутылка (0.5 л.)', N'Здоровая альтернатива', N'Молдова', N'Здоровая альтернатива ООО', CAST(N'2023-07-01' AS Date), CAST(N'2023-09-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (38, N'Морс "Клюквенный"', N'Напитки', 56.2, 6.5, 450, N'бутылка (1 л.)', N'Сладкий урожай', N'Украина', N'Сладкий урожай ООО', CAST(N'2023-05-20' AS Date), CAST(N'2023-12-20' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (39, N'Бананы', N'Фрукты', 65.5, 0, 1000, N'кг', N'Тропичный рай', N'Эквадор', N'Тропичный рай ООО', CAST(N'2023-06-10' AS Date), CAST(N'2023-08-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (40, N'Кетчуп', N'Соусы', 39.49, 10, 500, N'шт', N'Вкусный стол', N'Украина', N'Вкусный стол ООО', CAST(N'2023-05-01' AS Date), CAST(N'2025-05-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (41, N'Лук репчатый', N'Овощи', 15.19, 0, 500, N'кг', N'Зелёные поля', N'Молдова', N'Зелёные поля ООО', CAST(N'2023-07-02' AS Date), CAST(N'2023-10-02' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (42, N'Морковь', N'Овощи', 26.5, 7.5, 800, N'кг', N'Радуга овощей', N'Украина', N'Радуга овощей ООО', CAST(N'2023-07-01' AS Date), CAST(N'2023-10-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (43, N'Киноа', N'Крупы', 123.4, 12, 650, N'кг', N'Здоровое зерно', N'Боливия', N'Здоровое зерно ООО', CAST(N'2023-06-25' AS Date), CAST(N'2024-03-14' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (44, N'Фасоль консерва', N'Консервы', 56.29, 0, 1500, N'кг', N'Вкусные бобы', N'Молдова', N'Вкусные бобы ООО', CAST(N'2023-05-01' AS Date), CAST(N'2026-11-01' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (45, N'Кефир', N'Молочка', 69.96, 5, 1000, N'бутылка (1 л.)', N'Свежее молоко', N'Украина', N'Свежее молоко ООО', CAST(N'2023-07-05' AS Date), CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (46, N'Картофель "Белый"', N'Овощи', 35.5, 0, 1000, N'кг', N'Золотой урожай', N'Молдова', N'Золотой урожай ООО', CAST(N'2023-07-01' AS Date), CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (47, N'Шпинат', N'Овощи', 64.49, 0, 600, N'кг', N'Здоровый лист', N'Украина', N'Здоровый лист ООО', CAST(N'2023-06-06' AS Date), CAST(N'2023-10-06' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (48, N'Масло кокосовое', N'Масла', 246.25, 23, 200, N'бутылка (0.5 л.)', N'Тропическое счастье', N'Филиппины', N'Тропическое счастье ООО', CAST(N'2023-05-10' AS Date), CAST(N'2025-11-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (49, N'Огурцы "Маринованные"', N'Консерва', 145.1, 5, 500, N'кг', N'Господарка', N'Украина', N'Господарка ООО', CAST(N'2023-02-10' AS Date), CAST(N'2026-10-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (50, N'Яблоки "Голден"', N'Фрукты', 48.59, 0, 1000, N'кг', N'Золотые яблоки', N'Украина', N'Золотые яблоки ООО', CAST(N'2023-06-01' AS Date), CAST(N'2023-09-01' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [ATB] SET  READ_WRITE 
GO
