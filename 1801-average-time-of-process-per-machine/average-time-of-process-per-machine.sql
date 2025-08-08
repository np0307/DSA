# Write your MySQL query statement below
select a.machine_id, ROUND(AVG(a1.timestamp-a.timestamp),3) as processing_time
from Activity as a
Join Activity a1
ON a.machine_id=a1.machine_id
AND a.process_id=a1.process_id
AND a.activity_type='start'
AND a1.activity_type='end'
Group by a.machine_id;