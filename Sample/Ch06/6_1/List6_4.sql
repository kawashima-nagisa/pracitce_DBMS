--List6-4
SELECT m, n,
       ROUND(m, n) AS round_col
  FROM SampleMath;


/*
  m     | n | round_col 
----------+---+-----------
  500.000 | 0 |       500
 -180.000 | 0 |      -180
          |   |          
          | 7 |          
          | 5 |          
          | 4 |          
    8.000 |   |          
    2.270 | 1 |       2.3
    5.555 | 2 |      5.56
          | 1 |          
    8.760 |   |          
(11 rows)