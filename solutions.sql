--question ID 9906
 
  select department, count(id) as num_employees
  from employee
  group by department
  order by num_employees desc 
  
-- question ID 9919

  select salary, count(*) 
  from employee
  group by salary
  having count (*) = 1
  order by salary desc
  limit 1
