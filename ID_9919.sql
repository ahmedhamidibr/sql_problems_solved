-- question 

  select salary, count(*) 
  from employee
  group by salary
  having count (*) = 1
  order by salary desc
  limit 1
