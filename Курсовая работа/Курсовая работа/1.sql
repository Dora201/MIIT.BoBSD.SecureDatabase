--Показать список магазинов, заказывающих данный товар/
SELECT Products.ID
     , [Name].[Name]
     , [Type].[Type]
	 , Shops.ID
	 , Shops.[Name] AS ShopName
FROM Products_Shops
INNER JOIN Products
ON Products_Shops.ID_Product = Products.ID
INNER JOIN [Name]
ON Products.ID_Name = [Name].ID
INNER JOIN [Type]
ON Products.ID_Type = [Type].ID
INNER JOIN Shops
ON Products_Shops.ID_Shop = Shops.ID
WHERE [Type].[Type] LIKE '%Пончик%';