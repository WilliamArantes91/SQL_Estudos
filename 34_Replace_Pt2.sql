/*Crie uma consulta a partir de DimCustomer onde você retorna o Nome Completo dos Clientes, a coluna Sexo(abrev) e uma outra coluna de sexo
substituindo M por Masculino e F por Feminino*/
--Replace dentro de outro Replace

SELECT
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	Gender AS 'Sexo',
	REPLACE(REPLACE(Gender,'M','Masculino'),'F','Feminino') AS 'Sexo' --Função dentro de outra função (a ordem importa!)
FROM
	DimCustomer
