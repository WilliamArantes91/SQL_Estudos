--Exercícios de Fixação: AND, OR e NOT
--1. Selecione todas as linhas da tabela dimEmployee de funcionários do sexo feminino e do departamento de finanças.
select * from DimEmployee where Gender = 'F' and DepartmentName = 'Finance'

--2. Selecione todas as linhas da tabela dimProduct de produtos da marca Contoso e da cor vermelha e que tenham um Uniprice maior ou igual a $100
select * from DimProduct where BrandName = 'Contoso' and ColorName = 'Red' and UnitPrice >= 100.0

--3. Selecione todas as linhas da tabela dimProduct com produtos da marca Litware ou da marca fabrikam ou da cor preta.
select * from DimProduct where BrandName = 'Litware' or BrandName = 'Fabrikam' or ColorName = 'Black'

--4. Selecione todas as linhas da tabela dimSalesTerritory onde o continente é a Europa mas o pais não é igual a Itália
select * from DimSalesTerritory where SalesTerritoryGroup = 'Europe' and not SalesTerritoryCountry = 'Italy'

--5. Selecione todas as linhas da tabela dimProduct onde a cor do Produto por ser igual a Preto ou Vermelho, mas a marca deve ser obrigatóriamente
-- igual a Fabrikam

select * from DimProduct where (ColorName = 'Black' or ColorName = 'Red') and BrandName = 'Fabrikam'

