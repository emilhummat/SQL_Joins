--Write a query in SQL to display full name(first and last name), job title, starting and ending date of
--last jobs for those employees who worked without a commission percentage.
Select e.employee_id, e.last_name, e.first_name, h.start_date, h.end_date, j.job_title
from employees e join job_history h on e.employee_id=h.employee_id
join jobs j on h.job_id=j.job_id
where e.commission_pct is null;