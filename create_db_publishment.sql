USE Publishment

CREATE DATABASE Publishment
ON (NAME = Publishment_dat, FILENAME = 'E:\!!!ÿ¿√_SQL_Database\Publishment.mdf',
	SIZE = 10MB, MAXSIZE = 50MB, FILEGROWTH = 5MB)
LOG ON (NAME = Publishment_log, FILENAME = 'E:\!!!ÿ¿√_SQL_Database\Publishment.ldf',
        SIZE = 5MB, MAXSIZE = 25MB, FILEGROWTH = 5MB)

CREATE TABLE Themes (
    id int primary key identity(1, 1),
	name nvarchar(50)
)

CREATE TABLE Country (
    id int primary key identity(1, 1),
	name nvarchar(50)
)

CREATE TABLE Authors (
    id int primary key identity(1, 1),
	firstname nvarchar(50),
	lastname nvarchar(50),
	id_country int references Country(id)
)

CREATE TABLE Shops (
    id int primary key identity(1, 1),
	name nvarchar(50),
	id_country int references Country(id)
)

CREATE TABLE Books (
    id int primary key identity(1, 1),
	name nvarchar(50) NOT NULL,
	id_theme int references Themes(id),
	id_author int references Authors(id),
	price float,
	date_of_publish date DEFAULT(GETDATE()),
	pages int
)

CREATE TABLE Sales(
    id int primary key identity(1, 1),
	id_book int references Books(id),
	date_of_sale datetime,
	price float,
	quantity int,
	id_shop int references Shops(id)
)
