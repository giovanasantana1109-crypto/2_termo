-- Active: 1788351676668@@127.0.0.1@3306@smartcoffee_dml_gi
-- 
-- ============================================================
-- AULA 09 - ATIVIDADE PRÁTICA DE DQL
-- Nome:Giovana Santna Pestana
-- Turma:Devie Castello Data: 07-10-26
-- Base: smartcoffee_dql
-- ============================================================
USE smartcoffee_dml_gi;

-- PARTE A - AQUECIMENTO

-- 1. Liste todos os clientes cadastrados.
SELECT * FROM cliente;

-- 2. Exiba apenas nome, cidade e e-mail dos clientes.
SELECT nome, cidade, email FROM cliente;

-- 3. Liste os nomes das cidades sem repetir valores.
SELECT DISTINCT cidade AS Cidades_Sem_Repetir
FROM cliente;

-- 4. Liste todos os produtos em ordem crescente de preço.
SELECT nome, preco
FROM produto
ORDER BY preco ASC;


-- 5. Mostre apenas os 5 produtos mais caros.
SELECT nome, preco
FROM produto
ORDER BY preco DESC
LIMIT 5;

-- PARTE B - FILTROS

-- 6. Liste os produtos com preço entre R$ 8,00 e R$ 15,00.
SELECT nome, preco
FROM produto
WHERE preco >= 8.00 AND preco <= 15.00;

-- 7. Liste os clientes das cidades Limeira ou Americana.
SELECT nome , cidade
FROM cliente
WHERE cidade = 'Limeira' OR cidade = 'Americana';

-- 8. Localize os produtos cujo nome contém a palavra “Café”.
SELECT nome 
FROM produto
WHERE nome LIKE 'Café%'

-- 9. Liste os clientes que não informaram telefone.
SELECT nome , telefone
FROM cliente
WHERE telefone IS NULL;

-- 10. Mostre os pedidos FINALIZADOS com valor acima de R$ 20,00,
--     do maior para o menor valor.
SELECT nome, preco
FROM produto
WHERE preco >= 20.00
ORDER BY preco DESC;

-- PARTE C - CÁLCULOS E AGRUPAMENTOS

-- 11. Informe quantos produtos estão cadastrados.
SELECT * FROM produto;

-- 12. Mostre menor preço, maior preço e preço médio dos produtos.

-- Menor preço:
SELECT nome, preco  
FROM produto
WHERE preco <8.00;

-- Maior preço:
SELECT nome, preco  
FROM produto
WHERE preco >80.00;

-- Media dos produtos:
SELECT AVG(preco) AS Media_Precos
FROM produto;


-- 13. Informe quantos clientes existem em cada cidade.
SELECT cidade, COUNT(*) AS QTDE_CIDADES
FROM cliente
GROUP BY cidade;

-- 14. Mostre somente as cidades que possuem dois ou mais clientes.
SELECT cidade, COUNT(*) AS QUANTIDADE_CLIENTES
FROM cliente
GROUP BY cidade
HAVING COUNT(*) >= 2;

-- 15. Calcule o faturamento total considerando apenas pedidos FINALIZADOS.

SELECT * FROM  pedido

-- PARTE D - RELACIONAMENTOS

-- 16. Liste cada pedido exibindo id, data, nome do cliente, status e valor total.
SELECT C.NOME, P.STATUS, P.DATA_PEDIDO, P.VALOR_TOTAL
FROM CLIENTE AS C 
LEFT JOIN PEDIDO AS P 
ON P.ID_CLIENTE = C.ID_CLIENTE
ORDER BY C.NOME;

-- 17. Liste cada produto acompanhado do nome de sua categoria.
SELECT CA.NOME AS CATEGORIA, COUNT(PR.ID_PRODUTO) AS QTDE_PRODUTOS
FROM CATEGORIA AS CA
LEFT JOIN PRODUTO AS PR 
ON PR.ID_CATEGORIA = CA.ID_CATEGORIA
GROUP BY CA.ID_CATEGORIA, CA.NOME
ORDER BY QTDE_PRODUTOS DESC;

-- 18. Gere um relatório dos itens vendidos: pedido, produto, quantidade,
--     preço unitário e subtotal.
-- SELECT P.ID_PEDIDO, DATE_FORMAT 
-- C.PRODUTO AS PEDIDO,PR.NOME AS PRODUTO, IP.QUANTIDADE, IP.PRECO_UNITARIO
-- FROM PEDIDO AS P
-- INNER JOIN CLIENTE AS C
-- ON C.ID_CLIENTE = P.ID_CLIENTE
-- INNER JOIN ITEM_PEDIDO AS IP
-- ON IP.ID_PEDIDO = P.ID_PEDIDO
-- INNER JOIN PRODUTO AS PR
-- ON PR.ID_PRODUTO = IP.ID_PRODUTO
-- ORDER BY P.ID_PEDIDO, PR.NOME;
SELECT P.ID_PEDIDO AS PEDIDO,PR.NOME AS PRODUTO, IP.QUANTIDADE, IP.PRECO_UNITARIO,(IP.QUANTIDADE * IP.PRECO_UNITARIO) AS SUBTOTAL 
FROM PEDIDO AS P 
INNER JOIN ITEM_PEDIDO AS IP 
ON IP.ID_PEDIDO = P.ID_PEDIDO 
INNER JOIN PRODUTO AS PR 
ON PR.ID_PRODUTO = IP.ID_PRODUTO 
ORDER BY P.ID_PEDIDO, PR.NOME;

-- 19. Mostre todos os clientes, inclusive aqueles que nunca fizeram pedidos.
SELECT C.NOME, P.ID_PEDIDO, P.DATA_PEDIDO
FROM CLIENTE AS C 
LEFT JOIN PEDIDO AS P 
ON P.ID_CLIENTE = C.ID_CLIENTE
ORDER BY C.NOME;

-- 20. Liste apenas os clientes que nunca fizeram pedidos.
SELECT C.ID_CLIENTE, C.NOME 
FROM CLIENTE AS C  
LEFT JOIN PEDIDO AS P  
ON P.ID_CLIENTE = C.ID_CLIENTE
WHERE P.ID_PEDIDO IS NULL;

-- PARTE E - DESAFIO GERENCIAL

-- 21. Informe quantos pedidos FINALIZADOS cada cliente realizou e quanto
--     cada cliente gastou. Ordene do maior gasto para o menor.


-- 22. Mostre a quantidade de produtos e o preço médio de cada categoria.


-- 23. Descubra quais produtos possuem preço superior ao preço médio geral.


-- 24. Classifique os produtos como Econômico, Intermediário ou Premium.
--     Defina e informe suas faixas de preço.


-- 25. CONSULTA AUTORAL
-- Pergunta de negócio:
--
-- Por que essa informação é útil?
--
-- Consulta:

