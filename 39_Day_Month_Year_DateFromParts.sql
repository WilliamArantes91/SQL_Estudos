-- Utilize as funções DAY, MONTH e YEAR para descobrir o dia, mês e ano da data: 18/05/2020

DECLARE @varData DATETIME = '18/05/2020'
SELECT DAY(@varData) AS 'Dia'
SELECT MONTH(@varData) AS 'Mês'
SELECT YEAR (@varData) AS 'Ano'

-- Utilize a função DATEFROMPARTS para obter uma data a partir das informações de dia, mês e ano.

DECLARE @varDia INT, @varMes INT, @varAno INT
SET @varDia = 15
SET @varMes = 6
SET @varAno = 2017

SELECT
	DATEFROMPARTS(@varAno,@varMes,@varDia) AS 'Data'

