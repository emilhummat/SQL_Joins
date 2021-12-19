--Display employee ID, first name, last name and the date on which he ended his previous job.
SELECT  e.employee_id , e.first_name, e.last_name, h.end_date
FROM employees e JOIN job_history h ON e.employee_id=h.employee_id