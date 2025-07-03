-- 2. ALTER VIEW
-- a) Altere a view criada no exemplo 1 para incluir apenas os clientes do sexo feminino

GO
ALTER VIEW vsClientes AS
SELECT
	FirstName AS 'Nome',
	EmailAddress AS 'E-mail',
	BirthDate AS 'Data de Nascimento',
	Gender AS 'Genero'
FROM
	DimCustomer
WHERE
	Gender = 'F'

	GO 
	SELECT * FROM vsClientes