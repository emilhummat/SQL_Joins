-- Display the department id, name, month in which more than 5 employees joined in any department located in Seattle.
select department_id, department_name, number_of_month, decode(number_of_month,
    1, 'January',
    2, 'February',
    3, 'March',
    4, 'April',
    5, 'May',
    6, 'June',
    7, 'July',
    8, 'August',
    9, 'September',
    10, 'October',
    11, 'November',
    12, 'December'
) as name_of_month, count_of_employee
from (
    select d.department_id, d.department_name, extract(month from hire_date) as number_of_month, count(employee_id) as count_of_employee
    from employees e join departments d on e.department_id=d.department_id
    join locations l on d.location_id=l.location_id
    where l.city='Seattle'
    group by extract(month from hire_date),d.department_id, d.department_name
    HAVING(count(employee_id)>=5)
);