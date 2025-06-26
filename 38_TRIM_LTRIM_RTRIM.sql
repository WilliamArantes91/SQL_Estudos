-- Funções para retirar espaços adicionais dentro e um texto
-- TRIM: Retira espaços adicionais a esquerda e a direita do texto
-- LTRIM: Retira espaços adicionais a esquerda do texto
-- RTRIM: Retira espaços adicionais a direita do texto

-- Utilize as funções acima no código '   ABC123   '

DECLARE @varCodigo VARCHAR(30) = '   ABC123   '

SELECT TRIM(@varCodigo) AS 'TRIM',
	    LTRIM(@varCodigo) AS 'LTRIM',
	    RTRIM(@varCodigo) AS 'RTRIM'