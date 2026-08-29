CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price>=0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK(stock>=0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    sku TEXT UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO products(name,category,price,stock,is_active,sku,description)VALUES('Notebook','Stationery',5.99,100,TRUE,'NB-001','A 100-page notebook for school and office use.'),
('Pen','Stationery',1.49,500,TRUE,'PN-002','A smooth ballpoint pen with blue ink.'),
('Laptop','Electronics',999.99,50,TRUE,'LP-003','A high-performance laptop suitable for gaming and work.'),
('Headphones','Electronics',199.99,200,TRUE,'HP-004','Noise-cancelling over-ear headphones with Bluetooth connectivity.'),
('Coffee Mug','Kitchenware',12.99,300,TRUE,'CM-005','A ceramic coffee mug with a capacity of 350ml.');

--inserting without specifyin colum names:INSERT INTO products VALUES('eca4479c-c43a-43f6-931e-38c5a8c6e321','Notebook2','Stationery',5.19,110,TRUE,'NB-002','A 200-page notebook for school and office use.');