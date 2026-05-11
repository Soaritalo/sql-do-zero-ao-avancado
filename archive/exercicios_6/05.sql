--quantidade de transações acumuladas ao longo do tempo


--transaoces = DtCriacao, IdTransacao,IdCliente
--transacao_produto = IdTransacao, IdProduto, idTransacaoProduto


SELECT 
    DATE(DtCriacao) AS data,

    COUNT(IdTransacao) AS transacoes_no_dia,

    SUM(COUNT(IdTransacao)) OVER (
        ORDER BY DATE(DtCriacao)
    ) AS acumulado

FROM transacoes
GROUP BY DATE(DtCriacao)
ORDER BY data;