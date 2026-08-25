--different datatypes

CREATE TABLE first_schema.products(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    stock INTEGER DEFAULT 0,
    --store larger whole number than Integer
    total_views BIGINT DEFAULT 0,
    --exact decimal values
    price NUMERIC(10,2),
    is_active BOOLEAN DEFAULT true
);

--INSERT INTO first_schema.products (name,description,stock,total_views,price,is_active)VALUES('pen','good pen',10,1000,12.00,true)

--SELECT * FROM first_schema.products where is_active;