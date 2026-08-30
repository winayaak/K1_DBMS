select * from employees order by salary desc fetch first 3 rows only

select department ,sum(salary) from employees group by department

select department,avg(salary) from employees group by department order by avg(salary) desc fetch first row only

select department,count(emp_id) from employees group by department having count(emp_id)>1

select department,min(salary),max(salary) from employees group by department 

select * from employees order by last_name desc

select department,avg(salary) from employees group by department having avg(salary)>2000

select * from employees order by salary desc

select count(emp_id) from employees

select avg(salary) from employees

select max(salary) from employees

select min(salary) from employees

select upper(first_name),upper(last_name) from employees

select length(first_name) from employees

select concat(first_name,concat(' ',last_name)) from employees