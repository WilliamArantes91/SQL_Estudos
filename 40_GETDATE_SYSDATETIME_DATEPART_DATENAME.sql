-- GETDATE: Retorna a data/hora atual do sistema
-- SYSDATETIME: Retorna a data/hora atual do sistema (mais preciso que a GETDATE)
-- DATENAME e DATEPART: Retornam informações (dia, mês, ano, semana, etc) de um data.


SELECT GETDATE() AS 'Data Atual'
SELECT SYSDATETIME() AS 'Data Atual com maior precisão'

--DATENAME: Retorna em formato de texto
DECLARE @varData DATETIME
SET @varData = GETDATE()

SELECT
	DATENAME(DAY,@varData) AS 'Dia',
	DATENAME(MONTH,@varData) AS 'Mês',
	DATENAME(YEAR,@varData) AS 'Ano',
	DATENAME(DAYOFYEAR, @varData) AS 'Dia do ano'

--DATEPART: retorna em formato de número

DECLARE @varData DATETIME
SET @varData = GETDATE()

SELECT
	DATEPART(DAY,@varData) AS 'Dia',
	DATEPART(MONTH,@varData) AS 'Mês',
	DATEPART(YEAR,@varData) AS 'Ano',
	DATEPART(DAYOFYEAR, @varData) AS 'Dia do ano'