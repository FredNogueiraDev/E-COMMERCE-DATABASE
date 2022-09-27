# Projeto lógico de banco de dados de um e-commerce

Primeiramente foi replicado a modelagem do cenário de banco de dados de um e-commerce com alguns ajustes. Com a utilização de um modelo EER, para uma melhor visualização do projeto em questão.

Foi realizada a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, foi relizada a persistência de dados para a execução de testes. Então, foi solicitado a especificação de queries mais complexas dos que apresentadas durante a explicação do desafio, são elas: 

* Recuperações simples com SELECT Statement
* Filtros com WHERE Statement
* Crie expressões para gerar atributos derivados
* Defina ordenações dos dados com ORDER BY
* Condições de filtros aos grupos – HAVING Statement
* Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

## Diretrizes
* Não há um mínimo de queries a serem realizadas;
* Os tópicos supracitados devem estar presentes nas queries;
* Elabore perguntas que podem ser respondidas pelas consultas;
* As cláusulas podem estar presentes em mais de uma query;

## Cenário

### Produto
* Os produtos são vendidos por uma única plataforma online.
* Cada produto possui um fornecedor
* Um ou mais produtos podem compor um pedido

## Cliente
* O cliente pode se cadastrar no site com seu CPF ou CNPJ
* Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações
* O endereço do cliente irá determinar o valor do frete.
* Um cliente pode fazer mais de um pedido. Este tem um período de carência para devolução do produto.

## Pedido
* Os pedidos são criados por clientes e possuem informações de compra, endereço e status de entrega.
* Um produto ou mais compõem o pedido
* Pode ter cadastrado mais de uma forma de pagamento
* Possui status e código de rastreio
* O pedido pode ser cancelado
