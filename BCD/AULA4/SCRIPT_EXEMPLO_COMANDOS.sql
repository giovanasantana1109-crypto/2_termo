	-- aaaaaaaaaaaa
    -- Comando para criar banco de dados
    CREATE DATABASE EXEMPLO;
    
    -- apagar banco de dados
    DROP DATABASE EXEMPLO;
    
    
    -- apagar tabelas
    
    
    -- ATIVAR O BANCO DE DADOS
    USE EXEMPLO;
    
    -- CRIAR TABELA
    CREATE TABLE CLIENTES (              
    ID_CLIENTE int AUTO_INCREMENT PRiMARY KEY, 
    NOME VARCHAR(60) NOT NULL,
    CPF VARCHAR(14) NOT NULL UNIQUE,
    ENDERECO VARCHAR (60) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    TELEFONE VARCHAR(14) NOT NULL
    );