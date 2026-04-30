select 
    IdCliente,
    qtdePontos,
    case 
        when qtdePontos <= 500 then 'Plebe'
        when qtdePontos <= 1000 then 'Trabalhador'
        when qtdePontos <= 5000 then 'Nobre'
        when qtdePontos <= 10000 then 'Clero'
        else 'Realeza'
    end as ranking
from clientes
order by qtdePontos desc;
-- INTERVALOS
-- 0 A 500 --> PLEBE
-- 501 A 1000 --> TRABALHADOR
-- 1001 A 5000 --> NOBRE
-- 5001 A 10000 --> CLERO
-- 10001 --> REALEZA