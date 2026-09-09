CREATE DATABASE oficina_gi;
use oficina_gi;
CREATE table clientes (
    id_cliente int AUTO_INCREMENT PRIMARY key,
    telefone varchar (15) not null,
    email varchar (100),
    nome_cliente varchar(60) not null,
    endereco varchar (100),
    cpf_cliente char (14) not null unique
    data_cadatro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists VEICULOS (
id_VEICULOS int auto_increment primary key,
COR VARCHAR (100),
TIPO varchar (60),
ANO VARCHAR(20) not null unique,
TAMANHO varchar(100),
PLACA VARCHAR(50) not null unique
);


create table if not exists MARCAS (
id_MARCAS int auto_increment primary key,
NOME VARCHAR (100),
PAIS_FABRICADO varchar (25) not null unique,
SITE_daMARCA VARCHAR(20) not null unique,
TELEFONE VARCHAR(25)
);

create table if not exists MODELO (
id_MODELO int auto_increment primary key,
QUILOMETRAGEM varchar (14) not null unique,
ANO varchar (60) not null,
ANO_DEfabricacao VARCHAR(15) not null unique,
COR varchar(100),
TAMANHO VARCHAR(150)
);

CREATE table if not exists funcionario(
    id_funcionario int AUTO_INCREMENT PRIMARY key,
    nome_funcionario varchar(60) not null,
    cpf_funcionario char (14) not null unique,
    telefone_funcionario char (15) not null,
    cargo VARCHAR(30),
    salario decimal(10,2) not null,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE table if not exists servicos (
    id_servico INT AUTO_INCREMENT PRIMARY key,
    tipo_sevico varchar (100) not null,
    valor decimal(10,2) not null,
    data_inicio datatime not null,
    data_termino datetime not null,
    descricao_servico
);

CREATE table if not exists fornecedores(
    id_fornecedores int AUTO_INCREMENT PRIMARY key,
    telefone char(15)not null,
    -- tempo_entre varchar(30)
    cnpj char(18) not null unique,
    razao-social varchar(100) not null,
    segmento_area varchar (50)

);