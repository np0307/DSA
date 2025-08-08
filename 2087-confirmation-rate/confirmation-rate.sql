# Write your MySQL query statement below
select s1.user_id , 
ROUND ( IFNULL(AVG(s2.action='Confirmed'),0),2) as confirmation_rate
from Signups as s1
Left Join Confirmations as s2
ON s1.user_id=s2.user_id
Group by s1.user_id;