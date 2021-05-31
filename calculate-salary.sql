select company_id,
       employee_id,
       employee_name,
       round(case when max_salary < 1000 then salary 
            when max_salary between 1000 and 10000 then salary - (salary * .24)
            when max_salary > 10000 then salary - (salary * .49) else salary
       end) salary
from 
(select company_id,
       employee_id,
       employee_name,
       salary,
       max(salary) over (partition by company_id order by salary desc) max_salary

from salaries);