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

-- 16. Crie uma categoria temporária chamada 'Excluir Depois' e remova-a.


-- PARTE D - INTEGRIDADE E ERROS CONTROLADOS
-- Execute uma tentativa por vez. Depois deixe o comando problemático comentado.

-- 17. Tente inserir um produto com id_categoria = 9999.
-- Qual restrição impediu a operação?


-- 18. Tente cadastrar um cliente usando 'ana@email.com'.
-- Qual restrição impediu a operação?


-- 19. Tente criar um pedido com id_cliente = 9999.
-- Qual restrição impediu a operação?


-- 20. Escreva em comentários a diferença entre os três erros anteriores.


-- PARTE E - DESAFIO COMPLETO COM TRANSAÇÃO

-- 21. Inicie uma transação.


-- 22. Dentro dela, cadastre um cliente, um pedido e dois itens relacionados.


-- 23. Faça uma consulta com JOIN comprovando que os registros existem
--     enquanto a transação está aberta.


-- 24. Execute ROLLBACK e depois use SELECT para provar que o cadastro foi desfeito.


-- 25. Repita o processo com novos dados e finalize usando COMMIT.
--     Depois consulte os registros persistidos.


-- DESAFIO EXTRA
-- 26. Escolha uma situação realista do SmartCoffee que exija INSERT + UPDATE
--     ou UPDATE + DELETE lógico. Descreva a regra de negócio e implemente.