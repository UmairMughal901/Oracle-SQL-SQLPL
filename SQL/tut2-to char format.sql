SELECT 
TO_CHAR(VALUE,'9999999999999990D99') XX,
TO_CHAR(VALUE,'fm9999999999999990D99') XX_FM,
rTRIM(TO_CHAR(VALUE,'fm9999999999999990D999'),'.') TOCHARTRIM
FROM
XMLTABLE('0,0.11,1.210,2231.201125' COLUMNS VALUE number path '.');