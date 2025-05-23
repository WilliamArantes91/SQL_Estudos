--------------- FACTSALES --------------------
/*
1. a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas
(channelkey).*/SELECT 	TOP(100) * FROM	FactSalesSELECT	channelKey as 'ID',	SUM(SalesQuantity) as 'Quantidade Vendida'	FROM	FactSalesGROUP BY	channelKey/*b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade
total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas
para o ano de 2007.*/