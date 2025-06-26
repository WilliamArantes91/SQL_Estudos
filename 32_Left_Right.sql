-- LEFT ---> Extrai uma determinada quantidade de caracteres de um texto, da esqueda para a direita.
-- RIGHT ---> Extrai uma determinada quantidade de caracteres de um texto, da direita para a esqueda.

-- Faça uma consulta a tabela DimProduct e divida a coluna StyleName em duas partes.

SELECT
	*
FROM
	DimProduct

SELECT LEFT('Product0101001',7)
SELECT RIGHT('Product0101001',7)

SELECT
	ProductName AS 'Produto',
	UnitPrice AS 'Preço',
	LEFT(StyleName,7) AS 'Cod 1',
	RIGHT(StyleName,7) AS 'Cod 2'
FROM
	DimProduct
