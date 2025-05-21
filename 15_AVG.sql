-- A Função AVG tiramos a media dos valores de uma coluna

select * from DimCustomer

-- A coluna YearlyIncome é a renda anual dos clientes
-- Queremos saber a media de renda anual
select avg(YearlyIncome) as 'Média Renda Anual' from DimCustomer