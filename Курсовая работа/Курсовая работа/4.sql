-- ¬ыбрать наиболее востребованный вид данного товара (кол-во произведенных товаров больше 1000 штук).
SELECT Products.ID
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
ON Products.ID_Type = [Type].ID
WHERE Products.NumOfProducts >= 1000;