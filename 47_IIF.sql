-- Função IIF: Alternativa ao CASE
-- Exemplo 1: Qual a categoria de risco do projeto abaixo, de acordo com a sua nota:
-- Risco alto: Classificação >= 5
-- Risco Baixo: Classificação < 5

DECLARE @varClassificacao INT
SET @varClassificacao = 9

SELECT
	IIF(
		@varClassificacao >= 5,
		'Risco Alto',
		'Risco Baixo') AS 'Resultado' -- IIF(Condição, Verdadeiro, Falso)

/* Exemplo 2: Crie uma coluna única de 'Cliente', contendo o nome do Cliente, seja ele uma pessoa ou uma empresa. Traga também a coluna de
CustomerKey e CustomerType*/

SELECT 
	CustomerKey,
	CustomerType,
	IIF(	
		CustomerType = 'Person',
		FirstName,
		CompanyName) AS 'Client'
FROM 
	DimCustomer