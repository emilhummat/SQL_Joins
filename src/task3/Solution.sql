--Display department ID, name, year, and Number of employees joined.

select d.department_id, d.department_name, extract(year from hire_date) as year, count(e.employee_id)
from departments d join employees e on d.department_id=e.department_id
group by extract(year from hire_date),d.department_id, d.department_name
order by department_id