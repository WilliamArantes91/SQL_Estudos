/*Exemplo 1: Aplique um desconto de 10% em todos os preços dos produtos. Sua consulta final deve conter as colunas,
ProductKey, ProductName, UnitPrice e Preço com desconto*/

DECLARE @desconto FLOAT = 0.90

SELECT ProductKey AS 'ID',
	   ProductName AS 'Nome do Produto',
	   UnitPrice AS 'Preço Unitário',
	   UnitPrice * @desconto AS 'Preço com Desconto'
FROM
	DimProduct

/*Exemplo 2: Crie uma variável e de data para otimizar a consulta abaixo.*/

DECLARE @data_nascimento DATETIME = '01/01/1980'

SELECT
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	BirthDate AS 'Nascimento',
	'Cliente' AS 'Tipo'
FROM
	DimCustomer
WHERE
	BirthDate >= @data_nascimento

UNION

SELECT
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	BirthDate AS 'Nascimento',
	'Funcionário' AS 'Tipo'
FROM
	DimEmployee
WHERE
	BirthDate >= @data_nascimento
ORDER BY
	Nascimento