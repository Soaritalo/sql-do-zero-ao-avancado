--Lista de transações com o produto “Resgatar Ponei”;
--achar o id do produto 
--------select *
--------from produtos
--------where DescNomeProduto like '%ponei%'
--id do produto resgatar ponei = 15
SELECT *
from transacao_produto
where IdProduto = '15'