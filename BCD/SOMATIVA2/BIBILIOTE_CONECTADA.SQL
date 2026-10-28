-- Active: 1788351676668@@127.0.0.1@3306@biblioteca_conectada_gi
-- FASE 1 — DDL: CRIAÇÃO E ESTRUTURA
CREATE DATABASE BIBLIOTECA_CONECTADA_GI;

USE BIBLIOTECA_CONECTADA_GI;

select * from emprestimo;

CREATE TABLE USUARIO (
    id_usuario int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(120) not null unique,
    telefone varchar(20),
    ativo boolean default true
);

CREATE TABLE LIVRO (
    id_livro int primary key auto_increment,
    titulo varchar(150) not null,
    autor varchar(120) not null,
    isbn char(13) not null unique,
    ano_publicacao int,
    quantidade_disponivel int
    DEFAULT 0, CHECK (quantidade_disponivel>= 0)
);

-- 4. Tabela EMPRESTIMO — 7 pts
-- Crie PK, duas FKs, DEFAULTs e CHECK de status. As FKs devem impedir
-- exclusão de usuário ou livro com histórico.
CREATE TABLE EMPRESTIMO (
    id_emprestimo int primary key auto_increment,
    data_emprestimo datetime default current_timestamp,
    data_prevista date not null,
    data_devolucao date,
    status_empretimo varchar(20) default 'ABERTO',

    id_usuario int,
    constraint fk_emprestimo_usuario foreign key (id_usuario)
    references usuario(id_usuario),
    id_livro int,
    constraint  fk_emprestimo_livro foreign key (id_livro)
    references livro(id_livro)
);

-- 5. ALTER TABLE
alter table livro add editora varchar(100);

-- FASE 2 — DML: MANIPULAÇÃO DE DADOS
-- INSERT de usuários
INSERT INTO usuario(nome,email,telefone,ativo) VALUES
('Matteo','matteo.pansere@gmail','(19) 27042-0263', TRUE),
('Ládia','ladiacristina@gmail.com',NULL, TRUE),
('Giovana','giovana.pestana@gmail.com','(19) 97346-0072',TRUE),
('Diva','divasalet@gmail.com','(19) 2345-6947', TRUE);

-- INSERT de livros
INSERT INTO livro(titulo,autor,isbn,ano_publicacao,quantidade_disponivel,editora) VALUES
('O Alquiminsta','Paulo Coelho','1234567890','2010','12','Sextante'),
('Ensaio Sobre a Cegueira','José Saramago','0987654321','2002','4','Companhia das Letra'),
('Torto Arado','Itamar Vieira Junior','24680246','2019','8','Todavia'),
('1984','George Orwell','135713','2021','6','Companhia das Letras'),
('Flores para Algernon','Daniel Keyes','97485765','2018','3','Aleph'),
('Capitães da Areia','Jorge Amado','5911695','2008','9','isabeli');

-- INSERT de empréstimos
INSERT INTO emprestimo(id_usuario,id_livro,data_emprestimo,data_prevista,data_devolucao,status_empretimo) VALUES
('1','38','2026-10-20 08:15:00','2026-10-27','2026-10-30','ABERTO'),
('2','37','2026-10-28 10:20:00','2026-11-4','2026-11-7','ABERTO'),
('3','42','2026-10-15 11:05:00','2026-10-22','2026-10-25','ABERTO'),
('4','40','2026-09-30 13:15:00','2026-10-07','2026-10-10','fechado');

DELETE FROM emprestimo;

SELECT* from emprestimo;