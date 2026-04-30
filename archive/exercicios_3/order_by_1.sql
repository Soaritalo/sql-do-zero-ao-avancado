--SELECT *
--FROM clientes
--ORDER BY qtdePontos DESC
--limit 10;



SELECT *
FROM clientes
WHERE flTwitch = '1'
ORDER BY DtCriacao ASC, QtdePontos DESC

