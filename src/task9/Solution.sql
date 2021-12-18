--Write a query in SQL to display the full name (first and last name), and salary of those employees
 --who working in any department located in London.
 SELECT e.employee_id, e.first_name, e.last_name, e.salary
 FROM employees e join departments d on e.department_id=d.department_id
 join locations l on d.location_id=l.location_id
 where l.city='London'