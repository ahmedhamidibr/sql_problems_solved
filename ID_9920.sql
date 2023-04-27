---
Find employees in the Sales department who achieved a target greater than 150.
Output first names of employees.
Sort records by the first name in descending order.
---

select first_name, target
from employee
where target >150 AND department = 'Sales'
order by first_name desc
