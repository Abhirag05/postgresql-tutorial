--select * from products;

--products where it is electronis but price>1000

select name as product_name from products where category='Electronics' and price>200;


--using or

select name as product_name from products where category='Electronics' or price>200;

--using not

SELECT name as product_name
FROM products
WHERE NOT category='Electronics';

