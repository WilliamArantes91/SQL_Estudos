select * from DimCustomer

-- Na coluna CompanyName, temos que quando o valor é NULL a pessoa é física e quando é diferente de NULL é uma empresa (CNPJ)
-- A partir disso, podemos fazer a pergunta: Me mostre somente pessoas físicas
select * from DimCustomer where CompanyName is null
-- Me Mostre apenas pessoas juridicas (Empresas)
select * from DimCustomer where CompanyName is not null