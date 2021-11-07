DROP TABLE products;
CREATE TABLE products (
    id serial NOT NULL  PRIMARY KEY,
    name_product VARCHAR(255) NOT NULL ,
    price_product NUMERIC(20,2) NOT NULL
);

DROP TABLE orders;
CREATE TABLE orders (
    id serial NOT NULL PRIMARY KEY,
    id_product INT NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    address_customer VARCHAR(255) NOT NULL,
    phone BIGSERIAL NOT NULL,
    number_of_contract BIGSERIAL NOT NULL,
    date_of_conclusion_of_the_contract TIMESTAMP NOT NULL,
    name_product VARCHAR(255) NOT NULL ,
    planned_delivery int NOT NULL,

    FOREIGN KEY (id_product) REFERENCES products (id)
);

DROP TABLE shipment_of_goods;
CREATE TABLE shipment_of_goods (
    id_sofg serial NOT NULL PRIMARY KEY,
    id_orders INT NOT NULL,
    shipping_date TIMESTAMP NOT NULL,

    FOREIGN KEY (id_orders) REFERENCES orders (id)
);

INSERT INTO products (name_product, price_product)
VALUES ('Samsung',299.99),
('Nokia', 399.99),
('Motorola', 499.99),
('IPhone', 1499.99),
('LG', 999.99),
('ZTE', 100.99),
('Honor', 299.99),
('Huawei', 599.99);

INSERT INTO orders (customer_name, address_customer, phone, number_of_contract, date_of_conclusion_of_the_contract, name_product,
planned_delivery)
VALUES ()


INSERT INTO shipment_of_goods ()