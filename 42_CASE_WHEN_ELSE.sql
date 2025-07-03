-- CASE: A função CASE permite tratar condições no SQL

/* CASE
		WHEN teste_logico THEN 'resultado1'
		ELSE 'resultado2'
	END


-- Determine a situação do aluno. Média >=6: aprovado. Caso contrário: reprovado

DECLARE @varNota FLOAT
SET @varNota = 1

SELECT
	CASE 
		WHEN @varNota >= 6 THEN  'Aprovado' 
		ELSE 'Reprovado' 
	END AS 'Resultado'

-- A data de vencimento de um produto é no dia 10/03/2022. Faça um teste lógico para verificar se um produto passou da validade ou não.

DECLARE @validade DATETIME
DECLARE @data DATETIME

SET @validade = '10/03/2022'
SET @data = '10/03/2022'

SELECT
CASE
	WHEN @data > @validade THEN 'O produto está vencido!'
	ELSE 'Dentro da validade!'
END AS 'Validade'*/

-- Faça um SELECT das colunas CustomerKey, FirstName e Gender na tabela DimCustomer e utilize o CASE para criar
-- uma 4º coluna com a informação de 'Masculino' ou 'Feminino

SELECT 
	CustomerKey,
	FirstName,
	Gender,
	CASE
		WHEN Gender = 'M' THEN 'Masculino'
		ELSE	
			'Feminino'
	END AS 'Gender Text'
FROM
	DimCustomer

	
	
