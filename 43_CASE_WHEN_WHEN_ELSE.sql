/* Crie um código para verificar a nota do aluno e determinar a situação:
- Aprovado: nota maior ou igual a 6
- Prova final: nota entre 4 e 6
- Reprovado: nota abaixo de 4*/

DECLARE @varNota FLOAT
SET @varNota = 10

SELECT
	CASE 
		WHEN @varNota >= 6 THEN 'Aprovado'
		WHEN @varNota >= 4 THEN 'Prova final'
	    ELSE 'Reprovado'
    END AS 'Resultado'

/*Classifique o produto de acordo com o seu preço:
-- Preço >= 40000: Luxo
-- Preço >= 10000 e Preço < 40000: Economico 
-- Preço < 10000: Básico*/

DECLARE @preco FLOAT
SET @preco = 39999

SELECT
	CASE			
		WHEN @preco >= 40000 THEN 'Luxo'
		WHEN @preco >= 10000 THEN 'Econômino'
	    ELSE 'Básico'
	END AS 'Classificação'


	-- Crie uma coluna para subsituir o 'M' por 'Masculino' e 'F' por feminino. Verifique se será necessário fazer alguma correção.

SELECT 
	CustomerKey,
	FirstName,
	Gender,
	CASE
		WHEN Gender = 'M' THEN 'Masculino'
		WHEN Gender IS NULL THEN 'Empresa'
		ELSE	
			'Feminino'
	END AS 'Gender Text'
FROM
	DimCustomer
