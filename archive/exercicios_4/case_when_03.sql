--teste do CASE
select 
    IdCliente,
    qtdePontos,
    case 
        when qtdePontos <= 500 then 'Plebe'
        else 'Outro'
    end as ranking
from clientes;