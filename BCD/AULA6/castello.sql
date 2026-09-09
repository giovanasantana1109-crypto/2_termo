create database castellovers;

use castellovers;

create table if not exists alunos (
    id_aluno bigint AUTO_INCREMENT PRIMARY KEY,
    nome varchar(60) not null,
    cpf varchar(14) not null unique,
    status_alunos enum('ativo','inativo','concluido') default 'ativo',
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- visualizar todos os banco de dados
SHOW SCHEMAS;

-- visualizar tabelas do banco de dados
show tables;

-- descrição de atributos da tabela alunos 
describe alunos;

-- apargar banco de dados
drop database castellovers;


