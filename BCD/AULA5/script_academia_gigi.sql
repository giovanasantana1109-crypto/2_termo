-- coando para criar bd
-- 1
-- comando para criar banco de dados
CREATE DATABASE ACADEMIA_GIGI;
create database if not exists ACADEMIA_GIGI;
-- 2
-- atualizar schemas

-- comando para ativar bc
-- 3 
use ACADEMIA_GIGI;


-- comando para apagar banco de dados
drop database ACADEMIA_GIGI;
drop table clientes;
drop table funcionarios;

-- comando criar tabela
create table if not exists clientes ( 
id_cliente int auto_increment primary key,
cpf varchar (14) not null unique,
nome  varchar (60) not null,
telefone varchar (15) not null,
endereco varchar (100 ),
-- enum, da opicoes e o default so tem um
status_cliente enum('pendente','ativo','inativo') default "ativo",
data_cadastro timestamp default current_timestamp,
data_nascimento date not null
);

create table funcionarios (
id_funcionarios int auto_increment primary key,
nome  varchar (60) not null,
telefone varchar (15) not null,
endereco varchar (100 ),
data_nascimento date not null,
salario date not null,
turno varchar (30) not null
);

create table planos (
id_planos int auto_increment primary key,
nome_plano varchar(20) not null,
tipo_plano char(10) default 0.00,
adicionais char (10) default "exame",
observacao text
);

-- comandos para alterar e corrigir
-- adicionar um campo (atributo) novo
alter table clientes add email varchar(100);

-- modificar tipo de dados ou campo 
alter table clientes modify email varchar(150);

-- renomear tabelas
 rename table clientes to clientess;
 
 -- excluir atributos
 alter table clientess drop column email;

-- visualizar tabelas no banco de dados
show tables;

-- limpar dados da tabela
truncate table clientes;

-- incerir dados no banco 
insert into clientes (id_client, nome, cpf, telefone, endereco,data_nascimento,status_cliente,data_cadastro)
values('','giovana','999999999', '8888888888888','xxxxxxxxxx','11/09/2009','hhhhhhhhh','jjjjjjjjjj');

create table funcionarios (
  id_funcionario int primary key,
  email varchar (225) unique
);

insert into funcionarios (id_funcionario, email)
values (1,'giovana.santana@gmail.com') ;

-- comando para consultar informacoes
select * from funcionarios;

