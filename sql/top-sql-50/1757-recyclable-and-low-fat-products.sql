-- LeetCode 1757: Recyclable and Low Fat Products
-- Original issue: https://github.com/fantome04/DB-homework/issues/2
-- Original submission: https://leetcode.com/problems/recyclable-and-low-fat-products/submissions/1421121001/?envType=study-plan-v2&envId=top-sql-50

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
