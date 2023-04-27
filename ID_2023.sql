-- Redfin helps clients to find agents. Each client will have a unique request_id and each request_id has several calls. 
-- For each request_id, the first call is an “initial call” and all the following calls are “update calls”.  
-- How many customers have called 3 or more times between 3 PM and 6 PM (initial and update calls combined)?

select count(distinct request_id) as num_customers
from (
  select request_id
  from redfin_call_tracking
  where extract(hour from created_on) between 15 and 18
  group by request_id
  having count(*) >= 3
) as customers;
