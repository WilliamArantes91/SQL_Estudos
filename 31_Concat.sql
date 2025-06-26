-- CONCAT: Permite juntar mais de um texto em uma única palavra

--Faça uma consulta a tabela DimCustomer onde seja possível visualizar o nome completo de cada cliente

SELECT
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	CONCAT(FirstName,' ',LastName) AS 'Nome Completo'
FROM
	DimCustomer