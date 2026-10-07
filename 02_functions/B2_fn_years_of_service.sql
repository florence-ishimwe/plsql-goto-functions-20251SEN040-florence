CREATE OR REPLACE FUNCTION fn_years_of_service (p_emp_id IN NUMBER)
RETURN NUMBER
IS
  v_hire employees.hire_date%type;
BEGIN
   SELECT hire_date INTO v_hire FROM employees WHERE emp_id=p_emp_id;
   RETURN trunc(months_between(sysdate,v_hire)/12);
EXCEPTION
WHEN no_data_found THEN
   RETURN NULL;
END fn_years_of_service;
/

