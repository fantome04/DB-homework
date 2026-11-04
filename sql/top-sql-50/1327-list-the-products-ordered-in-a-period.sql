-- LeetCode 1327: List the Products Ordered in a Period
-- Original issue: https://github.com/fantome04/DB-homework/issues/41
-- Original submission: https://leetcode.com/problems/list-the-products-ordered-in-a-period/submissions/1422441528/?envType=study-plan-v2&envId=top-sql-50

SELECT p.product_name,
       SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
  ON p.product_id = o.product_id
WHERE o.order_date >= '2020-02-01'
  AND o.order_date < '2020-03-01'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;
