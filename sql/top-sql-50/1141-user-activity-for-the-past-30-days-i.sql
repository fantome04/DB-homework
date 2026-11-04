-- LeetCode 1141: User Activity for the Past 30 Days I
-- Original issue: https://github.com/fantome04/DB-homework/issues/25
-- Original submission: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/submissions/1422387901/?envType=study-plan-v2&envId=top-sql-50

SELECT activity_date AS day,
       COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY activity_date;
