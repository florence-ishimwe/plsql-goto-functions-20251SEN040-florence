CREATE OR REPLACE FUNCTION fn_calculate_tax (p_annual_salary IN NUMBER)
RETURN NUMBER
IS  
BEGIN
   IF p_annual_salary is null or p_annual_salary <0 THEN
      raise_application_error(-20001, 'invalid salary');
   END IF;
   
   IF p_annual_salary <= 30000 THEN
     RETURN 0;
   ELSIF p_annual_salary <= 60000 THEN
     RETURN (p_annual_salary - 30000)*0.10;
   ELSE
     RETURN 3000 +(p_annual_salary - 60000) *0.20;
   END IF;
END fn_calculate_tax;
/

