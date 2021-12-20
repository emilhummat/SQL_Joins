--Display job title and average salary for employees who did a job in the past.
Select j.job_title, avg (salary)
from job_history h join employees e on h.employee_id=e.employee_id
join jobs j on h.job_id=j.job_id
group by j.job_title