--Oracle�ADB2�APostgreSQL
SELECT str1, str2, str3,
       str1 || str2 || str3 AS str_concat
  FROM SampleStr
 WHERE str1 = '山田';

/*
str1 | str2 | str3 |  str_concat  
------+------+------+--------------
 山田 | 太郎 | です | 山田太郎です
(1 row)