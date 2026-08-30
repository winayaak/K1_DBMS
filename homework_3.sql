select * from products order by price desc fetch first 2 rows only

select detail_product_id,sum(quantity) from orderdetails group by detail_product_id

select product_category_id,sum(price) from products group by product_category_id

select product_name,avg(price) from products group by product_name

select * from products order by product_name desc

select product_category_id,avg(price) from products group by product_category_id having avg(price)>5000

select * from products order by product_name desc
