SELECT idCliente,
sum(QtdePontos) as soma_Dos_pontos,
count(idTransacao) as quantidade_transacoes
from transacoes
where QtdePontos > 0 
GROUP BY IdCliente
ORDER BY soma_Dos_pontos desc