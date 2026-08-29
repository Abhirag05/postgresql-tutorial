--primary key is unique

CREATE TABLE first_schema.sales(
    id SERIAL PRIMARY KEY,
    title TEXT,
    price NUMERIC(10,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);
INSERT INTO first_schema.sales(title,price) VALUES('pen1',12),('pen2',14);

--select * from first_schema.sales where id=1;