use loja_viking;

-- Quais são os 3 produtos mais caros?--
SELECT 
    produtos.ID_PRODUTO AS MaisCaro, MAX(PRECO)
FROM
    produtos
GROUP BY ID_PRODUTO
ORDER BY PRECO DESC
LIMIT 3;


-- Quantas avaliações cada cliente realizou?
SELECT
  CPF , COUNT(CPF) AS avaliacoes
FROM
    avaliacoes
group by cpf;

-- Qual a média das avaliações de cada produto?

SELECT 
    avaliacoes.ID_PRODUTO, AVG(NOTA) AS Media
FROM
    avaliacoes
GROUP BY avaliacoes.ID_PRODUTO
ORDER BY media DESC;

 -- Qual a data de avaliação mais recente de cada produto?

select ID_PRODUTO, max(DATA_AVALIACAO)
from
avaliacoes
group by ID_PRODUTO
order by DATA_AVALIACAO DESC;


-- Quais as clientes cujo o nome se inicia com joana?

select  clientes.NOME
from 
clientes
where
NOME like '%JOANA%';

-- Qual produto recebeu a menor avaliação?

select avaliacoes.ID_PRODUTO AS PRODUTO, min(NOTA)
from avaliacoes
group by ID_AVALIACAO
order by NOTA 
LIMIT 1;

-- Quais são os produtos cuja a avaliação mais recente é anterior à 30 dias, liste-os como "Avaliação desatualizada"?

SELECT 
    DATA_AVALIACAO AS Avaliacao_desatualizada, ID_PRODUTO
FROM
    avaliacoes
WHERE
    DATA_AVALIACAO < NOW() - INTERVAL 30 DAY
GROUP BY avaliacoes.DATA_AVALIACAO
ORDER BY Avaliacao_desatualizada DESC



