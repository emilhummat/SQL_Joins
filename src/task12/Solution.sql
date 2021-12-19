--Display employee name if the employee joined before his manager.
select r.employee_id as MANAGER_ID, r.first_name as MANAGER_FIRST_NAME, r.last_name as MANAGER_LAST_NAME, r.hire_date as MANAGER_HIRE_DATE,
    i.employee_id, i.first_name, i.last_name, i.hire_date
from employees r join employees i on r.employee_id = i.manager_id
where i.hire_date<r.hire_date