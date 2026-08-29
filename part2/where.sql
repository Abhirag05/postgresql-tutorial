--where clause is used to filter rows based on a specific condtion 

--select name,category,price from products where category='Electronics';

select name,category,price from products where is_active=TRUE;
