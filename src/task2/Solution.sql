--Display the departments into which no employee joined in last two years.
select d.department_id, d.department_name
from departments d join employees e on d.department_id=e.department_id
where extract(year from hire_date)<>2020 and extract(year from hire_date)<>2021
group by d.department_id, d.department_name
order by department_id