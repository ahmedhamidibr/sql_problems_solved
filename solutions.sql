--question ID 9906
 
  select department, count(id) as num_employees
  from employee
  group by department
  order by num_employees desc 
  
