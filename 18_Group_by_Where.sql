-- Combinação do group by com where

select * from DimProduct

-- Queremos saber a quantidade total de produtos de acordo com a cor
select ColorName as 'Cores',count(*) as 'Quantidade de Produtos' from DimProduct group by ColorName

--Porem queremos que a quantidade seja somente da marca contoso
select ColorName as 'Cores',count(*) as 'Quantidade de Produtos' from DimProduct where BrandName = 'Contoso' group by ColorName 
