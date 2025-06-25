/*Declare 4 variáveis inteiras. Atribua os seguintes valores a elas:
valor1 = 10
valor2 = 5
valor3 = 34
valor4 = 7DECLARE @valor1 INT = 10SELECT @valor1DECLARE @valor2 INT = 5SELECT @valor2DECLARE @valor3 INT = 34SELECT @valor3DECLARE @valor4 INT = 7SELECT @valor4/*a) Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame essa variável de soma.*/DECLARE @soma INT = @valor1+@valor2SELECT @soma AS 'Soma'/*b) Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4. Chame essa variável de subtracao.*/DECLARE @sub INT = @valor3-@valor4SELECT @sub AS 'Subtração'/*c) Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o valor4. Chame essa variável de multiplicacao.*/DECLARE @mult INT = @valor1*@valor4SELECT @mult AS 'Multiplicação'/*d) Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame
essa variável de divisao. Obs: O resultado deverá estar em decimal, e não em inteiro.*/DECLARE @div FLOAT = CAST(@valor3 AS FLOAT) / CAST(@valor4 AS FLOAT)SELECT @div AS 'Divisão'/*e) Arredonde o resultado da letra d) para 2 casas decimais.*/SELECT ROUND(@div,2)*//*2. Para cada declaração das variáveis abaixo, atenção em relação ao tipo de dado que deverá ser
especificado.a) Declare uma variável chamada ‘produto’ e atribua o valor de ‘Celular’.b) Declare uma variável chamada ‘quantidade’ e atribua o valor de 12.
c) Declare uma variável chamada ‘preco’ e atribua o valor 9.99.
d) Declare uma variável chamada ‘faturamento’ e atribua o resultado da multiplicação entre
‘quantidade’ e ‘preco’.
e) Visualize o resultado dessas 4 variáveis em uma única consulta, por meio do SELECT.DECLARE @produto VARCHAR(10) = 'Celular'DECLARE @quantidade INT = 12DECLARE @preco FLOAT = 9.99DECLARE @faturamento FLOAT = @quantidade*@precoSELECT @produto, @quantidade, @preco, @faturamento*//*3. Você é responsável por gerenciar um banco de dados onde são recebidos dados externos de
usuários. Em resumo, esses dados são:
- Nome do usuário
- Data de nascimento
- Quantidade de pets que aquele usuário possui
Você precisará criar um código em SQL capaz de juntar as informações fornecidas por este
usuário. Para simular estes dados, crie 3 variáveis, chamadas: nome, data_nascimento e
num_pets. Você deverá armazenar os valores ‘André’, ‘10/02/1998’ e 2, respectivamente.
O resultado final a ser alcançado é mostrado no print abaixo:Meu nome é André, nasci em 10/02/1998 e tenho 2 petsDECLARE @nome VARCHAR(30) = 'André'DECLARE @data DATETIME = '10/02/1998'DECLARE @qtd_pets INT = 2SELECT @nome, @data, @qtd_petsPRINT 'Meu nome é ' + @nome + ',nasci em ' + FORMAT(@data,'dd/MM/yyyy') + ' e tenho ' + CAST(@qtd_pets AS VARCHAR(3)) + ' pets.'*//*4. Você acabou de ser promovido e o seu papel será realizar um controle de qualidade sobre as
lojas da empresa.
A primeira informação que é passada a você é que o ano de 2008 foi bem complicado para a
empresa, pois foi quando duas das principais lojas fecharam. O seu primeiro desafio é descobrir
o nome dessas lojas que fecharam no ano de 2008, para que você possa entender o motivo e
mapear planos de ação para evitar que outras lojas importantes tomem o mesmo caminho.
O seu resultado deverá estar estruturado em uma frase, com a seguinte estrutura:
‘As lojas fechadas no ano de 2008 foram: ’ + nome_das_lojas
Obs: utilize o comando PRINT (e não o SELECT!) para mostrar o resultado.SELECT * FROM DimStore WHERE StoreKey = 119 OR StoreKey = 129DECLARE @lojas_fechadas VARCHAR(50)SET @lojas_fechadas = ''SELECT	@lojas_fechadas = @lojas_fechadas + StoreName + ','FROM	DimStoreWHERE 	FORMAT(CloseDate, 'yyyy') = 2008SELECT @lojas_fechadasPRINT('As lojas fechadas no ano de 2008 foram: ' + @lojas_fechadas)*//*5. Você precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para
uma subcategoria específica: ‘Lamps’.
Utilize o conceito de variáveis para chegar neste resultado.*/DECLARE @varIdSubcategoria INTDECLARE @varNomeSubcategoria VARCHAR(30) SET @varNomeSubcategoria = 'Lamps'SET @varIdSubcategoria = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName = @varNomeSubcategoria)SELECT	* FROM	DimProductWHERE 	ProductSubcategoryKey = @varIdSubcategoria