-- CASE ADITIVO
-- Os produtos da categoria 'TV and Video' terão um desconto de 10%
-- Se além de ser da categoria 'TV and Video', o produto for da subcategoria 'Televisions', receberá mais 5%. Total, 15%

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory

SELECT
	ProductKey,
	ProductName,
	ProductCategoryName,
	ProductSubcategoryName,
	UnitPrice,
	CASE	
		WHEN ProductCategoryName = 'TV and Video' THEN 
		CASE
			WHEN ProductSubcategoryName = 'Televisions' THEN 0.15
			ELSE 0.10
		END 
		ELSE 0
	END AS 'Desconto'
FROM 
	DimProduct
INNER JOIN
	DimProductSubcategory
ON
	DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
INNER JOIN
	DimProductCategory
ON
	DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

	


