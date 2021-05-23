--***********************************WELCOME TO GEOUP***************************************************
--What is Parameterized cursor?
--Unlike simple explicit cursor, parameterized cursors accept values as parameter. You specify the list of parameters separated by comma (,) while declaring the cursor and supply the corresponding argument for each parameter in the list while opening the cursor.
SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(30);
--HERE WE WILL DECLARE THE CURSOR 
    CURSOR new_cursor(PARA_VAR VARCHAR2) IS
    SELECT
        regno
--        ,
--        cnic,
--        name
    FROM
        phs_sc
    WHERE
        AGE < PARA_VAR
        ;

BEGIN
--NOW OPEN THE CURSOR 
    OPEN new_cursor(25);
--THROUGH LOOP WE WILL PUT VALUES IN TO DECLARED VARIABLE
    LOOP
        FETCH new_cursor INTO v_name;
        dbms_output.put_line(v_name);
--BREAK THE LOOP TO SEND IN UNLIMITED PROCESS
        EXIT WHEN new_cursor%notfound;
    END LOOP;

    CLOSE new_cursor;
END;
