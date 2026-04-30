--listar todas as transaçoes adicionando uma coluna nova sinalizando "alto", "Medio", e "baixo" Para o valor dos pontos [<10;<500>=500]

--Criaçao da tabela 
--alter Table transacoes
--add nivel_de_valor VARCHAR(5)


--consulta

    SELECT *,
    CASE 
        WHEN qtdePontos >=500 THEN  'alto'
        when qtdePontos < 10  THEN  'baixo'  
        ELSE 'medio'
    END as nivel_de_valor
    from transacoes