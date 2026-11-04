-- LeetCode 1045: Customers Who Bought All Products
-- Original issue: https://github.com/fantome04/DB-homework/issues/30
-- Original submission: https://leetcode.com/problems/customers-who-bought-all-products/submissions/1422414870/?envType=study-plan-v2&envId=top-sql-50

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);
