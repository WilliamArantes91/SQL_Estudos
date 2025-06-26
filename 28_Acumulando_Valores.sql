-- Acumulando valores em uma variável
-- Exemplo: printe na tela uma lista com os nomes das funcionárias do departamento marketing

SELECT
	FirstName,
	DepartmentName
FROM
	DimEmployee
WHERE
	DepartmentName = 'Marketing' AND Gender = 'F'

	--Solução
DECLARE @varListaNomes VARCHAR(50)
SET @varListaNomes = ''

SELECT
	@varListaNomes = @varListaNomes + FirstName + ',' + CHAR(10)-- CHAR(10) para pular uma linha
FROM
	DimEmployee
WHERE 
	DepartmentName = 'MarkeTing' AND Gender = 'F'

PRINT LEFT(@varListaNomes,DATALENGTH(@varListaNomes) - 2)