select IdCliente,
QtdePontos,
CASE 
   when qtdePontos <= 500 then 'Plebe'
        when qtdePontos <= 1000 then 'Trabalhador'
        when qtdePontos <= 5000 then 'Nobre'
        when qtdePontos <= 10000 then 'Clero'
        else 'Realeza'
        END as ranking,

    CASE 
        WHEN QtdePontos <= 1000 then 1
        
        ELSE 0
    
    END as Fltrabalhador    
   

from clientes

ORDER by qtdePontos DESC