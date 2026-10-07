CREATE OR REPLACE FUNCTION fn_validate_payroll (p_emp_id IN NUMBER)
RETURN VARCHAR2
IS
  v_emp      employees%ROWTYPE;
  v_dept_cnt NUMBER;
BEGIN
  SELECT * INTO v_emp FROM employees WHERE emp_id = p_emp_id;

  IF v_emp.salary IS NULL OR v_emp.salary <= 0 THEN
    RETURN 'INVALID: salary must be greater than zero';
  END IF;

  IF v_emp.hire_date > SYSDATE THEN
    RETURN 'INVALID: hire date is in the future';
  END IF;

  SELECT COUNT(*) INTO v_dept_cnt
  FROM departments WHERE dept_id = v_emp.dept_id;
  IF v_dept_cnt = 0 THEN
    RETURN 'INVALID: department does not exist';
  END IF;

  RETURN 'VALID';
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'INVALID: employee not found';
  WHEN OTHERS THEN
    RETURN 'ERROR: ' || SQLERRM;
END fn_validate_payroll;
/
