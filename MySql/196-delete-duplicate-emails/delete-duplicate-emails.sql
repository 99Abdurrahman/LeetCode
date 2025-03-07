# Write your MySQL query statement below






DELETE P FROM Person P INNER JOIN (SELECT P2.id,P2.email, ROW_NUMBER() OVER (PARTITION BY P2.email ORDER BY P2.email,P2.id) AS Row_Rank
                                   FROM Person P2 INNER JOIN (SELECT id,email,COUNT(*) AS Count_of_all FROM Person GROUP BY email HAVING COUNT(*) > 1) dt ON P2.email = dt.email) dt2 ON P.id = dt2.id WHERE dt2.Row_Rank !=1;

