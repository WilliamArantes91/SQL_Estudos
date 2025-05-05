--Comando SELECT DISTINCT: Retorna os valores distintos de uma tabela

--Retorne todas as linhas da tabela DimProduct
select * from DimProduct
--Retorne os valores distintos da coluna ColorName da tabela dimProduct  
select distinct ColorName from dimProduct
--Retorne todas as linhas da tabela dimEmployee
select * from DimEmployee
--Retorne todos os valores distintos da coluna DepartmentName da tabela dimEmployee
select distinct DepartmentName from DimEmployee
