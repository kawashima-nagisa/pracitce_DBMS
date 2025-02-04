--Oracle�ADB2�APostgreSQL�AMySQL
SELECT n, p,
       MOD(n, p) AS mod_col
  FROM SampleMath;

/*

  n | p | mod_col 
---+---+---------
 0 |   |        
 0 |   |        
   |   |        
 7 | 3 |       1
 5 | 2 |       1
 4 |   |        
   | 3 |        
 1 |   |        
 2 |   |        
 1 |   |        
   |   |        
(11 rows)