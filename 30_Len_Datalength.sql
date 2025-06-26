--LEN e DATALENGTH: Retorna a quantidade de caracteres de uma palavra

SELECT LEN('William Arantes') AS 'Len',
	   DATALENGTH('William Arantes      ') AS 'Datalength' -- Conta os espaços adicionais