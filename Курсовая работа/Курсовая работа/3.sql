--ѕоказать ассортимент данного товара и цену.
SELECT Products.ID
     , Products.ID_Name
     , [Name].[Name]
     , Products.ID_Type
     , [Type].[Type]
	 , Products.Price
FROM Products
INNER JOIN [Name]
ON Products.ID_Name = [Name].ID
INNER JOIN [Type]
ON Products.ID_Type = [Type].ID;