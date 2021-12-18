--Display departments where any manager is managing more than 5 employees.
  select e.department_id, d.department_name,m.employee_id, m.first_name, m.last_name,
    count(e.employee_id) as EMPLOYEE_COUNT
from employees e
Join employees m on m.employee_id=e.manager_id
join departments d on e.department_id = d.department_id
group by e.department_id, d.department_name, m.employee_id, m.first_name, m.last_name
having count(e.employee_id) >5
order by d.department_name