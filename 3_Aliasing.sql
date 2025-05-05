-- Comando AS: Renomeando colunas (aliasing)

--Selecione as 3 colunas da tabela dimProduct: ProductName, BrandName e ColorName

select ProductName as 'Nome do Produto',BrandName as Marca,ColorName as Cores from DimProduct

--OBS: quando o nome é composto temos que colocar aspas simples por exemplo 'Nome do Produto'