-- Comando que nos permite filtrar os dados da nossa tabela (WHERE)

select * from DimProduct

-- Suponhamos que temos que descobrir o maior preço do produto
select top(1) UnitPrice from DimProduct order by UnitPrice desc

--Agora queremos saber quais produtos tem o valor maior que $1000.00
select ProductName as 'Produto', Unitprice as 'Valor' from DimProduct where UnitPrice >= 2000 order by UnitPrice asc

-- Quais são as marcas que nos temos na tabela de produtos?
select distinct BrandName as 'Marcas' from DimProduct

--Selecionar as linhas de produtos onde o fabricante é a Fabrikam e a cor é Preta
select * from DimProduct where BrandName = 'Fabrikam' and ColorName = 'Black'

--Filtrar uma coluna de datas (Clientes que nasceram depois de 31 de dezembro de 1970)
select Firstname as 'Nome', BirthDate as 'Data de Nascimento' from DimCustomer where BirthDate >= '1970-12-31' order by BirthDate asc

--Filtrar os dados da coluna com where em conjunto com 'and' (Filtrar os dados onde a marca é Fabrikam e a cor é preta)
select * from DimProduct where BrandName = 'Fabrikam' and Colorname = 'Black'

--Filtrar os dados da coluna com where em conjunto com 'or' (Filtrar os dados onde a marca é Contoso ou Fabrikam)
select * from DimProduct where BrandName = 'Contoso' or BrandName = 'Fabrikam'

--Filtrar os dados da coluna com where em conjunto com 'not' (Filtrar os dados onde o departamento não é marketing)
select * from DimEmployee where not DepartmentName = 'Marketing'



