# Construindo seu Primeiro Projeto Lógico de Banco de Dados

O objetivo desse desafio foi criar queries SQL para criar o banco e tabelas, inserir dados, e consultar dados específicos.

Foi utilizado como base, o modelo criado no desafio [Refinando um Projeto Conceitual de Banco de Dados E-COMMERCE](https://github.com/DionnyZ/DIO--Refinando-um-Projeto-Conceitual-de-Banco-de-Dados-E-COMMERCE).

**As queries foram dividas em três arquivos:**
- [Ecommerce_Create.sql](https://github.com/DionnyZ/DIO--Construindo-seu-Primeiro-Projeto-Logico-de-Banco-de-Dados/blob/main/Ecommerce_Create.sql) com os comandos para criação das tabelas.
- [Ecommerce_Insert.sql](https://github.com/DionnyZ/DIO--Construindo-seu-Primeiro-Projeto-Logico-de-Banco-de-Dados/blob/main/Ecommerce_Insert.sql) com os comandos para inserção de dados.
- [Ecommerce_Select.sql](https://github.com/DionnyZ/DIO--Construindo-seu-Primeiro-Projeto-Logico-de-Banco-de-Dados/blob/main/Ecommerce_Select.sql) com os comandos para consultas.

## Queries de Consulta
``` SQL
-- Quantos clientes estão cadastrados?
select count(*) from cliente;

-- Qual o produto mais vendido?
select p.descricao as Produto, max(somaQuantidade) as Quantidade from
	(select idProduto, sum(Quantidade) as somaQuantidade from relacaoProdutoPedido group by idProduto) as rpp
inner join produto as p
on p.idProduto = rpp.idProduto;

-- Quais os produtos cadastrados (em ordem alfabética)?
select * from produto order by Descricao asc;

-- Quais os produtos no estoque com quantidade abaixo de 5?
select p.descricao, Quantidade from produtoEstoque as pe
inner join produto as p
on p.idProduto = pe.idProduto
having pe.Quantidade < 5;

-- Qual o valor total de cada pedido?
select p.idPedido, rpp.valorTotal from
	(select idPedido, sum(valor) as valorTotal from relacaoProdutoPedido group by idPedido) as rpp
inner join pedido as p
on p.idPedido = rpp.idPedido;

-- Qual o valor do frete de cada pedido?
select p.idPedido, f.CEP, f.valor
from frete as f
inner join pedido as p
on f.idFrete = p.idFrete;

-- Quais clientes possuem "Dio" no nome?
select * from cliente where nome like "%Dio%";
```
