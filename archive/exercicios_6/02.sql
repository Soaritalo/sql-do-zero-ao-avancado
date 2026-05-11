--quais clientes assinaram a lista de presença no dia 2025/08/25
select c.IdCliente,DescNomeProduto,t1.DtCriacao
from clientes as c
left join transacoes as t1
on c.idCliente = t1.idCliente
left join transacao_produto as t2
on t1.idTransacao = t2.IdTransacao
left join produtos as P
on t2.IdProduto = p.IdProduto
where DescNomeProduto = 'Lista de presença'
and t1.DtCriacao like '%2025-08-25%'