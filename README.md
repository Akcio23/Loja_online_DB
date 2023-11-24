# Loja_online_DB
Vamos criar uma descrição de um banco de dados com cinco entidades que representam um sistema de gerenciamento de uma loja online. As entidades incluirão diversos tipos de dados para demonstrar a diversidade e complexidade típica de um banco de dados.

Entidade: Cliente

Atributos:

ID do Cliente (Inteiro, Chave Primária)
Nome (Texto)
Sobrenome (Texto)
Data de Nascimento (Data)
E-mail (Texto)
Endereço (Texto)
Relações:

Pode ter uma relação com a entidade "Pedido" (um cliente pode fazer vários pedidos).

Entidade: Produto

Atributos:

ID do Produto (Inteiro, Chave Primária)
Nome do Produto (Texto)
Descrição (Texto Longo)
Preço (Decimal)
Estoque Disponível (Inteiro)
Relações:

Pode ter uma relação com a entidade "PedidoItem" (um produto pode estar presente em vários itens de pedidos).

Entidade: Pedido

Atributos:

ID do Pedido (Inteiro, Chave Primária)
Data do Pedido (Data)
Status do Pedido (Texto, por exemplo: "Em Processamento", "Enviado", "Entregue")
Total do Pedido (Decimal)
Relações:

Pode ter uma relação com a entidade "Cliente" (um pedido é feito por um único cliente).
Pode ter uma relação com a entidade "PedidoItem" (um pedido pode ter vários itens).
Entidade: PedidoItem

Atributos:

ID do Item (Inteiro, Chave Primária)
ID do Pedido (Inteiro, Chave Estrangeira)
ID do Produto (Inteiro, Chave Estrangeira)
Quantidade (Inteiro)
Subtotal (Decimal)
Relações:

Tem uma relação com a entidade "Pedido" (um item pertence a um único pedido).
Tem uma relação com a entidade "Produto" (um item refere-se a um único produto).

Entidade: Avaliação

Atributos:

ID da Avaliação (Inteiro, Chave Primária)
ID do Produto (Inteiro, Chave Estrangeira)
ID do Cliente (Inteiro, Chave Estrangeira)
Classificação (Inteiro, por exemplo: de 1 a 5)
Comentário (Texto Longo)
Relações:

Tem uma relação com a entidade "Produto" (uma avaliação está associada a um único produto).
Tem uma relação com a entidade "Cliente" (uma avaliação é feita por um único cliente).



## Modelo Conceitual 
https://drive.google.com/file/d/1WOYlQFzSXAut2Z50GloLM4xtYQ7nelO_/view?usp=drive_link

## Modelo Logico 
https://dbdiagram.io/d/Modelo_Logico_Pedro-655bbc2b3be149578760943d

## Modelo Fisico 
https://drive.google.com/file/d/1Yzp7qyKSECmCddcYQQvxupxtnTO5OQuo/view?usp=drive_link

Nesta etapa foi realizado a inserção dos dados no banco de dados.

## Relatorio 
Relatorio com as 10 operações de consulta e com  CRUD.
https://drive.google.com/drive/folders/1gftJzX2luQwW8JvfdxqNxc8x8aqH94OT?usp=drive_link