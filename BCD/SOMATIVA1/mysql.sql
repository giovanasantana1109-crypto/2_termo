 -- Comando para criar banco de dados
create database oficina;

    -- ATIVAR O BANCO DE DADOS
    USE oficina;
    
    -- comando para apagar banco de dados
drop database oficina;
drop table clientes;
drop table funcionarios;

    
    
  -- CRIAR TABELA
  CREATE TABLE CLIENTES (
   ID_CLIENTE int AUTO_INCREMENT PRiMARY KEY,
   nome varchar(60) NOT NULL,
   idade varchar(14) NOT NULL UNIQUE,
   cpf varchar(11) NOT NULL UNIQUE,
   rg varchar(11) NOT NULL UNIQUE,
   endereco varchar(60) NOT NULL
   );
   
   create table pagamento(
   ID_APAGAMENTO int AUTO_INCREMENT PRIMARY KEY,
   vista varchar(10) NOT NULL,
   dinheiro varchar(10) NOT NULL,
   pix varchar(10) NOT NULL,
   finaciamento varchar(10) NOT NULL,
   cartao varchar(10) NOT NULL,
   credito varchar(10) NOT NULL,
   debito varchar(10) NOT NULL
   );
  
  create table servico (
  ID_SERVICO int AUTO_INCREMENT PRIMARY KEY,
  pneus_novos varchar(60) NOT NULL,
  trocar_oleo varchar(60) NOT NULL,
  comprar_veiculo varchar(60) NOT NULL,
  troca_peca varchar(60) NOT NULL,
  servico_personalizado varchar(60) NOT NULL
  );
  
  create table ordens_servico (
  ID_ORDEM_SERVICO int AUTO_INCREMENT PRIMARY KEY,
  manha varchar(60) NOT NULL,
  funcionario_nome varchar (60) NOT NULL,
  nome_cliente varchar(60) NOT NULL,
  tipo_servico varchar(60) NOT NULL,
  prazo varchar(60) NOT NULL,
  vespertino varchar(60) NOT NULL

  ); 
  
  create table funcionarios (
  ID_FUNCIONARIOS int AUTO_INCREMENT PRIMARY KEY,
  nome varchar(60) NOT NULL,
  idade varchar(14) NOT NULL UNIQUE,
  cpf varchar(11) NOT NULL UNIQUE,
  escolaridade varchar(30) NOT NULL,
  experiencia_profissional varchar(60) NOT NULL
  );
  
  create table fornecendores (
  ID_FORNECENDORES int AUTO_INCREMENT PRIMARY KEY,
  garantia varchar(60) NOT NULL,
  quantidade varchar(60) NOT NULL,
  valor varchar(60) NOT NULL,
  tipo_peca varchar(60) NOT NULL,
  lugar varchar (60) NOT NULL,
  empresa varchar(40) NOT NULL
  );
  
  create table pecas (
  ID_PECAS int AUTO_INCREMENT PRIMARY KEY,
  nome varchar (60) NOT NULL,
  qualidade varchar(14) NOT NULL UNIQUE,
  tamanha varchar (60) NOT NULL,
  quantia varchar (60) NOT NULL,
  tipo varchar (60) NOT NULL
  );
  
  create table marcas (
  ID_MARCAS int AUTO_INCREMENT PRIMARY KEY,
  nomes_marca varchar(60) NOT NULL,
  qualidade varchar(60) NOT NULL,
  criador varchar(60) NOT NULL,
  pais varchar(60) NOT NULL,
  fabricante varchar (60) NOT NULL
  );
  
  create table modelos (
  ID_MODELO int AUTO_INCREMENT PRIMARY KEY,
  nome varchar(60) NOT NULL,
  ano varchar(14) NOT NULL UNIQUE,
  qualidade varchar (60) NOT NULL,
  tipo varchar(60) NOT NULL,
  fabricante varchar(60) NOT NULL
  );
  
  create table veiculos (
  ID_VEICULOS int AUTO_INCREMENT PRIMARY KEY,
  cor varchar(60) NOT NULL,
  marcha varchar(60) NOT NULL,
  manual varchar(60) NOT NULL,
  automatico varchar(60) NOT NULL,
  ano varchar(14) NOT NULL UNIQUE,
  fabricante varchar(60) NOT NULL,
  marca varchar(60) NOT NULL,
  potencia_motor varchar(60) NOT NULL
  );