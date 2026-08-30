create or replace procedure add_employee(idd in int ,f_name in varchar,l_name in varchar, depart in int,sal in int)
is
    begin
    insert into employees values(idd,f_name,l_name,depart,sal);
    dbms_output.put_line('Added');
    end;

    begin
    add_employee(6,'tom','jerry',2,5000);
    add_employee(7,'jerry','tom',2,4000);
    end;

    create or replace procedure update_employee(idd in int,sal in int)
    is 
    begin 
    update employees set salary=sal where emp_id=idd;
    dbms_output.put_line('updated');
    end;

    begin
    update_employee(1,60000);
    end;


create or replace procedure delete_employee(idd in int)
is
begin
delete from employees where emp_id=idd;
 dbms_output.put_line('deleted');
 end;

 begin
 delete_employee(7);
 end;