BEGIN
  -- B1: annual salary
  DBMS_OUTPUT.PUT_LINE('B1 emp 1       : ' || fn_annual_salary(1));
  DBMS_OUTPUT.PUT_LINE('B1 emp 999     : ' || NVL(TO_CHAR(fn_annual_salary(999)), 'NULL (not found)'));

  -- B2: years of service
  DBMS_OUTPUT.PUT_LINE('B2 emp 3       : ' || fn_years_of_service(3));

  -- B3: tax brackets
  DBMS_OUTPUT.PUT_LINE('B3 tax 25000   : ' || fn_calculate_tax(25000));
  DBMS_OUTPUT.PUT_LINE('B3 tax 50000   : ' || fn_calculate_tax(50000));
  DBMS_OUTPUT.PUT_LINE('B3 tax 90000   : ' || fn_calculate_tax(90000));

  -- B3: invalid input should raise the error
  BEGIN
    DBMS_OUTPUT.PUT_LINE('B3 tax -5      : ' || fn_calculate_tax(-5));
  EXCEPTION WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('B3 tax -5      : caught ' || SQLERRM);
  END;

  -- B4: department name
  DBMS_OUTPUT.PUT_LINE('B4 dept 20     : ' || fn_dept_name(20));
  DBMS_OUTPUT.PUT_LINE('B4 dept 99     : ' || fn_dept_name(99));
END;
/
