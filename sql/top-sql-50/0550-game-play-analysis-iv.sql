-- LeetCode 550: Game Play Analysis IV
-- Original issue: https://github.com/fantome04/DB-homework/issues/23
-- Original submission: https://leetcode.com/problems/game-play-analysis-iv/submissions/1422369070/?envType=study-plan-v2&envId=top-sql-50

SELECT ROUND(
    COUNT(DISTINCT a.player_id) /
    (SELECT COUNT(DISTINCT player_id) FROM Activity),
    2
) AS fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
) f
  ON a.player_id = f.player_id
 AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY);
