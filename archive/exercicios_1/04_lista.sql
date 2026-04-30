--lista de clientes com 100 a 200 pontos (inclusive ambos);

select * 
from clientes 
where  QtdePontos >= 100 and QtdePontos <= 200
ORDER BY qtdePontos ASC