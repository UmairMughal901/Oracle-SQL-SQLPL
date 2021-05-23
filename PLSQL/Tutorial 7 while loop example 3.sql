-------------YOUTUBE CHANNEL : GEO UP-------------------------
---example 3 for boolean data type in while loop -------------
SET serveroutput ON;
DECLARE
  v_type    BOOLEAN := TRUE;
  v_counter NUMBER  := 0;
  v_result  NUMBER;
BEGIN
  WHILE v_type
  LOOP
    v_counter := v_counter + 1;
    v_result  := v_counter * 23;
    dbms_output.put_line('23 * '||v_counter||' = '||v_result);
    IF v_counter >= 10 THEN
      EXIT;
    END IF;
  END LOOP;
  dbms_output.put_line('This is outside loop');
END;
/