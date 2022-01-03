USE db_pizzaria;

CREATE TABLE cadastro(
id_cadastro smallint auto_increment not null primary key,
nome varchar(30) not null,
nascimento date not null,
cpf varchar(9) unique not null,
email varchar(30) not null,
senha varchar(12),
numero_end smallint,
tel varchar (13)

);

CREATE TABLE IF NOT EXISTS endereco(
cep_endereco varchar (100) not null primary key,
logradouro_endereco varchar (100) not null,
bairro_endereco varchar (100) not null,
cidade_endereco varchar (100) not null,
estado_endereco varchar (100) not null

);

CREATE TABLE IF NOT EXISTS feedback(
id_feed smallint not null auto_increment primary key,
classificao_feed smallint not null,
descri_feed mediumtext,
titulo_feed varchar(100)


);

CREATE TABLE IF NOT EXISTS gerente(
id_gerente smallint not null auto_increment primary key,
id_cadastro smallint not null,
FOREIGN KEY (id_cadastro) REFERENCES cadastro(id_cadastro)

);

CREATE TABLE IF NOT EXISTS atendente(
id_atendente smallint not null auto_increment primary key,
id_cadastro smallint not null,
FOREIGN KEY (id_cadastro) REFERENCES cadastro(id_cadastro)

);

create table cupom (
    id_cupom int auto_increment not null primary key,
    valor double,
    prazo date,
    data date,
    vigencia date
);

create table produto(
    id_produto int auto_increment not null primary key,
    nome varchar(30),
    valor double
);

create table itens (
    id_item int auto_increment not null primary key,
    valor_itens double,
    quantidade_itens int,
    foreign key(id_item) references produto(id_produto)
);

create table tipo(
    id_tipo int auto_increment not null primary key,
    nome varchar(30),
    foreign key(id_tipo) references produto(id_produto)
);

create table cliente (
    id_cliente int auto_increment not null primary key
);

create table pagamento (
    id_pagamento int auto_increment not null primary key,
    forma_pagamento varchar(30)
);

create table promocoes (
    id_promocao int auto_increment not null primary key,
    preco double,
    foreign key(id_promocao) references produto(id_produto)
);




create table pedidos (
    id_pedido int auto_increment not null primary key,
    status varchar(30),
    foreign key(id_pedido) references cliente(id_cliente),
    foreign key(id_pedido) references itens(id_item)  ,
    foreign key(id_pedido) references pagamento(id_pagamento),
    foreign key(id_pedido) references cupom(id_cupom)
);

SHOW TABLES FROM db_pizzaria;


