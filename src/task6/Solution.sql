--Write a query in SQL to display job title and average salary of employees.
SELECT j.job_title, avg(e.salary)as AVERAGE_SALARY
FROM employees e join jobs j on e.job_id=j.job_id
group by (j.job_title)