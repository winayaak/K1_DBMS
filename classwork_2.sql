create table employees(
    emp_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    department int,
    salary decimal(10,2)
);

create table departments(
    department_id int primary key,
    department_name varchar(50)
);

alter table employees
    add constraint fk_department
    foreign key(department)
    references departments(department_id)
    on delete cascade;

    insert into employees values(
        1,'vinayak','singh',1,1000
    );

    insert all
    into departments values(1,'IT')
    into departments values(2,'Finance')
    into departments values(3,'HR')
    select * from dual

    insert all
    into employees values(1,'vinayak','singh',1,1000)
    into employees values(2,'akshat','singh',1,1000)
    into employees values(3,'shreya','singh',2,1000)
    into employees values(4,'shubham','singh',2,1000)
    into employees values(5,'aditya','singh',3,1000)
    select * from dual

    update employees
    set salary=200000
    where emp_id=1;

    delete from departments 
    where department_id= 3;

    select * from employees;

    select first_name,last_name from employees;