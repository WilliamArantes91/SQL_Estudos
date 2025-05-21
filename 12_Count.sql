-- O Count nos permite fazer uma contagem de valores de uma coluna ou uma tabela
select * from DimProduct

select count(*) as 'Total de linhas da minha tabela' from DimProduct -- Contagem da minha tabela

select count(ProductName) as 'Quantidade de produtos' from DimProduct --Contagem de uma coluna

--OBS: Prestar atenção nos valores NULL, eles não entram na contagem

