-- Retorno do valor máximo e minino de uma tabela

select * from DimProduct

--Qual o maior e menor valor de um produto da nossa tabela?

select max(UnitPrice) as 'Maior Valor', min(UnitPrice) as 'Menor Valor' from DimProduct

