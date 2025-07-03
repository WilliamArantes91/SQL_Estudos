-- UPPER ---> Transforma um texto em maiúscula
-- LOWER ---> Transforma um texto em minúscula
-- Faça uma consulta a tabela DimCustomer e utilize as funções UPPER e LOWER na coluna de FirstName para observar o resultado

SELECT
	LOWER(FirstName) AS 'Minúscula',
	UPPER(FirstName) AS 'Maiúscula'
FROM
	DimCustomer