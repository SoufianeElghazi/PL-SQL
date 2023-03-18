set serveroutput on;
declare
vEname employees.first_name%TYPE;
vSal employees.salary%TYPE;
begin
select e.first_name , e.salary into vEname, vSal
from employees e
where e.employee_id = '110'; 
DBMS_OUTPUT.PUT_LINE('NOM : ' || vEname );
DBMS_OUTPUT.PUT_LINE('Salaire : '||vSal);
End;