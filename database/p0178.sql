SELECT Score, DENSE_RANK() OVER (ORDER BY Score DESC) Rank
  FROM Scores
 ORDER BY Score DESC

/*
    Alternative version without DENSE_RANK


SELECT S.Score, 
       R.Rank + 1 AS Rank
  FROM Scores S
 CROSS APPLY 
 ( 
    SELECT COUNT(DISTINCT iScores.Score) AS Rank
      FROM Scores iScores
     WHERE S.Score < iScores.Score 
 ) R
 ORDER BY S.Score DESC

*/
