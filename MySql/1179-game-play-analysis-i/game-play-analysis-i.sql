# Write your MySQL query statement below


SELECT player_id, event_date AS first_login FROM ( SELECT player_id, event_date, ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS Row_Num FROM Activity) A WHERE Row_Num = 1;






