SELECT w1.Id
  FROM Weather w1
 INNER JOIN Weather w2
    ON w2.RecordDate = DATEADD(D, -1, w1.RecordDate)
 WHERE w2.Temperature < w1.Temperature 
