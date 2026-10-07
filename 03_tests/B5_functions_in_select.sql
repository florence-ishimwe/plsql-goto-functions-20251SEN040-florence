SELECT e.emp_id,
       e.first_name ,
       fn_dept_name(e.dept_id)as department, 
       fn_annual_salary(e.emp_id)as annual_salary,
       fn_calculate_tax(fn_annual_salary(e.emp_id))as annual_tax,
       fn_years_of_service(e.emp_id) as years_service
FROM employees e
WHERE e.hire_date <= sysdate
ORDER BY e.emp_id;
