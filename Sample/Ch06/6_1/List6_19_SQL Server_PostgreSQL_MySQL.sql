--SQL Server�APostgreSQL�AMySQL
SELECT COALESCE(NULL, 1)                  AS col_1,
       COALESCE(NULL, 'test', NULL)       AS col_2,
       COALESCE(NULL, NULL, '2009-11-01') AS col_3;


/*
 col_1 | col_2 |   col_3    
-------+-------+------------
     1 | test  | 2009-11-01