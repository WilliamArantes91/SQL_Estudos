select top(100) * from FactSales -- A tabela é muito grande, então pegamos os 100 primeiros como exemplo

--Suponhamos que nós queremos saber a quantidade total de produtos vendidos
select sum(SalesQuantity)  as 'Total Vendido',sum(ReturnQuantity) as 'Total Devolvido' from FactSales
