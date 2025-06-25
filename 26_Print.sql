SET NOCOUNT ON

/*Exemplo 1: Printe na tela a quantidade de lojas On e a quantidade de lojas Off da tabela DimStore.
Utilize variáveis para isso*/

DECLARE @lojas_abertas INT = (SELECT COUNT(*) FROM DimStore WHERE Status = 'On')
DECLARE @lojas_fechadas INT = (SELECT COUNT(*) FROM DimStore WHERE Status = 'Off')

SELECT @lojas_abertas AS 'Lojas Abertas', @lojas_fechadas AS 'Lojas Fechadas'

PRINT 'O Total de lojas abertas é de: ' + CAST(@lojas_abertas AS VARCHAR(30))
PRINT 'O Total de lojas fechadas é de: ' + CAST(@lojas_fechadas AS VARCHAR(30))
