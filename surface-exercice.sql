
create or replace function surface(R number) return number
is 
begin
    return 3.14*R*R;
end;

set serveroutput on;
declare
R number;
begin
    R:=&r;
    DBMS_output.put_line('la surface du cercle est '||surface(R));
end;