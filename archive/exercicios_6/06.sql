--QUANTIDADE DE USUARIOS CADASRADASO(ABSOLUTO E ACUMULADO) AO LONGO DO TEMPO


--transaoces = DtCriacao, IdTransacao,IdCliente
--transacao_produto = IdTransacao, IdProduto, idTransacaoProduto
--clientes = IdCliente, NomeCliente, DtCriacao, DtAtualizacao, QtdPontos
--produtos = Idproduto, NomeProduto, CategoriaProduto, PrecoProduto




SELECT *, count(idCliente) as clientes_no_dia,
Sum(idCliente) OVER (
    ORDER BY DATE(DtCriacao)
) AS acumulado

FROM clientes
