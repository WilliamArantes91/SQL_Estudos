/*O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade
Devolvida para o canal de venda mais importante da empresa: Store.
Utilize uma função SQL para fazer essas consultas no seu banco de dados. Obs: Faça essa
análise considerando a tabela FactSales.*/

SELECT
	SUM(SalesQuantity) as 'Quantidade Vendida',
	SUM(ReturnQuantity) as 'Quantidade Devolvida'
FROM
	FactSales
WHERE 
	channelKey = 1

/*Uma nova ação no setor de Marketing precisará avaliar a média salarial de todos os clientes
da empresa, mas apenas de ocupação Professional. Utilize um comando SQL para atingir esse
resultado.*/

SELECT
	AVG(YearlyIncome) as 'Média Salarial Anual'
FROM
	DimCustomer
WHERE
	Occupation = 'Professional'
	
/*Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na
empresa. O seu gerente te pediu os seguintes números e informações:

a) Quantos funcionários tem a loja com mais funcionários?*/

SELECT
	MAX(EmployeeCount) as 'Quantidade de Funcionários'
FROM
	DimStore

/*b) Qual é o nome dessa loja?*/

SELECT
	TOP(1) StoreName as ' Nome da Loja',
	EmployeeCount as 'Qtd. de Funcionários'
FROM
	DimStore
ORDER BY 
	EmployeeCount DESC
	

/*c) Quantos funcionários tem a loja com menos funcionários?*/

SELECT
	MIN(EmployeeCount) as 'Quantidade de Funcionários'
FROM
	DimStore

/*d) Qual é o nome dessa loja?*/

SELECT
	TOP(1) StoreName as ' Nome da Loja',
	EmployeeCount as 'Qtd. de Funcionários'
FROM
	DimStore
WHERE
	EmployeeCount is not null
ORDER BY 
	EmployeeCount ASC

/*A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade
total de funcionários do sexo Masculino e do sexo Feminino.

a) Descubra essas duas informações utilizando o SQL.*/

SELECT 
	COUNT(Gender) as 'Masculino'	
FROM
	DimEmployee
WHERE
	Gender = 'M' 

SELECT 
	COUNT(Gender) as 'Feminino'
FROM
	DimEmployee
WHERE
	Gender = 'F' 

/*b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.*/

-- Funcionário mais antigo
SELECT
	MIN(HireDate) as 'Data de Contratação'
FROM	
	DimEmployee
WHERE
	Gender = 'M'

-- Funcionária mais antiga
SELECT
	MIN(HireDate) as 'Data de Contratação'
FROM	
	DimEmployee
WHERE
	Gender = 'F'

-- Dados do funcíonário mais antigo
SELECT 
	FirstName as 'Nome',
	LastName as 'Sobrenome',
	EmailAddress as 'E-mail',
	HireDate as 'Data de Contratação'	
FROM
	DimEmployee
WHERE
	HireDate = '1996-07-31'

-- Dados da funcionária mais antiga
SELECT 
	FirstName as 'Nome',
	LastName as 'Sobrenome',
	EmailAddress as 'E-mail',
	HireDate as 'Data de Contratação'
FROM
	DimEmployee
WHERE
	HireDate = '1998-01-26'


/*Agora você precisa fazer uma análise dos produtos. Será necessário descobrir as seguintes
informações:

a) Quantidade distinta de cores de produtos.
b) Quantidade distinta de marcas
c) Quantidade distinta de classes de produto*/

SELECT
	COUNT(DISTINCT ColorName) as 'Quantidade distinta de cores',
	COUNT(DISTINCT BrandName) as 'Quantidade distinta de marcas',
	COUNT(DISTINCT ClassName) as 'Quantidade distinta de classes'	
FROM
	DimProduct










