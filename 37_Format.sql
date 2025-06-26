-- FORMAT: Formata um valor de acordo com uma formatação

-- 1. Formatação de Número

-- 5123

-- Geral
SELECT FORMAT(5123, 'G')

--Número
SELECT FORMAT(5123, 'N')

-- Moeda
SELECT FORMAT(5123, 'C')

-- 2. Formatação de Data

-- 23/04/2020

-- dd/MM/yyyy
SELECT FORMAT(CAST('23/04/2020' AS DATETIME),'dd/MMMM/yyyy','en-US') -- Posso colocar o idioma também

-- dia
SELECT FORMAT(CAST('23/04/2020' AS DATETIME),'dddd') --dd,ddd,dddd

-- mês

SELECT FORMAT(CAST('23/04/2020' AS DATETIME),'MMMM') -- MM,MMM,MMMM
-- ano

SELECT FORMAT(CAST('23/04/2020' AS DATETIME),'yyyy') --yy,yyyy 

--Formataçao personalizada

-- 1234567 ---> 12-34-567

SELECT FORMAT(1234567,'##-##-###')