CREATE DATABASE ConfectioneryFactory;

CREATE TABLE Products
( 
    ID INT PRIMARY KEY
  , ID_Name INTEGER NOT NULL
  , ID_Type INTEGER NOT NULL
  , Price INTEGER NOT NULL
  , InceptDate DATE NOT NULL
  , ExpirationDate DATE NOT NULL
  , NumOfProducts INTEGER NOT NULL
);

CREATE TABLE [Name]
(
    ID INT PRIMARY KEY
  , [Name] NVARCHAR(30) NOT NULL
);

CREATE TABLE [Type]
(
    ID INT PRIMARY KEY
  , [Type] NVARCHAR(30) NOT NULL
);

CREATE TABLE Ingredients
(
    ID INT PRIMARY KEY
  , [Name] NVARCHAR(30) NOT NULL
  , Price INTEGER NOT NULL
  , InceptDate DATE NOT NULL
  , ExpirationDate DATE NOT NULL
  , NumOfIngredients INTEGER NOT NULL
);

CREATE TABLE Shops
(
    ID INT PRIMARY KEY
  , ID_Address INTEGER NOT NULL
  , [Name] NVARCHAR(30) NOT NULL
  , PhoneNum NVARCHAR(30) NOT NULL
);

CREATE TABLE Addresses
(
    ID INT PRIMARY KEY
  , ID_City INTEGER NOT NULL
  , ID_Street INTEGER NOT NULL
  , ID_House INTEGER NOT NULL
  , ID_Building INTEGER NOT NULL
);

CREATE TABLE Providers
(
    ID INT PRIMARY KEY
  , ID_Address INTEGER NOT NULL
  , [Name] NVARCHAR(30) NOT NULL
  , PhoneNum NVARCHAR(30) NOT NULL
);

CREATE TABLE Cities
(
    ID INT PRIMARY KEY
  , City NVARCHAR(30) NOT NULL
);

CREATE TABLE Streets
(
    ID INT PRIMARY KEY
  , Street NVARCHAR(30) NOT NULL
);

CREATE TABLE Houses
(
    ID INT PRIMARY KEY
  , House INTEGER NOT NULL
);

CREATE TABLE Buildings
(
    ID INT PRIMARY KEY
  , Building INTEGER NOT NULL
);


CREATE TABLE Products_Ingredients
(
    ID INT PRIMARY KEY
  , ID_Product INTEGER NOT NULL
  , ID_Ingredient INTEGER NOT NULL
);


CREATE TABLE Ingredients_Providers
(
    ID INT PRIMARY KEY
  , ID_Provider INTEGER NOT NULL
  , ID_Ingredient INTEGER NOT NULL
);


CREATE TABLE Products_Shops
(
    ID INT PRIMARY KEY
  , ID_Product INTEGER NOT NULL
  , ID_Shop INTEGER NOT NULL
);


INSERT INTO Products 
VALUES
    (1, 1, 1, 70, GETDATE(), GETDATE()+20, 200)
  , (2, 2, 1, 75, GETDATE(), GETDATE()+20, 500)
  , (3, 3, 2, 800, GETDATE(), GETDATE()+25, 500)
  , (4, 4, 3, 80, GETDATE(), GETDATE()+10, 1200)
  , (5, 5, 4, 50, GETDATE(), GETDATE()+20, 1200)
  , (6, 6, 3, 80, GETDATE(), GETDATE()+10, 900)
  , (7, 7, 2, 3000, GETDATE(), GETDATE()+25, 1200)
  , (8, 8, 5, 95, GETDATE(), GETDATE()+30, 1000 );

INSERT INTO [Name]
VALUES
    (1, 'Сладкоежка')
  , (2, 'Зимняя сказка')
  , (3, 'Рандеву')
  , (4, 'Париж')
  , (5, 'Дуэт')
  , (6, 'Ванильное небо')
  , (7, 'Снежная королева')
  , (8, 'Карамельное наслаждение');

INSERT INTO [Type] 
VALUES
    (1, 'Пончик')
  , (2, 'Торт')
  , (3, 'Круассан')
  , (4, 'Пироженное')
  , (5, 'Вафля');

INSERT INTO Ingredients
VALUES
    (1, 'Мука', 40, GETDATE()-20, GETDATE() + 90, 1000)
  , (2, 'Сахар', 30, GETDATE()-20, GETDATE() + 90, 1000)
  , (3, 'Яица', 60, GETDATE()-10, GETDATE() + 50, 2000)
  , (4, 'Молоко', 70, GETDATE()-10, GETDATE() + 20, 2000)
  , (5, 'Сливочное масло', 100, GETDATE()-10, GETDATE() + 30, 2000)
  , (6, 'Сливки', 80, GETDATE()-10, GETDATE() + 10, 1500);

INSERT INTO Providers
VALUES
    (1, 1, 'ООО "Кудесница"', 88005566788)
  , (2, 2, 'ОАО "Русский сахар"', 88004536277)
  , (3, 3, 'ООО "Волжское"', 88009087345)
  , (4, 4, 'ООО "Домик в деревне"', 88006523478)
  , (5, 5, 'ОАО "Экомилк"', 88008723612);

INSERT INTO Ingredients_Providers
VALUES
    (1,1,1)
  , (2,2,2)
  , (3,3,3)
  , (4,4,4)
  , (5,5,5)
  , (6,4,6);

INSERT INTO Products_Ingredients
VALUES
    (1,1,1)
  , (2,1,2)
  , (3,1,3)
  , (4,1,5)
  , (5,2,1)
  , (6,2,1)
  , (7,2,2)
  , (8,2,3)
  , (9,2,6);


INSERT INTO Shops
VALUES
    (1,6,'Галерея вкуса',84956774312)
  , (2,7,'Пират-шоколад', 84950093432)
  , (3,8,'Королевские сладости', 84955664891)
  , (4,9,'Конфети', 84958922774);

INSERT INTO Addresses
VALUES
    (1,1,1,1,1)
  , (2,1,2,2,2)
  , (3,1,3,3,3)
  , (4,2,2,4,4)
  , (5,1,4,3,2)
  , (6,2,3,4,4)
  , (7,1,5,5,5)
  , (8,3,6,4,4)
  , (9,3,7,6,2);


INSERT INTO Cities
VALUES
    (1, 'Москва')
  , (2, 'Люберцы')
  , (3, 'Чехов');

INSERT INTO Streets
VALUES
    (1, 'ул. Новослободская')
  , (2, 'ул. Костромская')
  , (3, 'ул. Королёва')
  , (4, 'пр. Мира')
  , (5, 'ул. Строителей')
  , (6, 'ул. Каменная')
  , (7, 'Садовый пер.');

INSERT INTO Houses
VALUES
    (1, 12)
  , (2, 54)
  , (3, 124)
  , (4, 2)
  , (5, 34)
  , (6, 7);

INSERT INTO Buildings
VALUES
    (1, 1)
  , (2, 2)
  , (3, 3)
  , (4, 4)
  , (5, 5);


INSERT INTO Products_Shops
VALUES
    (1,1,1)
  , (2,2,2)
  , (3,3,1)
  , (4,4,2)
  , (5,5,4)
  , (6,6,4)
  , (7,7,3)
  , (8,8,3);


--Присоединяем таблицу [Type] и [Name] к таблице Products
SELECT Products.ID
     , Products.ID_Name
     , [Name].[Name]
     , Products.ID_Type
     , [Type].[Type]
	 , Products.Price
	 , Products.InceptDate
	 , Products.ExpirationDate
	 , Products.NumOfProducts
FROM Products
INNER JOIN [Name]
ON Products.ID_Name = [Name].ID
INNER JOIN [Type]
ON Products.ID_Type = [Type].ID;

--Присоединяем таблицу Products к таблице Products_Ingredients
SELECT Products.ID
     , [Name].[Name]
     , [Type].[Type]
	 , Products.Price
	 , Products.InceptDate
	 , Products.ExpirationDate
	 , Products.NumOfProducts
	 , Ingredients.ID
	 , Ingredients.[Name]
	 , Ingredients.Price
	 , Ingredients.InceptDate
	 , Ingredients.ExpirationDate
	 , Ingredients.NumOfIngredients
FROM Products_Ingredients
INNER JOIN Products
ON Products_Ingredients.ID_Product = Products.ID
INNER JOIN [Name]
ON Products.ID_Name = [Name].ID
INNER JOIN [Type]
ON Products.ID_Type = [Type].ID
INNER JOIN Ingredients
ON Products_Ingredients.ID_Ingredient = Ingredients.ID;

--Присоединяем таблицу Ingredients к таблице Ingredients_Providers
SELECT Ingredients.ID
     , Ingredients.[Name]
	 , Ingredients.Price
	 , Ingredients.InceptDate
	 , Ingredients.ExpirationDate
	 , Ingredients.NumOfIngredients
	 , Providers.ID
	 , Providers.[Name]
	 , Providers.ID_Address
	 , Cities.City
	 , Streets.Street
	 , Houses.House
	 , Buildings.Building
	 , Providers.PhoneNum
FROM Ingredients_Providers
INNER JOIN Ingredients
ON Ingredients_Providers.ID_Ingredient = Ingredients.ID
INNER JOIN Providers
ON Ingredients_Providers.ID_Provider = Providers.ID
INNER JOIN Addresses
ON Providers.ID_Address = Addresses.ID
INNER JOIN Cities
ON Addresses.ID_City = Cities.ID
INNER JOIN Streets
ON Addresses.ID_Street = Streets.ID
INNER JOIN Houses
ON Addresses.ID_House = Houses.ID
INNER JOIN Buildings
ON Addresses.ID_Building = Buildings.ID;

--Присоединяем таблицу Products к таблице Products_Shops
SELECT Products.ID
     , [Name].[Name]
     , [Type].[Type]
	 , Products.Price
	 , Products.InceptDate
	 , Products.ExpirationDate
	 , Products.NumOfProducts
	 , Shops.ID
	 , Shops.[Name]
	 , Shops.ID_Address
	 , Cities.City
	 , Streets.Street
	 , Houses.House
	 , Buildings.Building
	 , Shops.PhoneNum
FROM Products_Shops
INNER JOIN Products
ON Products_Shops.ID_Product = Products.ID
INNER JOIN [Name]
ON Products.ID_Name = [Name].ID
INNER JOIN [Type]
ON Products.ID_Type = [Type].ID
INNER JOIN Shops
ON Products_Shops.ID_Shop = Shops.ID
INNER JOIN Addresses
ON Shops.ID_Address = Addresses.ID
INNER JOIN Cities
ON Addresses.ID_City = Cities.ID
INNER JOIN Streets
ON Addresses.ID_Street = Streets.ID
INNER JOIN Houses
ON Addresses.ID_House = Houses.ID
INNER JOIN Buildings
ON Addresses.ID_Building = Buildings.ID;

--Присоединяем таблицы Cities, Streets, Houses, Buildings к таблице Addresses
SELECT Addresses.ID_City
     , Cities.City
     , Addresses.ID_Street
	 , Streets.Street
	 , Addresses.ID_House
	 , Houses.House
	 , Addresses.ID_Building
	 , Buildings.Building
FROM Addresses
INNER JOIN Cities
ON Addresses.ID_City = Cities.ID
INNER JOIN Streets
ON Addresses.ID_Street = Streets.ID
INNER JOIN Houses
ON Addresses.ID_House = Houses.ID
INNER JOIN Buildings
ON Addresses.ID_Building = Buildings.ID;

--Присоединяем таблицу Addresses к таблице Shops
SELECT Shops.[Name]
	 , Shops.PhoneNum
	 , Shops.ID_Address
	 , Cities.City
	 , Streets.Street
	 , Houses.House
	 , Buildings.Building
FROM Shops
INNER JOIN Addresses
ON Shops.ID_Address = Addresses.ID
INNER JOIN Cities
ON Addresses.ID_City = Cities.ID
INNER JOIN Streets
ON Addresses.ID_Street = Streets.ID
INNER JOIN Houses
ON Addresses.ID_House = Houses.ID
INNER JOIN Buildings
ON Addresses.ID_Building = Buildings.ID;

--Присоединяем таблицу Addresses к таблице Providers
SELECT Providers.[Name]
     , Providers.PhoneNum
	 , Providers.ID_Address
	 , Cities.City
	 , Streets.Street
	 , Houses.House
	 , Buildings.Building
FROM Providers
INNER JOIN Addresses
ON Providers.ID_Address = Addresses.ID
INNER JOIN Cities
ON Addresses.ID_City = Cities.ID
INNER JOIN Streets
ON Addresses.ID_Street = Streets.ID
INNER JOIN Houses
ON Addresses.ID_House = Houses.ID
INNER JOIN Buildings
ON Addresses.ID_Building = Buildings.ID;
