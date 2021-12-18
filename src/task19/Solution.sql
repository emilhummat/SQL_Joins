--Display how many employees joined in each month of the current year.
select extract(month from hire_date) as MONTH, count(employee_id) as EMPLOYEE_COUNT
    from employees where extract(year from hire_date) = '2021'
    group by extract(month from hire_date)
    order by 1