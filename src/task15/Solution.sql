-- Display department name, average salary and number of employees with commission within the department.
SELECT d.department_name, ROUND(avg(e.salary)), count(e.commission_pct) as EMPLOYEE_WITH_COMMISSION
FROM employees e join departments d on e.department_id=d.department_id
group by (d.department_name)