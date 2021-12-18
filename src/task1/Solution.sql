
-- Return the employees that were hired between the years of 2002 and 2005
Select employee_id, first_name, last_name, hire_date from employees where hire_date between to_date('1999-01-01','YYYY-MM-DD') and to_date('2005-12-31','YYYY-MM-DD')Select employee_id, first_name, last_name, hire_date from employees where hire_date between date '2002-01-01' and date '2005-12-31'
