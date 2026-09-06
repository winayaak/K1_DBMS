select * from products
where product_category_id = (
    select category_id from categories
    where category_name = 'Electronics'
);
select sum(quantity) from orderdetails
where detail_product_id in (
    select product_id from products
    where product_category_id = (
        select category_id from categories
        where category_name = 'Clothing'
    )
);

select * from products
where price = (
    select max(price) from products
);