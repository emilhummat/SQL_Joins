--Display department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.

select d.department_name, m.first_name, m.last_name, m.salary
from employees e
Join employees m on m.employee_id=e.manager_id
join departments d on e.department_id = d.department_id
where extract(year from m.hire_date)<2016
group by (m.first_name, m.last_name,d.department_name,m.salary)