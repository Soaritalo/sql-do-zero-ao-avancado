--Clientes mais antigos, tem mais frequência de transação?

SELECT 
c.IdCliente,
c.DtCriacao,
julianday(substr(c.DtCriacao, 1, 10)) AS DiasDesdeCriacao,
julianday('now'),
julianday('now') -  julianday(substr(c.DtCriacao, 1, 10)) as idadeCliente

FROM clientes as c 
left join transacoes as t2
on t2.idCliente = c.idCliente
group by idadeCliente
order by idadeCliente desc