set serveroutput on;
declare
    number1 number := 1;
    number2 number := 2;
    number3 number;
begin
    dbms_output.put_line('Avant permutation : '||number1||' '|| number2);
    number3:=number1;
    number1:=number2;
    number2:=number3;
    dbms_output.put_line('Après permutation : '||number1||' '|| number2);
end;
/
    