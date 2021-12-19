--Display employee name, job title for the jobs employee
--did in the past where the job was done less than six months.
SELECT  e.employee_id , e.first_name, e.last_name, h.job_id, j.job_title, h.start_date, h.end_date
FROM employees e join jobs j on e.job_id=j.job_id
join job_history h on e.employee_id=h.employee_id
where months_between(h.end_date,h.start_date)<6