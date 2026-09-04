select *
from products
inner join categories
on products.product_category_id = categories.category_id;

select *
from categories
left join products
on categories.category_id = products.product_category_id;

select *
from categories
right join products
on categories.category_id = products.product_category_id;

select *
from products
full outer join categories
on products.product_category_id = categories.category_id;

create or replace procedure add_product(
    id in int,
    p_name in varchar2,
    p_price in number,
    p_category in int
)
is
begin
    insert into products
    values(id, p_name, p_price, p_category);
    dbms_output.put_line('Product added');
end;
/

begin
    add_product(6, 'keyboard', 1500, 3);
    add_product(7, 'mouse', 800, 3);
end;
/

create or replace procedure update_product(
    id in int,
    p_price in number
)
is
begin
    update products
    set price = p_price
    where product_id = id;
    dbms_output.put_line('Product updated');
end;
/

begin
    update_product(1, 65000);
end;
/

create or replace procedure delete_product(
    id in int
)
is
begin
    delete from products
    where product_id = id;
    dbms_output.put_line('Product deleted');
end;
/

begin
    delete_product(7);
end;
/