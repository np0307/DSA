# Write your MySQL query statement below
select e1.name, e2.bonus
from Employee as e1
Left Join Bonus as e2
ON e1.empId=e2.empId
WHERE e2.bonus < 1000 or e2.bonus IS NULL;