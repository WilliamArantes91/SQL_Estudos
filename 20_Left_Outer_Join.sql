--LEFT (OUTER) JOIN (Todas as Linhas da primeira tabela + interseção com a segunda tabela

SELECT TOP(100) * FROM FactSales
	SELECT * FROM DimChannel 



SELECT
	TOP(100) Factsales.channelKey,
			 SUM(Factsales.SalesQuantity) as 'Qtd.Total',
			 DimChannel.ChannelName
FROM
	FactSales
LEFT JOIN
	DimChannel
ON
	FactSales.channelKey = DimChannel.ChannelKey
GROUP BY
	FactSales.channelKey,
	DimChannel.ChannelName
ORDER BY
	FactSales.channelKey





