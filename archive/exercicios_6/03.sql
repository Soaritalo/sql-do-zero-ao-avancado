--Do início ao fim do nosso curso (2025/08/25 a 2025/08/29), quantos clientes assinaram a lista de presença?
SELECT COUNT(DISTINCT c.IdCliente) AS TotalClientes
FROM clientes AS c
LEFT JOIN transacoes AS t 
    ON c.IdCliente = t.IdCliente
LEFT JOIN transacao_produto AS tp
    ON t.IdTransacao = tp.IdTransacao
LEFT JOIN produtos AS p 
    ON p.IdProduto = tp.IdProduto
WHERE c.DtCriacao BETWEEN '2025-08-25' AND '2025-08-29'
AND p.DescNomeProduto LIKE '%Lista de presença%';