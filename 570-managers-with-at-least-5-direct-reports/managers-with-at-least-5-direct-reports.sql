# Write your MySQL query statement below
select e.name 
from Employee as e
JOIN Employee as e1
ON e.id=e1.managerId
Group by e.id,e.name
HAVING COUNT(e.id)>=5;