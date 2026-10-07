DECLARE
   v_emp_id NUMBER :=&enter_emp_id;
   v_salary   employees.salary%TYPE;
    v_emp_name VARCHAR2(100);
BEGIN
    SELECT first_name || ' ' || last_name, salary 
    INTO v_emp_name, v_salary
    FROM employees
    WHERE emp_id = v_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_emp_name || ' | Current Salary: $' || v_salary);

    IF v_salary >= 20000 THEN
    DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ':high salary, no raise');
    ELSIF v_salary >= 10000 THEN
    DBMS_OUTPUT.PUT_LINE('Salary' || v_salary || ':mediaum salary, standard review' );
    ELSE
    DBMS_OUTPUT.PUT_LINE('Salary' || v_salary || ':low salary, eligible for raise review');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary review process completed.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: Employee ID ' || v_emp_id || ' not found.');
END;
/
