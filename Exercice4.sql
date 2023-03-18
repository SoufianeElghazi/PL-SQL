set serveroutput on;
DECLARE
v_myname VARCHAR2(20):= 'John';
BEGIN
v_myname:= 'Steven';
DBMS_OUTPUT.PUT_LINE('My name is: '|| v_myname);
END;
/