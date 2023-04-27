-- Redfin helps clients to find agents. Each client will have a unique request_id and each request_id has several calls. 
-- For each request_id, the first call is an “initial call” and all the following calls are “update calls”. 
-- What's the average call duration for all initial calls?

select avg(call_duration) as avg_initial_call_duration
from (
  select request_id, min(created_on) as initial_call_time
  from redfin_call_tracking
  group by request_id
) as initial_calls
join redfin_call_tracking on initial_calls.request_id = redfin_call_tracking.request_id and initial_calls.initial_call_time = redfin_call_tracking.created_on;
