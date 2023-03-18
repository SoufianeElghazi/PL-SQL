set serveroutput on;
declare
    type tableau is table of number index by BINARY_INTEGER;
    ma_table tableau;
    j number;
    i number;
begin
    --cr�ation de ma_table
    for i in 1..10 loop
        ma_table(i):=i;
       -- DBMS_OUTPUT.PUT_LINE(ma_table(i)) ;
    end loop;
    
    
    --Affichage de la ma_table avant rotation:
    DBMS_OUTPUT.PUT_LINE('---------------------Avant rotation:') ;
    for i in 1..10 loop
        DBMS_OUTPUT.PUT_LINE(ma_table(i)) ;
    end loop;
    
    --rotation:
    j:=ma_table(10);
    for i in reverse 2..10 loop
        ma_table(i):=ma_table(i-1);
    end loop;
    ma_table(1):=j;
    
    
    --Affichage de la ma_table apr�s rotation:
    DBMS_OUTPUT.PUT_LINE('---------------------Apr�s rotation:') ;
    for i in 1..10 loop
        DBMS_OUTPUT.PUT_LINE(ma_table(i)) ;
    end loop;
end;
/
    
    