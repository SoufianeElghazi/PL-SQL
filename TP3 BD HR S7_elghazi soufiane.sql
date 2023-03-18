/*
                ###########################################
                ############___ELGHAZI_SOUFIANE___#########
                ############_________ICSD_________#########
                ############_________N°13_________#########
                ###########################################
*/
------------------PL SQL TP3--------------

--Question 18:
SET SERVEROUTPUT ON ;
DECLARE    
    REC_EMP EMPLOYEES%ROWTYPE ;
BEGIN
    SELECT * into rec_emp FROM EMPLOYEES where EMPLOYEE_ID = 203   ;
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE_ID -------->'||rec_emp.EMPLOYEE_ID);
    DBMS_OUTPUT.PUT_LINE('FIRST_NAME --------->'||rec_emp.FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE('LAST_NAME ---------->'||rec_emp.LAST_NAME);
    DBMS_OUTPUT.PUT_LINE('EMAIL -------------->'||rec_emp.EMAIL);
    DBMS_OUTPUT.PUT_LINE('PHONE_NUMBER ------->'||rec_emp.PHONE_NUMBER);
    DBMS_OUTPUT.PUT_LINE('HIRE_DATE ---------->'||rec_emp.HIRE_DATE);
    DBMS_OUTPUT.PUT_LINE('JOB_ID ------------->'||rec_emp.JOB_ID);
    DBMS_OUTPUT.PUT_LINE('SALARY ------------->'||rec_emp.SALARY);
    DBMS_OUTPUT.PUT_LINE('COMMISSION_PCT------>'||rec_emp.COMMISSION_PCT);
    DBMS_OUTPUT.PUT_LINE('MANAGER_ID --------->'||rec_emp.MANAGER_ID);
    DBMS_OUTPUT.PUT_LINE('DEPARTMENT_ID ------>'||rec_emp.DEPARTMENT_ID);
END; 
-------------------------------------------------------------------------------
--Question 19:
SET SERVEROUTPUT ON ;
DECLARE
    CURSOR C_EMP(id number) IS 
    SELECT * FROM EMPLOYEES where EMPLOYEE_ID = id ;
    REC_EMP EMPLOYEES%ROWTYPE ;
BEGIN
    OPEN C_EMP(203) ;
    FETCH C_EMP INTO REC_EMP ;
    WHILE C_EMP%FOUND LOOP    
        DBMS_output.put_line(rec_emp.EMPLOYEE_ID||'--'||rec_emp.FIRST_NAME||'--'||rec_emp.LAST_NAME||'--'||rec_emp.EMAIL||'--'||rec_emp.PHONE_NUMBER||'--'||rec_emp.HIRE_DATE||'--'||rec_emp.JOB_ID||'--'||rec_emp.SALARY||'--'||rec_emp.COMMISSION_PCT||''||rec_emp.MANAGER_ID||'--'||rec_emp.DEPARTMENT_ID);
        FETCH C_EMP INTO REC_EMP ;
    END LOOP ;
    
    CLOSE C_EMP ;
END; 
-------------------------------------------------------------------------------
-- Question 20:
---------FOR:
set serveroutput on;
declare
    cursor c_for is
        select * from employees ;
    
begin
    for rec_emp IN c_for
        loop                           
            DBMS_OUTPUT.PUT_LINE('Matricule --------> '||rec_emp.EMPLOYEE_ID);
            DBMS_OUTPUT.PUT_LINE('Prénom -----------> '||rec_emp.FIRST_NAME);
            DBMS_OUTPUT.PUT_LINE('Nom --------------> '||rec_emp.LAST_NAME);
            DBMS_OUTPUT.PUT_LINE('--------------------------------------------');
            
       end loop;
end;
/
---------while:
SET SERVEROUTPUT ON ;
DECLARE
    CURSOR c_while IS 
    SELECT * FROM EMPLOYEES;
    REC_EMP EMPLOYEES%ROWTYPE ;
BEGIN
    OPEN c_while ;
    FETCH c_while INTO REC_EMP ;
    WHILE c_while%FOUND LOOP    
        DBMS_OUTPUT.PUT_LINE('Matricule --------> '||rec_emp.EMPLOYEE_ID);
        DBMS_OUTPUT.PUT_LINE('Prénom -----------> '||rec_emp.FIRST_NAME);
        DBMS_OUTPUT.PUT_LINE('Nom --------------> '||rec_emp.LAST_NAME);
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------');
        FETCH c_while INTO REC_EMP ;
    END LOOP ;
    
    CLOSE c_while ;
END; 
--------------------------------------------------------------------------------
--Question 21:
set serveroutput on;
declare
    cursor c_departement is
        select * from departments ;
    
begin
    for rec_dep IN c_departement
        loop                           
            DBMS_OUTPUT.PUT_LINE('DEPARTMENT_ID ------------> '||rec_dep.DEPARTMENT_ID);
            DBMS_OUTPUT.PUT_LINE('DEPARTMENT_NAME ----------> '||rec_dep.DEPARTMENT_NAME);
            DBMS_OUTPUT.PUT_LINE('MANAGER_ID ---------------> '||rec_dep.MANAGER_ID);
            DBMS_OUTPUT.PUT_LINE('LOCATION_ID --------------> '||rec_dep.LOCATION_ID);
            DBMS_OUTPUT.PUT_LINE('-----------------------------------------------');
            
       end loop;
end;
/
--------------------------------------------------------------------------------
--Question 22:
set serveroutput on;
declare
    cursor c1(depar number ) is
        select * from employees where DEPARTMENT_ID= depar;
    
begin
    for rec_emp IN c1(30)
        loop
            
            DBMS_output.put_line(rec_emp.EMPLOYEE_ID||'--'||rec_emp.FIRST_NAME||'--'||rec_emp.LAST_NAME);
       end loop;
end;
/
--------------------------------------------------------------------------------
--Question 23:
set serveroutput on;
declare
    cursor c1(depar number ) is
        select * from employees where DEPARTMENT_ID= depar;
    
begin
    DBMS_output.put_line('Les employés du département '|| 30|| ' sont :');
    DBMS_output.put_line('------------------------------------------------------------------------');
    for rec_emp IN c1(30)
        loop                      
            DBMS_output.put_line(rec_emp.EMPLOYEE_ID||'--'||rec_emp.FIRST_NAME||'--'||rec_emp.LAST_NAME);
            DBMS_output.put_line('------------------------------------------------------------------------');
       end loop;
end;
/




     