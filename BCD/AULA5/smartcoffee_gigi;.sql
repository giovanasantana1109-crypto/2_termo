-- projeto smartcoffee
create database smartcoffee_gigi;
create database if not exists smartcoffee_gigi;
use smartcoffee_gigi;
-- comando para apagar banco de dados
drop database smartcoffee_gigi;

create table funcionarios (
id_funcionarios int auto_increment primary key,
nome  varchar (60) not null,
telefone varchar (15) not null,
endereco varchar (100 ),
data_nascimento date not null,
salario date not null,
turno varchar (30) not null
);

create table clientes ( 
id_cliente int auto_increment primary key,
cpf varchar (14) not null unique,
nome  varchar (60) not null,
telefone varchar (15) not null,
endereco varchar (100 ),
data_cadastro timestamp default current_timestamp,
data_nascimento date not null
);


create table produto (
id_produtos int auto_increment primary key,
tipo varchar(60) not null,
valor varchar(20) not null,
quantidade varchar (50) not null,
descricao varchar(50) not null
);

create table pedido (
id_pedido int auto_increment primary key,
numero varchar(60) not null,
valor varchar(20) not null,
descricao varchar(50) not null
);

create table categoria (
id_categoria int auto_increment primary key,
doce varchar(60) not null,
salgado varchar(20) not null,
descricao varchar(50) not null
);

create table pagamento (
id_pagamento int auto_increment primary key,
pix varchar(60) not null,
valor varchar(20) not null,
cartao enum('debito','credito') ,
data_pagamento varchar(50) not null
);

create table fornecer (
id_fornecer int auto_increment primary key,
nome varchar(60) not null,
datao varchar(50) not null
);

create table estoque (
id_estoque int auto_increment primary key,
nome varchar(60) not null,
tipo varchar(60) not null,
descricao varchar(50) not null,
quantidade varchar (50) not null
);



-- visualizar tabelas no banco de dados
show tables;