SELECT Class
  FROM Courses
 GROUP BY Class
HAVING COUNT(DISTINCT Student) >= 5
