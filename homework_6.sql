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

create table BackupProducts(
    product_id int,
    product_name varchar(100),
    price decimal(10,2),
    product_category_id int
);

create or replace trigger backup_products
after insert on products
for each row
begin
    insert into BackupProducts values(
        :new.product_id,
        :new.product_name,
        :new.price,
        :new.product_category_id
    );
end;
/

create table ProductHistory(
    product_id int,
    product_name varchar(100),
    price decimal(10,2),
    product_category_id int
);

create or replace trigger product_history
before update on products
for each row
begin
    insert into ProductHistory values(
        :old.product_id,
        :old.product_name,
        :old.price,
        :old.product_category_id
    );
end;
/

create table DeletedProducts(
    product_id int,
    product_name varchar(100),
    price decimal(10,2),
    product_category_id int
);

create or replace trigger deleted_products
before delete on products
for each row
begin
    insert into DeletedProducts values(
        :old.product_id,
        :old.product_name,
        :old.price,
        :old.product_category_id
    );
end;
/

create table PriceUpdates(
    product_id int,
    old_price decimal(10,2),
    new_price decimal(10,2),
    update_timestamp timestamp
);

create or replace trigger MonitorHighPrices
before update on products
for each row
begin
    if :new.price > 1000 then
        insert into PriceUpdates values(
            :old.product_id,
            :old.price,
            :new.price,
            systimestamp
        );
    end if;
end;
/
update products
set price=20000
where product_id=1;