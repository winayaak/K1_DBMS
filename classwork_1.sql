create table Employee(EmployeeID int,F_Name varchar2(20),L_Name varchar2(20),Dept varchar(10),Salary int,age int)
desc Employee

alter table Employee add Address varchar2(50)

alter table Employee modify Salary decimal(10,2) 

insert all
into Employee values(1,'Tom','jk rowling','Comp',23000,19,'Mumbai')
into Employee values(2,'Jerry','JK Rowling','Comp',23000,19,'Mumbai')
into Employee values(3,'Harry','Potter','Comp',23000,19,'Mumbai')
into Employee values(123,'Tom','Jk rowling','Comp',23000,19,'Mumbai')
into Employee values(456,'Tom','jk rowling','Comp',23000,19,'Mumbai')
select * from dual

update Employee set salary=60000 where EmployeeID=123

delete from Employee where EmployeeID=456

select * from Employee

select F_Name from Employee where Dept='Comp'

select Salary from Employee

select F_Name,L_Name,age from Employee

select F_Name,Salary from Employee

alter table Employee rename column age to e_age

alter table Employee drop column Address

truncate table Employee

insert all
into Employee values(1,'Tom','jk rowling','Comp',23000,19,'Mumbai')
into Employee values(2,'Jerry','JK Rowling','Comp',23000,19,'Mumbai')
into Employee values(3,'Harry','Potter','Comp',23000,19,'Mumbai')
into Employee values(123,'Tom','Jk rowling','Comp',23000,19,'Mumbai')
into Employee values(456,'Tom','jk rowling','Comp',23000,19,'Mumbai')
select * from dual

select min(Salary) from Employee
select max(Salary) from Employee
select sum(Salary) from Employee
select count(Salary) from Employee
select avg(Salary) from Employee
select upper(F_Name) from Employee
select lower(F_Name) from Employee
select substr(F_Name,0,2) from Employee
select concat(F_Name,L_Name) from Employee
select round(Salary,2) from Employee
select length(F_Name) from Employee