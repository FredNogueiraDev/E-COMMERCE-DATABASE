use ecommerce;

-- Recuperação simples com SELECT Statement
select concat(Fname,' ', Lname) as Client,CPF, Address, idOrder as Request, orderStatus as Status, orderDescription from clients c, orders o where c.idClient = idOrderClient;
-- Recuperação das ordens de pedidos, com os dados do cliente e as principais informações da compra.

-- Filtros com WHERE Statement 
-- Crie expressões para gerar atributos derivados 
select concat(Fname,' ', Lname) as Client,CPF, Address, idOrder as Request, orderStatus as Status, orderDescription from clients c, orders o WHERE orderStatus='Confirmado' AND c.idClient = idOrderClient;
-- Recuperação dos pedidos com Status de pagamento = 'Confirmado'


-- Defina ordenações dos dados com ORDER BY
select concat(Fname,' ', Lname) as Client,CPF, Address, idOrder as Request, orderStatus as Status, orderDescription from clients c, orders o where c.idClient = idOrderClient order by idOrder;
-- Recuperação das ordens de pedidos, com os dados do cliente e as principais informações da compra ordenado pelo id da compra.

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
-- Condições de filtros aos grupos - HAVING Statement
select concat(Fname,' ', Lname) as Client,CPF, Address, idOrder as Request, orderStatus as Status, orderDescription from clients c, orders o where c.idClient = idOrderClient HAVING(idOrder) > 5;
-- Recuperação das ordens de pedidos, com os dados do cliente e as principais informações da compra com a condição do id maior que 5, fornecendo uma perspectiva mais complexa de dados.




