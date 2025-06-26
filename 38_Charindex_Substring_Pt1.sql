-- CHARINDEX: Descobre uma posição de um determinado caractere dentro de um texto
-- SUBSTRING: Extrai alguns caracteres dentro de um texto

SELECT 'Raquel Moreno' AS 'Nome'

-- Descubra a posição em que começa o sobrenome da Raquel utilizando a função CHARINDEX

SELECT CHARINDEX('Moreno','Raquel Moreno') -- Posso utilizar somente o caracter ou o texto em si

-- Extraia o sobrenome da Raquel utilizando a função SUBSTRING

SELECT SUBSTRING('Raquel Moreno',8,6) -- (Texto,indice(posição inicial), quantidade de caracteres a ser extraido)

--Combine as funções CHARINDEX e SUBSTRING para extrair de forma automática qualquer sobrenome

SELECT CHARINDEX('','Bernardo Cavalcanti') AS 'Posição'
SELECT SUBSTRING('Bernardo Cavalcanti',CHARINDEX(' ','Bernardo Cavalcanti') + 1 ,10) AS 'Sobrenome'

--Usando Variáveis

DECLARE @varNome VARCHAR(100)
SET @varNome = 'Luis Dias'

SELECT SUBSTRING(@varNome, CHARINDEX(' ',@varNome),100) AS 'Sobrenome'

