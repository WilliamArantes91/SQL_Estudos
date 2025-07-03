/*Criando a primeira View

Quanto falamos em Views, existem 3 opções envolvidas:
1. Criação de uma View
2. Alteração de uma View
3. Exclusão de uma View

Para cada uma dessas ações , temos um comando associado:
1. CREATE VIEW
2. ALTER VIEW
3. DROP VIEW*/

/*1. CREATE VIEW
--a) Crie uma view contendo as seguintes informações da tabela DimCustomer: FirstName, EmailAddress e BirthDate. Chame essa view de vwClientes.*/

CREATE VIEW vsClientes AS
SELECT 
	FirstName AS 'Nome',
	EmailAddress AS 'E-mail',
	BirthDate AS 'Data de Nascimento'
FROM
	DimCustomer
GO -- Demarcação
SELECT * FROM vsClientes