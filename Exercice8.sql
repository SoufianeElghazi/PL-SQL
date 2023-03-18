set serveroutput on;
declare
    grade char (1) ;
begin
    grade :='&gr';
    dbms_output.put_line(grade);
    case grade 
        when 'A' then dbms_output.put_line('Trés bien!!');
        when 'B' then dbms_output.put_line('Bien!!');
        when 'C' then dbms_output.put_line('Assez Bien!!');
        when 'D' then dbms_output.put_line('Moyen!!');
        else dbms_output.put_line('grade non valide!!');
    End case;
end;