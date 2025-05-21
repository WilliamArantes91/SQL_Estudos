-- Vamos utilizar o group by junto com o order by
select * from DimStore

-- Queremos fazer um agrupamento do Tipo de Loja (StoreType) e saber de acordo com a loja a quantidade de funcionários (EmployeeCount)
--Porém quero que me mostre o tipo de loja com maior quantidade de funcionários e vá decrescendo

select StoreType,sum(EmployeeCount) as 'Qtd de Funcionários' from DimStore group by StoreType order by [Qtd de Funcionários] desc
--Posso colocar também no lugar do alias o sum(EmployeeCount)