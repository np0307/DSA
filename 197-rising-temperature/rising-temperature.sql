# Write your MySQL query statement below
select w.id 
from Weather as w
join weather as w1
ON DATEDIFF(w.recordDate,w1.recordDate)=1
Where w.temperature>w1.temperature;

