
--lista de pedidos realizados no fim de semana
select IdTransacao,
        DtCriacao,
        strftime('%w',datetime(substr(DtCriacao,1,19))) as diasemana
from transacoes
where diasemana = '0'