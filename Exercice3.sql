set serveroutput on;
DECLARE
v_myname VARCHAR2(20);
BEGIN
DBMS_OUTPUT.PUT_LINE('My name is: '||v_myname);
v_myname:= 'John';
DBMS_OUTPUT.PUT_LINE('My name is: '||v_myname);
END;
/