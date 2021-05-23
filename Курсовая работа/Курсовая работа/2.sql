--Показать список продуктов, заказываемых у данного поставщика
SELECT Ingredients.ID
     , Ingredients.[Name]
	 , Providers.ID
	 , Providers.[Name] AS ProviderName
FROM Ingredients_Providers
INNER JOIN Ingredients
ON Ingredients_Providers.ID_Ingredient = Ingredients.ID
INNER JOIN Providers
ON Ingredients_Providers.ID_Provider = Providers.ID
WHERE Providers.[Name] LIKE '%милк%'