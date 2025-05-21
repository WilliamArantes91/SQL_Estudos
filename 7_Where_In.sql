-- Precisamos selecionar as linhas somente onde as cores são: prata, azul, branco, vermelho e preto

select * from DimProduct where ColorName in ('Silver','Blue','White','Red','Black')

