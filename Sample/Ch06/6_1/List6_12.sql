SELECT str1,
       UPPER(str1) AS up_str
  FROM SampleStr
 WHERE str1 IN ('ABC', 'aBC', 'abc', '山田');



 SELECT str1,
       UPPER(str1) AS up_str
  FROM SampleStr
 WHERE str1 IN ('ABC', 'aBC', 'abc', '山田')OR str1 IS NULL;;


 /*
  str1 | up_str 
------+--------
 abc  | ABC
 山田 | 山田
 ABC  | ABC
 aBC  | ABC