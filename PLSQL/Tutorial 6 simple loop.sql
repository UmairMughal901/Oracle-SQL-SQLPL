--simple loop
SET serveroutput ON;
DECLARE
  v_name NUMBER := 200;
BEGIN
  LOOP
    v_name := v_name + 1;
    dbms_output.put_line(v_name);
    IF v_name >= 30000 then
      EXIT;
    END IF;
  END LOOP;
END;
