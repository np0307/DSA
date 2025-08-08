# Write your MySQL query statement below
select contest_id,
ROUND(COUNT(user_id)*100.0/(Select COUNT(*) From users),2) as percentage
from Register
Group by contest_id
ORDER BY percentage  desc, contest_id  asc;