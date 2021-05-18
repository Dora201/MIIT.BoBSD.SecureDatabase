--Показать стоимость произведенного товара, у которого крайняя дата потребления находится в заданном промежутке.
SELECT Products.ID
     , Products.ID_Name
     , [Name].[Name]
     , Products.ID_Type
     , [Type].[Type]
	 , Products.Price
	 , Products.InceptDate
	 , Products.ExpirationDate
FROM Products
INNER JOIN [Name]
ON Products.ID_Name = [Name].ID
INNER JOIN [Type]
ON Products.ID_Type = [Type].ID
WHERE Products.ExpirationDate BETWEEN '2021-05-25' AND '2021-06-04';