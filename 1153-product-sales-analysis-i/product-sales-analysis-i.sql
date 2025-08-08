# Write your MySQL query statement below
select e2.product_name, e1.year, e1.price
from Sales as e1
INNER JOIN Product as e2
ON e1.product_id=e2.product_id;