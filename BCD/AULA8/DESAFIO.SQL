-- Active: 1788351676668@@127.0.0.1@3306@smartcoffe_dml_gi
-- ============================================================
-- AULA 08 - ATIVIDADE PRÁTICA DE DML
-- Nome: GIOVANA SANTANA PESTANA
-- Turma: DEVIE CASTELLO Data: 30/09/26
-- Base: smartcoffee_dml
-- ============================================================
USE smartcoffee_dml_gi;

-- IMPORTANTE:
-- Para toda questão de UPDATE ou DELETE, escreva primeiro um SELECT
-- com o mesmo WHERE para validar os registros afetados.

-- PARTE A - INSERT

INSERT INTO cliente(NOME,EMAIL,TELEFONE,CIDADE,ATIVO)VALUES
-- 1. Cadastre dois novos clientes com dados diferentes.
('felipe santana','felipesan@gmail.com','120042004','Limeira',TRUE),
('taina','taina@gmail.com','652804224','Junqueiropólis',TRUE);
SELECT * FROM cliente;

-- 2. Cadastre a categoria 'Especiais da Casa'.



-- 3. Localize o id da categoria criada e cadastre três produtos nela.


-- 4. Cadastre um terceiro cliente sem telefone.
INSERT INTO cliente (NOME,EMAIL,TELEFONE,CIDADE,ATIVO)VALUES
('ladia','ladia@GMAIL.COM','4444444444','dracena',TRUE);

-- 5. Crie um novo pedido para um dos clientes cadastrados.
@pedido_atividade
SELECT * FROM pedido;

-- 6. Use LAST_INSERT_ID() para guardar o id do pedido em @pedido_atividade
--    e insira pelo menos dois itens nesse pedido.


SET @pedido_atividade = LAST_INSERT_ID();

-- PARTE B - UPDATE

-- 7. Corrija o telefone de um dos clientes criados.
-- SELECT de validação: 
SELECT * FROM cliente;
-- UPDATE:
UPDATE cliente
SET TELEFONE = '8888888'
WHERE ID_CLIENTE = 255;
-- SELECT final:
SELECT * FROM cliente;

-- 8. Altere cidade e telefone de outro cliente em um único UPDATE.
UPDATE cliente
SET TELEFONE = ' 1323232323',
    CIDADE = 'cAMPINAS'
WHERE ID_CLIENTE = 253;


-- 9. Aumente em 8% o preço dos produtos da categoria 'Especiais da Casa'.


-- 10. Altere o status do pedido criado para 'PREPARANDO'.


-- 11. Atualize valor_total do pedido de acordo com os itens cadastrados.
--     Você pode calcular previamente com SELECT SUM(quantidade * preco_unitario).


-- 12. Escolha um dos produtos criados e faça uma exclusão lógica (ativo = FALSE).


-- PARTE C - DELETE

-- 13. Crie um cliente de teste sem pedidos.
--     Depois localize e exclua apenas esse cliente.


-- 14. Tente excluir um cliente da base original que possua pedidos.
--     Deixe o DELETE comentado após o teste e descreva o erro abaixo.
-- Resultado observado:


-- 15. Explique em comentário por que a FK bloqueou a exclusão.
-- Resposta:


-- 16. Crie uma categoria temporária chamada 'Excluir Depois' e remova-a.
