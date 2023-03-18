/*
                Dans cet exercice, on va découvrir comment manipuler les variables dans PL SQL
*/

--  Question1
set serveroutput on;
begin
    DBMS_output.put_line('Bonjour tous le monde!!');
end;
--------------------------------------------------------------
--  Question2   
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
--------------------------------------------------------------
--  Question3
set serveroutput on;
declare 
    nb1 number :=&nombre1;
    nb2 number :=&nombre2;
    nb3 number;
begin
    nb3 := nb1/nb2;
    dbms_output.put_line('La division est---  '||nb3);
    
end;
--------------------------------------------------------------
--  Question4
set serveroutput on;
declare 
    nb number :=&nombre;
    fact number:=1;
begin
    for i in reverse 1..nb  loop
    
        fact:=fact*i;
    
    end loop;
    dbms_output.put_line('Le Factorielle de'||nb ||'est---  '||fact);
end;
--------------------------------------------------------------
--  Question5
set serveroutput on;
declare 
    nb1 number :=&nombre1;
    nb2 number :=&nombre2;
    facto number;
begin    
    for i in nb1..nb2 loop
        facto:=1;
        for j in reverse 1..i  loop
            facto:=facto*i;  
        end loop;
        dbms_output.put_line('Le Factorielle de --'||i ||'-- est------->  '||facto);
    end loop;
end;
--------------------------------------------------------------
--  Question6
set serveroutput on;
declare
    nbr number :=&nb;
    r number;
    code varchar2(50);
begin
    code:='';
    loop
        r:=nbr mod 2;
        nbr:=nbr / 2;
        if r=0 then 
            code:='0'||code;
        else 
            code:='1'||code;
        end if;
    exit when nbr=0;
    dbms_output.put_line(code);
    end loop;
end;

--------------------------------------------------------------
--  Question7
set serveroutput on;
declare 
    nb1 number :=&nombre1;
    nb2 number :=&nombre2;
    
begin    
    for i in nb1..nb2 loop      
        for j in  1..10  loop
             dbms_output.put_line(i||' * '|| j ||'--------->  '||i*j);
        end loop;
        dbms_output.put_line('####################################  ');
    end loop;
end;
