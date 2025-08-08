# Write your MySQL query statement below
select s1.product_id ,
ROUND(IFNULL(SUM(s2.units * s1.price)/SUM(s2.units),0),2) as average_price
From Prices as s1
Left Join UnitsSold as s2
ON s1.product_id=s2.product_id
AND s2.purchase_date BETWEEN s1.start_date AND s1.end_date
Group by s1.product_id;