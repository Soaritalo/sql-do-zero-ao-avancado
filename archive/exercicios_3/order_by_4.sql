SELECT  
        COUNT(*),
        COUNT(DISTINCT IdTransacao),
        count(DISTINCT idCliente)

        from transacoes
        where DtCriacao >= '2025-07-01'
        and DtCriacao >= '2025-08-01'
ORDER BY DtCriacao desc