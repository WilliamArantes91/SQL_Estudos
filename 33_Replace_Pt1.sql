--REPLACE: Substitui um determinado texto por outro texto
--No texto 'O excel é melhor' substitua 'Excel' por 'SQL'

SELECT REPLACE('O Excel é o melhor','Excel','SQL')  --(Texto,Texto antigo, texto novo)

/*Crie uma consulta a partir de DimCustomer onde você retorna o Nome Completo dos Clientes, a coluna Sexo(abrev) e uma outra coluna de sexo
substituindo M por Masculino e F por Feminino*/

SELECT
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	Gender AS 'Sexo',
	REPLACE(Gender,'M','Masculino') AS 'Sexo'
FROM
	DimCustomer
