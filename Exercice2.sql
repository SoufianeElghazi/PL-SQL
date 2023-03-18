/*
                Dans cet exercice, on va découvrir comment utiliser les tables et les enregistrements dans PL SQL
*/
--------------------------------------------------------------
--  Question1
set serveroutput on;
declare
    type monTab is table of number index by binary_integer ;
    sortir boolean :=true;
    nbre number;
--------------------------------------------------------------
--  Question2
    Tab1 monTab;
    Tab2 monTab;
begin
--------------------------------------------------------------
--  Question3
    for i in 1..20 loop
        Tab1(i):=i*i;
    end loop;
--------------------------------------------------------------
--  Question4
    DBMS_OUTPUT.PUT_LINE('Le tableau Avant le trie est:  ') ;
    FOR i IN 1..20 LOOP
        DBMS_OUTPUT.PUT_LINE('Tab1(' || i || ') = ' || Tab1(i)) ;
    END LOOP ;
--------------------------------------------------------------
--  Question5
    while sortir=true loop
        sortir:=false;
        FOR i IN 1..tab1.count-1 LOOP
            if Tab1(i+1)>Tab1(i) then 
                nbre:=Tab1(i);
                Tab1(i):=Tab1(i+1);
                Tab1(i+1):=nbre;
                sortir:=true;
            end if;
        END LOOP ;
    end loop;
    DBMS_OUTPUT.PUT_LINE('Le tableau Après le trie est:  ') ;
    FOR i IN reverse 1..20 LOOP
        DBMS_OUTPUT.PUT_LINE('Tab1(' || i || ') = ' || Tab1(i)) ;
    END LOOP ;
end;
--*****************************************************************************

set serveroutput on;
--------------------------------------------------------------
--  Question6
               --Tableau des structures
--------------------------------------------------------------
--  Question7 && Question8
declare
    
    type stagiaire is record(
        CIN varchar2(15),
        Nom varchar2(15),
        fillier varchar2(15)
        );
    type monTab is table of stagiaire index by binary_integer ;
    soufiane stagiaire;
    amine stagiaire;
    yassine stagiaire;
    zakarya stagiaire;
    --&&
    tab3 monTab;
begin
    soufiane.CIN:='P1234';
    soufiane.nom:='Soufiane';
    soufiane.fillier:='ICSD';
    --  &&&&&
    amine.CIN:='D1234';
    amine.nom:='amine';
    amine.fillier:='ICSD';
    --  &&&&&
    yassine.CIN:='R1234';
    yassine.nom:='yassine';
    yassine.fillier:='ICSD';
    --  &&&&&
    zakarya.CIN:='C1234';
    zakarya.nom:='Zakarya';
    zakarya.fillier:='ICSD';
--------------------------------------------------------------
--  Question9 
    tab3(1):=soufiane;
    tab3(2):=amine;
    tab3(3):=zakarya;
    tab3(4):=yassine;
--------------------------------------------------------------
--  Question10
    FOR i IN 1..4 LOOP
        DBMS_OUTPUT.PUT_LINE('Tab3(' || i || ') = ' || Tab3(i)) ;
    END LOOP ;
end;
/


