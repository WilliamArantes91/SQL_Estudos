-- TRANSLATE E STUFF: Outras funções de substituição
-- TRANSLATE: Subsittui cada caractere na ordem encontrada no texto

SELECT TRANSLATE('10.241/444.124k23/1','./k','---')
SELECT TRANSLATE('ABCD-490123','ABCD','WXYZ')

--STUFF: Substitui qualquer texto com uma quanidade de caracteres limitados,por outro texto

SELECT STUFF('VBA Impressionador',1,3,'Excel')