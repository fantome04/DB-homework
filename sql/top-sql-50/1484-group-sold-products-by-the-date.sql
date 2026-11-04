-- LeetCode 1484: Group Sold Products By The Date
-- Original issue: https://github.com/fantome04/DB-homework/issues/40
-- Original submission: https://leetcode.com/problems/group-sold-products-by-the-date/submissions/1422440943/?envType=study-plan-v2&envId=top-sql-50

SELECT sell_date,
       COUNT(DISTINCT product) AS num_sold,
       GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
