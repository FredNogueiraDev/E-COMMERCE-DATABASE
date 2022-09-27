-- criação do banco de dados para o cenário de E-commerce
create database ecommerce;
use ecommerce;

-- criar tabela cliente
create table clients(
	idClient int auto_increment primary key not null,
    Fname varchar(20) not null,
    Minit char(3),
    Lname varchar(20) not null,
    CPF char(11) not null,
    Address varchar(255) not null,
    constraint unique_cpf_client unique(CPF)
);
desc clients;
alter table clients auto_increment=1;


--  criar tabela produto
create table product(
	idProduct int auto_increment primary key not null,
    Pname varchar(10) not null,
    classification_kids bool default false,
    category enum('Jogos', 'Livros', 'Consoles', 'Itens de colecionador', 'outros') not null,
    rating float default 0,
    size varchar(10)
);
alter table product auto_increment=1;

--  criar tabela métodos de pagamento
create table payments(
	idClient int,
    idOrder int,
    idPayment int,
    typePayment enum('Boleto','Credito','Credito dois cartões'),
    PaymentStatus enum('Aprovado','Em análise','Recusado'),
    discountInPercent varchar(4) default '0%',
    primary key(idClient, idPayment, idOrder),
    constraint fk_id_client foreign key(idClient) references clients(idClient),
    constraint fk_id_order foreign key(idOrder) references orders(idOrder)
);
desc payments;
drop table payments;

--  criar tabela pedido
create table orders(
	idOrder int auto_increment primary key not null,
    idOrderClient int,
    orderStatus enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
    orderDescription varchar(255),
    sendValue float default 10,
    paymentCash bool default false,
    idPayment int,
    constraint fk_orders_client foreign key(idOrderClient) references clients(idClient)
);
alter table orders auto_increment=1;
desc orders;
-- criar tabela estoque
create table productStorage(
	idProductStorage int auto_increment primary key not null,
	storageLocation varchar(255),
    quantity int default 0
);
alter table productStorage auto_increment=1;

-- criar tabela fornecedor
create table supplier(
	idSupplier int auto_increment primary key not null,
	SocialName varchar(30) not null,
    CNPJ char(14) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);
alter table supplier auto_increment=1;

-- criar tabela vendedor
create table seller(
	idSeller int auto_increment primary key not null,
	SocialName varchar(30) not null,
    AbstName varchar(40),
    CNPJ char(14) not null,
    contact char(11) not null,
    address varchar(50) not null,
    constraint unique_seller unique (CNPJ)
);
alter table seller auto_increment=1;

create table productSeller(
	idPSeller int,
    idProduct int,
    prodQuantity int default 1,
    primary key (idPSeller, idProduct),
    constraint fk_product_seller foreign key(idPSeller) references seller(idSeller),
    constraint fk_product_product foreign key(idProduct) references product(idProduct)
);

create table productOrder(
	idOProduct int,
    idOrder int,
    poQuantity int default 1,
    poStatus enum('Disponível','Sem estoque') default 'Disponível',
    primary key (idOProduct, idOrder),
    constraint fk_order_product foreign key(idOProduct) references product(idProduct),
    constraint fk_productorder_product foreign key(idOrder) references orders(idOrder)
);

create table storageLocation(
	idLProduct int,
    idLStorage int,
    address varchar(255) not null,
    primary key (idLProduct, idLStorage),
    constraint fk_Location_product foreign key(idLProduct) references product(idProduct),
    constraint fk_Location_storage foreign key(idLStorage) references productStorage(idProductStorage)
);

create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier,idPsProduct),
    constraint fk_product_supplier_supplier foreign key(idPsSupplier) references supplier(idSupplier),
	constraint fk_product_supplier_product foreign key(idPsProduct) references product(idProduct)
);
desc productSupplier;

show tables;