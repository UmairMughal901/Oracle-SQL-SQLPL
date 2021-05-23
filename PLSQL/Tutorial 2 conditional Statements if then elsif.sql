--if then elsif statement
SET SERVEROUTOUT ON;
DECLARE
  v_name VARCHAR2(30):= '&Cityname';
BEGIN
  IF v_name = 'Lahore' THEN
  dbms_output.put_line('City L');
  elsif
  v_name = 'Karachi' THEN
  dbms_output.put_line('City K');
  ELSE
  dbms_output.put_line('All done');
  END IF;
  --dbms_output.put_line('out of if');
  END;