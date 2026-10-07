SET SERVEROUTPUT ON;
DECLARE
     num NUMBER := 10;
BEGIN
    IF num >0 THEN
       GOTO positive;
    ELSIF num <0 THEN
       GOTO negative;
    ELSE
       GOTO zero;
    END IF;
    
    <<positive>>
    DBMS_OUTPUT.PUT_LINE ('the number is positive');
    GOTO finish;
    
    <<negative>>
    DBMS_OUTPUT.PUT_LINE ('the number is negative');
    GOTO finish;
    
    <<zero>>
    DBMS_OUTPUT.PUT_LINE ('the number is zero');
    GOTO finish;
    
    <<finish>>
    NULL;
END;
/
