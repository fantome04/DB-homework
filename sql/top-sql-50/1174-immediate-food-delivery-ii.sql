-- LeetCode 1174: Immediate Food Delivery II
-- Original issue: https://github.com/fantome04/DB-homework/issues/22
-- Original submission: https://leetcode.com/problems/immediate-food-delivery-ii/submissions/1422354321/?envType=study-plan-v2&envId=top-sql-50

SELECT ROUND(
    AVG(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ELSE 0 END) * 100,
    2
) AS immediate_percentage
FROM Delivery d
JOIN (
    SELECT customer_id, MIN(order_date) AS first_order
    FROM Delivery
    GROUP BY customer_id
) f
  ON d.customer_id = f.customer_id
 AND d.order_date = f.first_order;
