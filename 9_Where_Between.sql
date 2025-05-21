-- O comando Between nos permite filtrar nossa tabela num intervalo de valores

--Precisamos mostrar os produtos onde o preço está entre $50 e $100

select * from DimProduct where UnitPrice between 50 and 100

select * from DimEmployee where HireDate between '2000-01-01' and '2000-12-31'