--Coment�rios em C�digos
-- 1. Criar uma frase  que explica o funcionamento  de um determinado c�digo
-- 2. Comentar apenas uma parte do c�digo e executar o restante
-- 3. Comentar todo um trecho de um c�digo de maneira r�pida e otimizada

-- Esse c�digo seleciona todas as colunas da tabela DimCustomer
select
	* 
from 
	DimCustomer

/*select
	* 
from
	DimStore*/

select
	--StoreKey,
	StoreName,
	StorePhone 
from
	DimStore

select 
	* 
from 
	DimProduct

select
	ProductName,
	BrandName
from
	DimProduct

-- O comando SELECT...FROM: Retorna todas as linhas da tabela, independente das colunas selecionadas

select
	*
from
	DimEmployee

--Vamos trazer duas colunas, a de primeiro nome e a de e-mail
select
	FirstName,EmailAddress
from
	DimEmployee

--Comandos SELECT TOP(N) e TOP(N) PERCENT: retorna as N primeiras linhas

select top(10)
	FirstName,EmailAddress
from
	DimEmployee

--Retorna as 10% primeiras linhas da tabela de clientes
select top(10) percent
	*
from
	DimCustomer
