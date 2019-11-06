;WITH CTE AS
(
    SELECT id, visit_date, people,
           id - ROW_NUMBER() OVER (PARTITION BY CASE WHEN People >= 100 THEN 1 ELSE 0 END ORDER BY id) AS GrpId
      FROM Stadium
),
SELECTION AS 
(
    SELECT GrpId, CASE WHEN people >= 100 THEN 1 ELSE 0 END AS X
      FROM CTE
     GROUP BY GrpId, CASE WHEN people >= 100 THEN 1 ELSE 0 END
    HAVING COUNT(1) >= 3
)
SELECT id, visit_date, people
  FROM CTE
 WHERE GrpId IN (SELECT GrpId FROM SELECTION)
   AND people >= 100
