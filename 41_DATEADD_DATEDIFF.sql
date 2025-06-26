-- DATEADD: Adiciona ou subtrai uma determinada quantidade de dias, meses ou anos a uma data
-- DATEDIFF: Calcula a diferença entre duas datas

DECLARE @varData1 DATETIME, @varData2 DATETIME, @varData3 DATETIME
SET @varData1 = '10/07/2020'
SET @varData2 = '05/03/2020'
SET @varData3 = '14/11/2021'

-- DATEADD
SELECT
	DATEADD(DAY, 30, @varData1) --(O que eu quero somar, quantidade, data)

--DATEDIFF
	
SELECT
	DATEDIFF(WEEK,@varData2,@varData3)