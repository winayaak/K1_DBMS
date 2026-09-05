create table BackupEmployees(
    emp_id int,
    first_name varchar(50),
    last_name varchar(50),
    department int,
    salary decimal(10,2)
);

create or replace trigger backup_employee
after insert on employees
for each row
begin
    insert into BackupEmployees values(
        :new.emp_id,
        :new.first_name,
        :new.last_name,
        :new.department,
        :new.salary
    );
end;


create table EmployeeHistory(
    emp_id int,
    first_name varchar(50),
    last_name varchar(50),
    department int,
    salary decimal(10,2),
    old_salary decimal(10,2),
    changed_date date
);

create or replace trigger employee_history
before update on employees
for each row
begin
    insert into EmployeeHistory values(
        :old.emp_id,
        :old.first_name,
        :old.last_name,
        :old.department,
        :new.salary,
        :old.salary,
        sysdate
    );
end;


create table DeletedEmployees(
    emp_id int,
    first_name varchar(50),
    last_name varchar(50),
    department int,
    salary decimal(10,2)
);

create or replace trigger deleted_employee
before delete on employees
for each row
begin
    insert into DeletedEmployees values(
        :old.emp_id,
        :old.first_name,
        :old.last_name,
        :old.department,
        :old.salary
    );
end;


create table MonitorHighSalaries(
    emp_id int,
    old_salary decimal(10,2),
    new_salary decimal(10,2),
    changed_date date
);

create or replace trigger monitorhighsalaries
after update of salary on employees
for each row
when (new.salary > 100000)
begin
    insert into MonitorHighSalaries values(
        :old.emp_id,
        :old.salary,
        :new.salary,
        sysdate
    );
end;


select * from employees
where department = (
    select department_id from departments
    where department_name = 'Sales'
);

select sum(salary) from employees
where department = (
    select department_id from departments
    where department_name = 'HR'
);

select * from employees
where salary = (
    select max(salary) from employees
);