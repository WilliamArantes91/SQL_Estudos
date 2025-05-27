--------------- FACTSALES --------------------
/*
1. a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas
(channelkey).*/

SELECT 
	TOP(100) * 
FROM
	FactSales

SELECT
	channelKey as 'ID',
	SUM(SalesQuantity) as 'Quantidade Vendida'	
FROM
	FactSales
GROUP BY
	channelKey

/*b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade
total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).*/

SELECT
	StoreKey as 'ID',SUM(SalesQuantity) as 'Qtd. Total Vendida', SUM(ReturnQuantity) as 'Qtd. Total Devolvida'
FROM
	FactSales
GROUP BY
	StoreKey
	
/*c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas
para o ano de 2007.*/
SELECT
	channelKey as 'Canal de Vendas',SUM(SalesAmount) as 'Valor total vendido'
FROM
	FactSales
WHERE
	DateKey between '20070101' and '20071231'
GROUP BY
	channelKey

/*Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor
total vendido (SalesAmount) por produto (ProductKey).

a) A tabela final deverá estar ordenada de acordo com a quantidade vendida e, além disso,
mostrar apenas os produtos que tiveram um resultado final de vendas maior do que
$5.000.000.*/

SELECT
	ProductKey as 'Produto', SUM(SalesAmount) as 'Valor Total Vendido'
FROM
	FactSales	
GROUP BY
	ProductKey
HAVING 
	SUM(SalesAmount) >= 5000000
ORDER BY
	SUM(SalesAmount) desc


/*b) Faça uma adaptação no exercício anterior e mostre os Top 10 produtos com mais vendas.
Desconsidere o filtro de $5.000.000 aplicado.*/

SELECT
	TOP(10) ProductKey as 'Produto', SUM(SalesAmount) as 'Valor Total Vendido'
FROM
	FactSales	
GROUP BY
	ProductKey
ORDER BY
	SUM(SalesAmount) desc

-----------------FACTONLINESALES--------------------
SELECT
	TOP(10) *
FROM
	FactOnlineSales

/*a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID
(CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna
SalesQuantity).*/
SELECT
	CustomerKey as 'ID do cliente', SUM(SalesQuantity) as 'Qtd. Vendas'
FROM
	FactOnlineSales
GROUP BY
	CustomerKey
ORDER BY
	SUM(SalesQuantity) DESC -- Resultado: ID - 19037 Qtd.Vendas: 66284

/*b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto
e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).*/
SELECT
	ProductKey as 'ID do Produto', SUM(SalesQuantity) as 'Qtd. Vendas'
FROM
	FactOnlineSales
WHERE
	CustomerKey = 19037
GROUP BY
	ProductKey
ORDER BY 
	SUM(SalesQuantity) DESC

--------------- DIMPRODUCT ---------------
SELECT
	TOP(10) *
FROM
	DimProduct

/*a) Faça um agrupamento e descubra a quantidade total de produtos por marca.*/

SELECT 
	BrandName as 'Marca', COUNT(BrandName) as 'Quantidade Total'
FROM
	DimProduct
GROUP BY
	BrandName
/*b) Determine a média do preço unitário (UnitPrice) para cada ClassName.*/

SELECT
	ClassName as 'Classe', AVG(UnitPrice) as 'Preço Médio'
FROM
	DimProduct
GROUP BY
	ClassName

/*c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui.*/
SELECT
	ColorName as 'Cores', SUM(Weight) as 'Peso Total'
FROM
	DimProduct
GROUP BY
	ColorName

/*Você deverá descobrir o peso total para cada tipo de produto (StockTypeName).
A tabela final deve considerar apenas a marca ‘Contoso’ e ter os seus valores classificados em
ordem decrescente.*/
SELECT
	StockTypeName as 'Estoque', SUM(Weight) as 'Peso Total'
FROM
	DimProduct
WHERE
	BrandName = 'Contoso'
GROUP BY
	StockTypeName
ORDER BY
	SUM(Weight) DESC

/*Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as
16 opções de cores?*/

-- Quantidade de Cores
SELECT
	COUNT(DISTINCT ColorName)
FROM
	DimProduct

SELECT 
	BrandName as 'Marcas', COUNT(DISTINCT ColorName) as 'Qtd. de Cores'
FROM
	DimProduct
GROUP BY
	BrandName
-- Desta forma, nenhuma das marcas dos produtos possuem à disposição todas as 16 opções de cores


------------------------------DIMCUSTOMER --------------------------------

SELECT 
	TOP(10) *
FROM
	DimCustomer

/*Faça um agrupamento para saber o total de clientes de acordo com o Sexo e também a média
salarial de acordo com o Sexo. Corrija qualquer resultado “inesperado” com os seus
conhecimentos em SQL.*/
SELECT
	Gender as 'Genero', COUNT(Gender) as 'Quantidade', AVG(YearlyIncome) as 'Média Salárial Anual'
FROM
	DimCustomer
WHERE
	Gender is not NULL
GROUP BY
	Gender

/*Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de
acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer
esse agrupamento.*/

SELECT
	Education as 'Escolaridade',COUNT(Education) as 'Quantidade',AVG(YearlyIncome) as 'Média Salarial Anual'
FROM
	DimCustomer
WHERE
	Education is not NULL
GROUP BY 
	Education

----------------- DIMEMPLOYEE ------------------
SELECT
	*
FROM
	DimEmployee

/*Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o
Departamento (DepartmentName). Importante: Você deverá considerar apenas os
funcionários ativos.*/

SELECT
	DepartmentName as 'Departamento', COUNT(DepartmentName) as 'Qtd. de Funcionários'
FROM
	DimEmployee
WHERE
	EndDate is NULL
GROUP BY
	DepartmentName

/*Faça uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). Você
deve considerar apenas as mulheres, dos departamentos de Production, Marketing,
Engineering e Finance, para os funcionários contratados entre os anos de 1999 e 2000.*/

SELECT
	Title as 'Cargo', SUM(VacationHours) as 'Horas totais de Férias'
FROM
	DimEmployee
WHERE 
	Gender = 'F' and DepartmentName in ('Production','Marketing','Enginnering','Finance') and StartDate between '1999-01-31' and '2000-12-31'
GROUP BY
	Title
	



