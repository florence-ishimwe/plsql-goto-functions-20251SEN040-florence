-- illegal goto
DECLARE
    v_x NUMBER :=1;
BEGIN
    GOTO inside_if;
    IF v_x >0 THEN
    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('inside IF');
    END IF;
END;
/
-- llegal goto
DECLARE
    v_x NUMBER :=1;
BEGIN
    GOTO fixed_label;
    <<fixed_label>>
    DBMS_OUTPUT.PUT_LINE('Fixed no goto error');
END;
/
