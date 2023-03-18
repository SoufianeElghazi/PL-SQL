--Question 1
set serveroutput on;
declare
    cursor c1(depar number ) is
        select * from employees where DEPARTMENT_ID= depar;
    
begin
    for rec_emp IN c1(30)
        loop
            --DBMS_output.put_line(rec_emp);
            DBMS_output.put_line(rec_emp.EMPLOYEE_ID||'--'||rec_emp.FIRST_NAME||'--'||rec_emp.LAST_NAME);
       end loop;
end;
/
--Question 2
set serveroutput on;
declare
    cursor c2(depar number ) is
        select * from employees  where DEPARTMENT_ID= depar ORDER BY salary;
    
begin
    for rec_emp IN c2(40)
        loop
            for i in 1..5 loop               
                DBMS_output.put_line(rec_emp.EMPLOYEE_ID||'--'||rec_emp.FIRST_NAME||'--'||rec_emp.LAST_NAME||'--'||rec_emp.salary);
            end loop;
       end loop;
end;
/