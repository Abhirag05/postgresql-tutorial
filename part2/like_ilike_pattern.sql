--like -case sensitive pattern match
--ilike -case insesitive pattern match

--% means any character can come after that
SELECT name as product_name 
FROM products
WHERE name LIKE 'No%';

--the below also gives same output since it is case insensitive
SELECT name as product_name 
FROM products
WHERE name ILIKE 'no%';

--'_'
SELECT name as product_name 
FROM products
WHERE name LIKE 'Notebook_';

--% and _ are wild cards: % means any character can come after that and _ means any single character can come after that