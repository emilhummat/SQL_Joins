--Display manager ID, first name, last name and number of employees managed by the manager.
select m.employee_id, m.first_name, m.last_name, count(e.employee_id) as EMPLOYEE_COUNT
from employees m join employees e on m.employee_id=e.manager_id
group by(m.employee_id, m.first_name, m.last_name);