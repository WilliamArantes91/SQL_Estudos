/*Tipos de dados

O tipo de dado é a maneira como o SQL consegue diferenciar cada valor dentro de um banco de dados.

a) Inteiro - 1,100,569 (INT)

b) Decimal - 10.33,90.91,410.787 (FLOAT) / (DECIMAL(N,M)) onde:
   N é o número de dígitos que o número pode ter, incluindo as casas decimais
   M é o número máximo de casas decimais EX: 10.33 - DECIMAL(4,2)

c) Texto/String
Exemplos: 'William', 'Celular','Notebook', '44'
O SQL entende um texto: VARCHAR(100) - VARCHAR(N) onde N é o número de caracteres que o texto pode ter

d) Data:
	Exemplos: '01/01/2021', '23/03/2025'
O SQL entende uma data: DATETIME*/

-- SQL VARIANT PROPERTY

SELECT SQL_VARIANT_PROPERTY(10,'BaseType')
SELECT SQL_VARIANT_PROPERTY(10.33,'BaseType')
SELECT SQL_VARIANT_PROPERTY('William','BaseType')
SELECT SQL_VARIANT_PROPERTY('10/05/2025','BaseType')

/*Função CAST: Função para especificar o tipo dos dados.
int: inteiro, float: decimal, varchar: string/texto, datetime: data e hora*/

SELECT CAST(21.45 AS INT)
SELECT CAST('20/06/2021' AS DATETIME)
SELECT CAST('15.6' AS FLOAT)
SELECT CAST(18.8 AS FLOAT)
SELECT CAST(19 AS VARCHAR)
SELECT SQL_VARIANT_PROPERTY(CAST('10/05/2025' AS DATETIME),'BaseType')

/*FUNÇÃO FORMAT: Função para formatação de valores no SQL (SELECT FORMAT(valor, formato)
--a) Numéricos:*/
SELECT FORMAT(1000, 'N')
SELECT FORMAT(1000, 'G')

-- b) Personalizados:
SELECT FORMAT(123456789, '###-##-####')

-- c)Data:
SELECT FORMAT(CAST('21/03/2024' AS DATETIME), 'dd/MM/yyyy')
SELECT FORMAT(CAST('21/03/2024' AS DATETIME), 'MMMM')

-- FUNÇÕES DE ARREDONDAMENTO
SELECT 10 + 20
SELECT 20-5
SELECT 31*40
SELECT 431.0/23

--ROUND
SELECT ROUND(18.739130,2)

--ROUND(TRUNCAR)
SELECT ROUND(18.739130,3,1)

--FLOOR
SELECT FLOOR(18.739130)

--CEILING
SELECT CEILING(18.739130)

