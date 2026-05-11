--quais clientes mais perderm pontos por lover

--transacao_produto = IdTransacao, idTransacaoProduto

--transacoes = idTransacao, idCliente, QtdePontos

--clientes = idCliente , QtdePontos 

--produtos id do lovers = 1,13

select C.idCliente as clientes,
SUM(t2.qtdePontos) as pontosPerdidos

from transacao_produto as t1
left join transacoes as t2
on t2.idTransacao = t1.IdTransacao
left join clientes as C
on C.IdCliente = t2.idCliente
where t1.idProduto in (1,13)
group by clientes
order by pontosPerdidos asc