-- Vamos criar agrupamentos com o group by
select * from DimProduct

select count(*) from DimProduct -- Nesse caso contamos o total de produtos (linhas da tabela)

--Suponhamos que precisamos saber um numero especifico de produtos com a marca Contoso por exemplo

select count(*) from DimProduct group by BrandName -- Nessa primeira etapa é visto uma tabela com números que a princípio não fazem sentido

--Então temos que colocar a coluna de análise para que os dados façam sentido logo:

select BrandName as 'Marca', count(*) as 'Quantidade Total' from DimProduct group by Brandname

-- Vamos trabalhar agora com a nossa tabela de lojas
select * from DimStore

--Na nossa tabela temos os tipos de lojas e a quantidade de funcionários, queremos saber quantos funcionários há em cada tipo de loja

select Storetype as 'Tipos de Lojas', sum(EmployeeCount) as 'Qtd.Funcionários' from DimStore group by StoreType

-- Vamos trabalhar agora com a tabela de Produtos
select * from DimProduct

-- Queremos calcular a média de custo (UnitCost) dos produtos de acordo com a marca (BrandName) do 
select BrandName as 'Marca', avg(UnitCost) as 'Média por marca' from DimProduct group by BrandName

--Queremos saber de acordo com a classe do produto (ClassName) qual é o valor máximo de preço unitário (UnitPrice)
select ClassName as 'Classe',min(UnitPrice) as 'Menor Valor', max(UnitPrice) as 'Maior Valor' from DimProduct group by ClassName
