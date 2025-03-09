create database ecommerce;
use ecommerce;

-- Criar tabela Cliente
create table cliente(
	idCliente int auto_increment primary key,
    Nome varchar(100) not null,
    Contato varchar(15) not null,
    Endereco varchar(100) not null,
    CEP varchar(10) not null
);

-- Criar tabela Pessoa Física
create table pessoaFisica(
	idPessoaFisica int auto_increment primary key,
    idCliente int not null,
    CPF varchar(15) not null,
    constraint unique_cpf_cliente unique (CPF),
    constraint fk_pessoaFisica_cliente foreign key (idCliente) references cliente(idCliente)
);

-- Criar tabela Pessoa Jurídica
create table pessoaJuridica(
	idPessoaJuridica int auto_increment primary key,
    idCliente int not null,
    CNPJ varchar(15) not null,
    constraint unique_cnpj_cliente unique (CNPJ),
    constraint fk_pessoaJuridica_cliente foreign key (idCliente) references cliente(idCliente)
);

-- Criar tabela Forma de Pagamento
create table formaPagamento(
	idFormaPagamento int auto_increment primary key,
    idCliente int not null,
    Descricao varchar(100),
    constraint fk_formaPagamento_cliente foreign key (idCliente) references cliente(idCliente)
);

-- Criar tabela Cartão
create table cartao(
	idCartao int auto_increment primary key,
    idFormaPagamento int,
    NumeroCartao varchar(20),
    ValidadeCartao date,
    constraint fk_cartao_formaPagamento foreign key (idFormaPagamento) references formaPagamento(idFormaPagamento)
);

-- Criar tabela Fornecedor
create table fornecedor(
	idFornecedor int auto_increment primary key,
    razaoSocial varchar(50),
    CNPJ varchar(15)
);

-- Criar tabela Produto
create table produto(
	idProduto int auto_increment primary key,
    Categoria varchar(20),
    Descricao varchar(255),
    Valor float
);

-- Criar tabela Disponibilizando um Produto
create table disponibilizandoProduto(
	idFornecedor int,
    idProduto int,
    Quantidade int,
    primary key (idFornecedor, idProduto)
);

-- Criar tabela Estoque
create table estoque(
	idEstoque int auto_increment primary key,
    Endereco varchar(100)
);

-- Criar tabela Produtos em Estoque
create table produtoEstoque(
	idEstoque int,
    idProduto int,
    Quantidade int,
    primary key (idEstoque, idProduto)
);

-- Criar tabela Vendedor
create table vendedor(
	idVendedor int auto_increment primary key,
    RazaoSocial varchar(100),
    Endereco varchar(100)
);

-- Criar tabela Produtos por Vendedor
create table produtoVendedor(
	idVendedor int,
    idProduto int,
    Quantidade int,
    primary key (idVendedor, idProduto)
);

-- Criar tabela Relação de Produto/Pedido
create table relacaoProdutoPedido(
	idPedido int,
    idProduto int,
    idVendedor int,
    Quantidade int,
    Valor float,
    primary key (idPedido, idProduto, idVendedor)
);

-- Criar tabela Frete
create table frete(
	idFrete int auto_increment primary key,
    CEP varchar(10),
    Valor float
);

-- Criar tabela Pedido
create table pedido(
	idPedido int auto_increment primary key,
    idCliente int,
    idFormaPagamento int,
    idFrete int,
    StatusPedido varchar(20),
    Descricao varchar(255),
    PrazoDevolucao date,
    constraint fk_pedido_cliente foreign key (idCliente) references cliente(idCliente),
    constraint fk_pedido_formaPagamento foreign key (idFormaPagamento) references formaPagamento(idFormaPagamento)
);

-- Criar tabela Entrega
create table entrega(
	idEntrega int auto_increment primary key,
    idPedido int,
    StatusEntrega varchar(20),
    CodRastreio varchar(15),
    PrevisaoEntrega date,
    constraint fk_entrega_pedido foreign key (idPedido) references pedido(idPedido)
);