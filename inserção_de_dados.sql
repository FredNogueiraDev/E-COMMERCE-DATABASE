use ecommerce;
show tables;

desc clients;
-- idClient, Fname, Minit, Lname, CPF, Address
insert into clients(Fname, Minit, Lname, CPF, Address)
	values('Maria', 'M', 'Silva', '14523176004', 'rua salameira de ouro 33 - São Paulo - SP'),
		  ('Frederico', 'N', 'Batista', '14523176005', 'rua das graças 125 - Divinopolis - MG'),
		  ('Filipe', 'R', 'Silva', '14523176006', 'rua detetive de prata 57 - Rio de Janeiro - RJ'),
          ('Eduarda', 'D', 'França', '14523176007', 'rua capinopolis 655 - São Paulo - SP'),
          ('Douglas', 'M', 'Luiz', '14523176008', 'rua das arabia 897 - São Paulo - SP'),
          ('Paula', 'S', 'Gomides', '14523176009', 'rua salameira de ouro 33 - São Paulo - SP');

desc product;
-- idProduct, Pname, classification_kids, category(Jogos, Livros, Consoles, Itens de colecionador, outros), rating, size
insert into product(Pname, classification_kids, category, rating, size)
			values ('Xbox One', null, 'Consoles', '5', null),
				   ('PS5', null, 'Consoles', '2', null),
				   ('GTA 5', null, 'Jogos', '5', null),
				   ('Fifa 23', '1', 'Jogos', '4', null),
                   ('Tetris', '1', 'Jogos', '3', null),
                   ('RDR2', null, 'Jogos', '5', null);
				
                
desc orders;
-- idOrder, idOrderClient, orderStatus(Cancelado, Confirmado, Em processamento), orderDescription, sendValue, paymentCash, idPayment
insert into orders(idOrderClient, orderStatus, orderDescription, sendValue, paymentCash)
	values (7,'Confirmado',null, null, 1),
		   (7,'Confirmado',null, 50, 1),
           (7,'Confirmado',null, null, 1),
           (8,default,null, 150, 0),
           (10,	'Confirmado',null, 20, 0),
           (9,default,null, 50, 0);
           
select * from product;

desc productOrder;
-- idOProduct, idOrder, poQuantity, poStatus(Disponível, Sem estoque)
insert into productOrder(idOProduct, idOrder, poQuantity, poStatus) values
						(1,1,2,null),
                        (2,3,1,null),
                        (3,4,1,null),
                        (4,2,1,null);

desc payments;
-- idClient, idOrder, idPayment, typePayment, PaymentStatus, discountInPercent
insert into payments(idClient, idOrder, idPayment, typePayment, PaymentStatus, discountInPercent) values
					(7,1,1,'Credito','Aprovado',default),
                    (7,2,2,'Credito','Aprovado',default),
                    (7,3,3,'Credito','Aprovado',default),
                    (8,4,4,'Boleto','Aprovado',default),
                    (10,5,5,'Boleto','Aprovado',default),
                    (9,6,6,'Boleto','Aprovado',default);

desc productSeller;
-- idPSeller, idProduct, prodQuantity

desc productStorage;
-- idProductStorage, storageLocation, quantity
insert into productStorage(storageLocation, quantity) values
							('Belo Horizonte', 5564),
                            ('Belo Horizonte', 57548),
                            ('Belo Horizonte', 907),
                            ('São Paulo', 85471);
desc productSupplier;
-- idPsSupplier, idPsProduct, quantity

desc seller;
-- idSeller, SocialName, AbstName, CNPJ, contact, address

desc storageLocation;
-- idLProduct, idLStorage, address
insert into storageLocation(idLProduct, idLStorage, address) values
							(1,2,'MG'),
                            (2,1,'SP'),
                            (3,4,'MG');

desc supplier;
-- idSupplier, SocialName, CNPJ, contact
insert into supplier(SocialName, CNPJ, contact) values
					('Almeida Neto',1234567891234,37991398337),
                    ('Jefrey Store',3154567891788,37991398874),
                    ('Birou Jhow',2588767891741,11988798337);

