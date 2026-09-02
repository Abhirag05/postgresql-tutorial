--we shouldnt check null using == null instead we should use is null or is not null

SELECT name as product_name
FROM products
WHERE category IS NULL;

SELECT name as product_name
FROM products
WHERE category IS NOT NULL;