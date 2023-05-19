-- Rank Scores
SELECT score, 
       dense_rank() over(order by score desc) as Rank
FROM Scores
ORDER BY Rank;