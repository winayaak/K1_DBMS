 create table products(
        product_id int primary key,
        product_name varchar(100),
        price decimal(10,2),
        product_category_id int
    );

    create table categories(
        category_id int primary key,
        category_name varchar(100)
    );

    create table orders(
        order_id int primary key,
        customer_id int,
        order_date int
    );

    create table orderdetails(
        order_detail int primary key,
        detail_order_id int,
        detail_product_id int,
        quantity int,

        foreign key(detail_order_id)
        references orders(order_id),

        foreign key(detail_product_id)
        references products(product_id)
    );

    alter table products
    add constraint f_key foreign key(product_category_id) references categories(category_id);

   insert all
into categories values(1,'Food') 
into categories values(2,'Clothing')
into categories values(3,'Electronics')
select * from dual

insert all 
into products values(1,'laptop',6000,1)
into products values(2,'phone',6000,1)
into products values(3,'t-shirt',6000,2)
into products values(4,'jeans',6000,2)
into products values(5,'sql book',6000,3)
select * from dual

insert all 
into orders values(1,101,2000)
into orders values(2,102,2001)
into orders values(3,103,2002)
select * from dual

insert all
into orderdetails values(1,1,1,1)
into orderdetails values(2,1,2,5)
into orderdetails values(3,2,3,2)
into orderdetails values(4,2,4,1)
into orderdetails values(5,1,5,3)
select * from dual

insert into products(
    106,'invalid',5000,89
);

update products
    set price=65000
    where product_id=1;

select * from products;

delete from orderdetails
where detail_product_id=5;

delete from products
where product_category_id=3;

select * from products
where product_category_id=3;

delete from categories
where category_id=3;