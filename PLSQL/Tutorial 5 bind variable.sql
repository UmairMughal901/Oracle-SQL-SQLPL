--Bind Variable
--First way to declare and initliaze BInd variable
variable v_bind1 VARCHAR2(20);
exec :v_bind1 := 'Hellodata1';

--Second way to declare and initlize bind variable
SET serveroutput ON;
BEGIN
:v_bind1 := 'HelloData2';
dbms_output.put_line(:v_bind1);
END;
/
Print :v_bind1;
--or
Print v_bind1;

--Third way to print bind variable using auto print on
Set autoprint on;
variable v_bind2 VARCHAR2(20);
exec :v_bind2 := 'Hellodata3';

--by using just variable command we can get the all variables in anonomus blocks
variable;
variable v_Bind2;
--Restriction:
--?If you are creating a bind variable of NUMBER datatype then you can not specify the precision and scale.
