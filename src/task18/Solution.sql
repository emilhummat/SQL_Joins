--Display country name, city, and number of departments where department has more than 5 employees.

    select e.department_id, d.department_name, l.city, c.country_name,
    count(e.employee_id) as EMPLOYEE_COUNT
from employees e join departments d on e.department_id = d.department_id
join locations l on d.location_id=l.location_id
join countries c on l.country_id=c.country_id
group by e.department_id, d.department_name, l.city, c.country_name
having count(e.employee_id) >5
order by d.department_name