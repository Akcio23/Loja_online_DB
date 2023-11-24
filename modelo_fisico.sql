use avaliacao;
CREATE TABLE [cliente] (
  [id_cliente] int PRIMARY KEY,
  [nome] varchar(20),
  [data_nascimento] date,
  [email] varchar(50),
  [rua] varchar(50),
  [numero] int,
  [bairro] varchar(20),
  [cidade] varchar(20)
)
GO

CREATE TABLE [produto] (
  [id_produto] int PRIMARY KEY,
  [nome_produto] varchar(50),
  [descricao] varchar(100),
  [preco] decimal,
  [estoque_disponivel] int
)
GO

CREATE TABLE [pedido] (
  [id_pedido] int PRIMARY KEY,
  [data_pedido] date,
  [total_pedido] decimal,
  [id_cliente] int
)
GO

CREATE TABLE [pedidoItem] (
  [id_item] int PRIMARY KEY,
  [id_produto] int,
  [id_pedido] int,
  [quantidade] int,
  [subtotal] decimal
)
GO

CREATE TABLE [avaliacao] (
  [id_avaliacao] int PRIMARY KEY,
  [id_produto] int,
  [id_cliente] int,
  [classificacao] int
)
GO

ALTER TABLE [pedidoItem] ADD FOREIGN KEY ([id_pedido]) REFERENCES [pedido] ([id_pedido])
GO

ALTER TABLE [pedidoItem] ADD FOREIGN KEY ([id_produto]) REFERENCES [produto] ([id_produto])
GO

ALTER TABLE [avaliacao] ADD FOREIGN KEY ([id_produto]) REFERENCES [produto] ([id_produto])
GO

ALTER TABLE [avaliacao] ADD FOREIGN KEY ([id_cliente]) REFERENCES [cliente] ([id_cliente])
GO

ALTER TABLE [pedido] ADD FOREIGN KEY ([id_cliente]) REFERENCES [cliente] ([id_cliente])
GO

insert into cliente values(01,'Pedro','2002-03-23','pedro@gmail.com','Izaurino leal', 1450,'Portinari','Franca');

select * from cliente

INSERT INTO cliente VALUES (2, 'Ana', '1995-08-15', 'ana@gmail.com', 'Silva Pereira', 2200, 'Avenida Central', 'S�o Paulo');
  
 INSERT INTO cliente VALUES  (3, 'Carlos', '1980-05-10', 'carlos@yahoo.com', 'Martins Oliveira', 1800, 'Rua Verde', 'Rio de Janeiro');
 INSERT INTO cliente VALUES  (4, 'Mariana', '1998-12-02', 'mariana@hotmail.com', 'Fernandes Costa', 1600, 'Pra�a da Paz', 'Salvador');
 INSERT INTO cliente VALUES  (5, 'Ricardo', '1985-07-18', 'ricardo@gmail.com', 'Santos Lima', 2000, 'Avenida Primavera', 'Belo Horizonte');
 INSERT INTO cliente VALUES (6, 'Camila', '1992-09-30', 'camila@yahoo.com', 'Oliveira Souza', 1700, 'Rua do Sol', 'Recife');
 INSERT INTO cliente VALUES  (7, 'Lucas', '1988-04-11', 'lucas@hotmail.com', 'Almeida Santos', 1900, 'Travessa das Flores', 'Porto Alegre');
 INSERT INTO cliente VALUES  (8, 'Fernanda', '1990-06-25', 'fernanda@gmail.com', 'Rodrigues Costa', 2100, 'Avenida do Mar', 'Fortaleza');
 INSERT INTO cliente VALUES (9, 'Gabriel', '1982-11-08', 'gabriel@yahoo.com', 'Machado Pereira', 1550, 'Rua das Estrelas', 'Bras�lia');
 INSERT INTO cliente VALUES (11, 'Antonio', '1987-01-20', 'antonio@gmail.com', 'Lima Silva', 1950, 'Rua da Harmonia', 'Curitiba');
 INSERT INTO cliente VALUES  (12, 'Amanda', '1991-07-05', 'amanda@yahoo.com', 'Nunes Costa', 1750, 'Pra�a da Liberdade', 'Goi�nia');
 INSERT INTO cliente VALUES  (13, 'Gustavo', '1984-09-12', 'gustavo@hotmail.com', 'Rocha Santos', 1850, 'Alameda das �guias', 'S�o Lu�s');
 INSERT INTO cliente VALUES  (14, 'Isabela', '1996-02-28', 'isabela@gmail.com', 'Cavalcante Lima', 1650, 'Rua do Bosque', 'Vit�ria');
 INSERT INTO cliente VALUES (15, 'Marcos', '1989-10-15', 'marcos@yahoo.com', 'Sousa Almeida', 2000, 'Avenida do Sol', 'Natal');
 INSERT INTO cliente VALUES (16, 'Patr�cia', '1994-06-08', 'patricia@hotmail.com', 'Silveira Costa', 1900, 'Pra�a das Flores', 'Porto Velho');
 INSERT INTO cliente VALUES  (17, 'Hugo', '1983-04-03', 'hugo@gmail.com', 'Lopes Oliveira', 1700, 'Rua das �rvores', 'Florian�polis');
 INSERT INTO cliente VALUES  (18, 'Luana', '1997-11-21', 'luana@yahoo.com', 'Azevedo Lima', 1600, 'Avenida das Rosas', 'Palmas');
 INSERT INTO cliente VALUES  (19, 'Roberto', '1986-08-17', 'roberto@hotmail.com', 'Ferreira Souza', 1750, 'Travessa da Paz', 'Campo Grande');
 INSERT INTO cliente VALUES  (20, 'Beatriz', '1999-01-09', 'beatriz@gmail.com', 'Oliveira Pereira', 1850, 'Rua da Amizade', 'Macei�');
 INSERT INTO cliente VALUES (10, 'isa', '2010-08-14', 'isa@gmail.com', 'Pereira Neves', 6666, 'Ze pilantra','Brasilia');
 
 select * from cliente


 

  INSERT INTO produto VALUES
  (1, 'Caneta', 'Caneta esferogr�fica cl�ssica e favorita em milhares de lares', 1.50, 80),
  (2, 'Caderno', 'Caderno de capa dura com 100 folhas pautadas', 5.99, 50),
  (3, 'L�pis', 'L�pis HB para escrita suave e precisa', 0.99, 100),
  (4, 'Borracha', 'Borracha branca para apagar com facilidade', 0.75, 120),
  (5, 'Agenda', 'Agenda anual com capa de couro sint�tico', 8.99, 30),
  (6, 'Mochila', 'Mochila resistente com v�rios compartimentos', 25.50, 20),
  (7, 'R�gua', 'R�gua pl�stica transparente de 30 cm', 1.25, 60),
  (8, 'Estojo', 'Estojo compacto para guardar material escolar', 3.50, 40),
  (9, 'Marcador de Texto', 'Conjunto de marcadores coloridos para real�ar texto', 4.99, 35),
  (10, 'Tesoura', 'Tesoura de a�o inoxid�vel para uso geral', 2.75, 25),
  (11, 'Papel A4', 'Pacote com 100 folhas de papel A4', 7.50, 15),
  (12, 'Clips', 'Clips met�licos para prender documentos', 0.50, 200),
  (13, 'Calculadora', 'Calculadora cient�fica com fun��es avan�adas', 15.99, 10),
  (14, 'Grampeador', 'Grampeador compacto para at� 20 folhas', 4.25, 30),
  (15, 'Pasta Organizadora', 'Pasta com v�rias divis�es para documentos', 6.99, 18),
  (16, 'L�pis de Cor', 'Conjunto de l�pis de cor para desenho', 9.50, 28),
  (17, 'Giz de Cera', 'Caixa com 24 cores de giz de cera', 3.99, 42),
  (18, 'Pinc�is de Arte', 'Conjunto de pinc�is para pintura art�stica', 12.75, 15),
  (19, 'Apontador', 'Apontador manual para l�pis de escrita', 1.00, 60),
  (20, 'Pasta Executiva', 'Pasta executiva de couro para documentos', 18.99, 12);

  select * from produto


INSERT INTO pedido values (25415,'2023-02-10',100,1);

 select * from pedido


 INSERT INTO pedido VALUES
  (25416, '2023-02-11', 120, 2),
  (25417, '2023-02-12', 80, 3),
  (25418, '2023-02-13', 150, 1),
  (25419, '2023-02-14', 90, 4),
  (25420, '2023-02-15', 110, 2),
  (25421, '2023-02-16', 130, 3),
  (25422, '2023-02-17', 70, 1),
  (25423, '2023-02-18', 160, 4),
  (25424, '2023-02-19', 95, 2),
  (25425, '2023-02-20', 125, 3),
  (25426, '2023-02-21', 140, 1),
  (25427, '2023-02-22', 75, 4),
  (25428, '2023-02-23', 105, 2),
  (25429, '2023-02-24', 115, 3),
  (25430, '2023-02-25', 88, 1),
  (25431, '2023-02-26', 145, 4),
  (25432, '2023-02-27', 98, 2),
  (25433, '2023-02-28', 135, 3),
  (25434, '2023-03-01', 78, 1),
  (25435, '2023-03-02', 155, 4);


  
 select * from pedido


 INSERT INTO pedidoItem VALUES
  (1258, 1, 25416, 8, null),
  (1259, 2, 25417, 12, null),
  (1260, 3, 25418, 15, null),
  (1261, 1, 25419, 9, null),
  (1262, 2, 25420,11, null),
  (1263, 3, 25421, 14, null),
  (1264, 1, 25422, 7, null),
  (1265, 2, 25423, 13, null),
  (1266, 3, 25424, 10, null),
  (1267, 1, 25425, 8, null),
  (1268, 2, 25426, 12, null),
  (1269, 3, 25427, 15, null),
  (1270, 1, 25428, 9, null),
  (1271, 2, 25429, 11, null),
  (1272, 3, 25430, 14, null),
  (1273, 1, 25431, 7, null),
  (1274, 2, 25432, 13, null),
  (1275, 3, 25433, 10, null),
  (1276, 1, 25434, 8, null),
  (1277, 2, 25435, 12, null);

  select * from pedidoItem
  select * from produto
  select* from avaliacao
	
	

INSERT INTO avaliacao VALUES
  (15428, 1, 1, 1),
  (15429, 2, 2, 2),
  (15430, 3, 3, 3),
  (15431, 4, 4, 4),
  (15432, 5, 5, 5),
  (15433, 1, 2, 4),
  (15434, 2, 3, 1),
  (15435, 3, 4, 3),
  (15436, 4, 5, 2),
  (15437, 5, 1, 5),
  (15438, 1, 3, 2),
  (15439, 2, 4, 5),
  (15440, 3, 5, 1),
  (15441, 4, 1, 3),
  (15442, 5, 2, 4),
  (15443, 1, 4, 5),
  (15444, 2, 5, 3),
  (15445, 3, 1, 2),
  (15446, 4, 2, 1),
  (15447, 5, 3, 4);
	

	
	/* 1*/
	
	
	select * from avaliacao where classificacao >= 5


	/*2*/

	delete from pedidoItem

	/*3*/
	INSERT INTO pedidoItem VALUES
  (1258, 1, 25416, 8, null),
  (1259, 2, 25417, 12, null),
  (1260, 3, 25418, 15, null),
  (1261, 1, 25419, 9, null),
  (1262, 2, 25420,11, null),
  (1263, 3, 25421, 14, null),
  (1264, 1, 25422, 7, null),
  (1265, 2, 25423, 13, null),
  (1266, 3, 25424, 10, null),
  (1267, 1, 25425, 8, null),
  (1268, 2, 25426, 12, null),
  (1269, 3, 25427, 15, null),
  (1270, 1, 25428, 9, null),
  (1271, 2, 25429, 11, null),
  (1272, 3, 25430, 14, null),
  (1273, 1, 25431, 7, null),
  (1274, 2, 25432, 13, null),
  (1275, 3, 25433, 10, null),
  (1276, 1, 25434, 8, null),
  (1277, 2, 25435, 12, null);

  /* 4 */

  select * from cliente where nome like 'p%'

  /* 5 */

  select * from produto order by preco desc

  /* 6 */ 
  UPDATE cliente
  SET nome = 'pedro afonso'
  WHERE id_cliente = 1

  select * from cliente

  /* 7 */

  select * from produto order by preco asc
    
  /* 8 */

  select nome,data_nascimento from cliente where data_nascimento > '2000-01-01'



  /* 9 */ 

  select * from pedidoItem where id_produto = 1

  /* 10 */

  select * from pedido where data_pedido > '2023-02-15' and data_pedido < '2023-02-25'