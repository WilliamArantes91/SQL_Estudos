-- Suponhamos que precisamos trazer somente os produtos que contenha MP3 Player (O like é utilizado quando queremos analizar parte do texto)
-- O % é como se fosse a representação de tudo que eu tenho antes e depois da palavra MP3 Player
select * from DimProduct where ProductName like '%MP3 Player%'

-- Suponhamos que eu quero as informações somente de ProductDescription onde começa com 'Type'
select * from DimProduct where ProductDescription like 'Type%' -- Observe que omitimos o % no inicio da palavra