--Write a query in SQL to display the country name, city, and number of those departments
--where at least 2 employees are working.
SELECT  d.department_id, d.department_name, l.city, c.country_name, count(e.employee_id) as EMPLOYEE_COUNT
FROM employees e join departments d on e.department_id=d.department_id
join locations l on d.location_id=l.location_id
join countries c on l.country_id=c.country_id
group by(d.department_id, d.department_name,l.city, c.country_name)
having count(e.employee_id)>=2