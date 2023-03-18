set serveroutput on;
declare
    v_salMax employees.salary%TYPE;
begin
    select max(salary) into v_salMax 
    from employees;
    DBMS_OUTPUT.PUT_LINE('salaire maximale'||v_salMax);
end;
/