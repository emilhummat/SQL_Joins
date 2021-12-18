--Write a query in SQL to display the details of jobs which was done by
--any of the employees who is presently earning a salary on and above 12000.
SELECT h.job_id, j.job_title, e.employee_id , e.salary
FROM employees e join jobs j on e.job_id=j.job_id
join job_history h on e.employee_id=h.employee_id
where e.salary>12000