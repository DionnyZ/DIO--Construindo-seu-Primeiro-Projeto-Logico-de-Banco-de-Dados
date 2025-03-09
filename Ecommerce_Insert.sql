insert into cliente values
	(1, "Dionny Bravo", "12987664832", "Rua das Malandragens, 10", "00000001"),
    (2, "Joseph Jonas", "1298748833", "Rua das Hortas, 11", "00000002"),
    (3, "Diogo Brindo", "23984763234", "Av. das Mortadelas, 12", "00000003"),
    (4, "JJ Oficina", "84938475647", "Rua das Cores, 13", "00000004");
    
insert into pessoaFisica values
	(1, 1, "43210987412"),
    (2, 2, "12345678901"),
    (3, 3, "09876543210");
    
insert into pessoaJuridica values
	(1, 4, "87493884783");
    
insert into formaPagamento values
	(1, 1, "Cartão"),
    (2, 2, "Cartão"),
    (3, 3, "Cartão"),
    (4, 4, "Cartão");
    
insert into cartao values
	(1, 1, "12345678", "2028-10-10"),
    (2, 2, "90876423", "2029-11-11"),
    (3, 3, "71084754", "2030-12-12"),
    (4, 4, "01765273", "2031-01-13");
    
insert into fornecedor values
	(1, "Eletrônicos de Montão", "124848282"),
    (2, "Tem Roupa e Tem Sido", "89308283"),
    (3, "Brinquedos de Verdade", "129401421");
    
insert into produto values
	(1, "Eletrônico", "Fone de ouvido", 10.99),
    (2, "Roupa", "Camiseta", 32.20),
    (3, "Briquedo", "Bola", 22.00),
    (4, "Eletrônico", "Lanterna", 12.90),
    (5, "Roupa", "Blusa", 89.90);
    
insert into disponibilizandoProduto values
	(1, 1, 10),
    (2, 2, 15),
    (3, 3, 8),
    (1, 4, 3),
    (2, 5, 12);
    
insert into estoque values
	(1, "Monte das Montanhas"),
    (2, "Centro do Mundo");
    
insert into produtoEstoque values
	(1, 1, 10),
    (1, 2, 15),
    (1, 3, 8),
    (2, 4, 3),
    (2, 5, 12);
    
insert into vendedor values
	(1, "Loja SUS", "Rua do Fundo, 33"),
    (2, "Enal Tecidos", "Rua dos Panos, 34"),
    (3, "Brinks", "Av. de Verdade, 35");
    
insert into produtoVendedor values
	(1, 1, 10),
    (2, 2, 15),
    (3, 3, 8),
    (1, 4, 3),
    (2, 5, 8),
    (1, 5, 4);
    
insert into relacaoProdutoPedido values
	(1, 1, 1, 1, 10.99),
    (2, 2, 2, 2, 32.20),
    (2, 5, 2, 1, 89.90),
    (3, 1, 1, 2, 8.99),
    (3, 3, 2, 3, 22.00),
    (3, 4, 1, 2, 12.90),
    (3, 5, 1, 1, 89.90);
    
insert into frete values
	(1, "00000001", 5.00),
    (2, "00000002", 6.00),
    (3, "00000003", 7.00),
    (4, "00000004", 8.00),
    (5, "00000005", 9.00);
    
insert into pedido values
	(1, 1, 1, 1, "Pago", "", "2025-03-05"),
    (2, 2, 2, 2, "Cancelado", "", "2025-03-06"),
    (3, 3, 3, 3, "Aguardando pagamento", "", "2025-03-07");
    
insert into entrega values
	(1, 1, "Entregue", "72398", "2025-02-05"),
    (2, 2, "Cancelado", "09233", "2025-02-06");