declare
    v_date DATE default SYSDATE;
begin
    dbms_output.put_line('today is'|| v_date);
end;
/