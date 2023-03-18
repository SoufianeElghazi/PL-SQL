set serveroutput on;
declare
    EmpRec E_EMP%ROWTYPE;
    salMax E_EMP.salary%TYPE;
begin
    SELECT * INTO EmpREC
    From E_EMP where EMPLOYE_ID='705';
    DBMS_OUTPUT.PUT_LINE(EmpRec.FIRST_NAME ||' ' ||EmpRec.LAST_NAME ||' '||EmpRec.Salary );
end;
/