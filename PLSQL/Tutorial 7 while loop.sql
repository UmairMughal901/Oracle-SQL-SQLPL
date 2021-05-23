-- WHile loop example 2
SET serveroutput ON;
DECLARE
  v_count  NUMBER := 1;
  v_result NUMBER;
BEGIN
  WHILE v_count <= 10
  LOOP
    v_result := 89 * v_count;
    dbms_output.put_line('89 * '||v_count||' = '||v_result);
    v_count := v_count + 1;
  END LOOP;
  dbms_output.put_line('This is outside loop');
END;

----Syntax
--DECLARE
--BEGIN
--while 
----condition
--loop
----statement 1
----statement n
--END loop;
--end;
