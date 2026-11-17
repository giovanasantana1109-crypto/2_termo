-- Active: 1794917653798@@127.0.0.1@3306@recuperativa_retrogame_gi_santana
Drop Database recuperativa_retrogame_gi_santana;
-- fase 1- DDL 
create database if not exists recuperativa_retrogame_gi_santana;

use recuperativa_retrogame_gi_santana;

SELECT * FROM plataforma;
-------------------------------------

CREATE TABLE cliente (
    id_cliente int AUTO_INCREMENT,
    nome VARCHAR(100) not null,
    email VARCHAR(120) not null unique,
    telefone VARCHAR(20) null,
    ativo BOOLEAN DEFAULT TRUE,

    CONSTRAINT PK_ID_CLIENTE PRIMARY KEY (ID_CLIENTE), CONSTRAINT UQ_EMAIL UNIQUE (EMAIL)
);

CREATE TABLE plataforma (
    id_plataforma int AUTO_INCREMENT PRIMARY key,
    nome VARCHAR(80) not null unique

);

CREATE TABLE categoria (
    id_categoria int AUTO_INCREMENT PRIMARY key,
    descricao VARCHAR(80) not null unique

);

CREATE TABLE jogo (
    id_jogo int AUTO_INCREMENT PRIMARY key ,
    titulo VARCHAR(150) not null,
    codigo VARCHAR(15) not null unique,
    ano_lancamento int not null,
    quantidade_disponivel int default 0 check(quantidade_disponivel >= 0),
    id_plataforma int,
    id_categoria int
);

CREATE TABLE locacao(
    id_locacao int AUTO_INCREMENT PRIMARY key,
    data_retirada datetime default CURRENT_TIMESTAMP,
    data_devolucao date null,
    status_locacao VARCHAR(20) default 'ABERTO' check (status_locacao IN ('ABERTO', 'DEVOLVIDO' , 'ATRASADO')),
   
    id_cliente int not null,
    id_jogo int not null,

    constraint pk_locacao PRIMARY key (id_locacao),
    CONSTRAINT FK_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT pk_jogo FOREIGN KEY (id_jogo) REFERENCES jogo(id_jogo)
);

 ALTER TABLE jogo ADD desenvolvedora VARCHAR(100);

 -- fase 2- DML

 INSERT INTO cliente (NOME, EMAIL, TELEFONE, ATIVO) VALUES 
('GIOVANA','GIOVANA@GMAIL.COM','11092009',TRUE),
('CLARICE','CLARICE@GMAIL.COM','12082008',TRUE),
('DIVA','DIVA@GMAIL.COM',NULL ,TRUE),
('OLGA','OLGA@GMAIL.COM','866451372',TRUE);

INSERT INTO plataforma (NOME) VALUES
('PlayStation'),
('Xbox');

INSERT INTO categoria (DESCRICAO) VALUES

INSERT INTO jogos (TITULO, CODIGO, ANO_LANCAMENTO, QUANTIDADE_DISPONIVEL) VALUES
()