-- Esse comando permite fazer um filtro após o agrupamento

select * from DimProduct

--Vamos fazer um agrupamento da quantidade de produtos de acordo com a marca
--Porém queremos saber somente as marcas com a contagem total maior ou igual a 200

select BrandName as 'Marca', count(*) as 'Total por Marca' from DimProduct group by BrandName having count(*) >= 200

-- Temos então que where filtra a tabela original, antes do agrupamento e o having filtra a tabela depois de agrupada