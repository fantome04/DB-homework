-- LeetCode 1068: Product Sales Analysis I
-- Original issue: https://github.com/fantome04/DB-homework/issues/8
-- Original submission: https://leetcode.com/problems/product-sales-analysis-i/submissions/1421125018/?envType=study-plan-v2&envId=top-sql-50

SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
  ON s.product_id = p.product_id;
