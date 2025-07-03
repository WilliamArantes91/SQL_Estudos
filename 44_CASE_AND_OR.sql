-- CASE/AND e CASE/OR

--Faça uma consula a tabela DimProduct, e retorne as colunas ProductName, BrandName, ColorName, UnitPrice e uma coluna de preço com desconto.

SELECT
	ProductName,
	BrandName,
	ColorName,
	UnitPrice,
	CASE
		WHEN BrandName = 'Contoso' AND ColorName = 'Red' THEN 0.1
		WHEN BrandName = 'Litware' OR BrandName = 'Fabrikam' THEN  0.05
		ELSE 0
	END AS 'New UnitPrice'
FROM
	DimProduct

--a) Caso o produto seja de marca Contoso E da cor Red, o desconto do produto será de 10%. Caso contrário, não terá nenhum desconto.

--b) Caso o produto seja da marca Litware OU Fabrikam, ele receberá um desconto de 5%. Caso contrário, não terá nenhum desconto

