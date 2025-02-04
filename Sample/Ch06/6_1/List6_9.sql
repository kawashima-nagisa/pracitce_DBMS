SELECT str1,
       LOWER(str1) AS low_str
  FROM SampleStr
 WHERE str1 IN ('ABC', 'aBC', 'abc', '山田');



 /*
  str1 | low_str 
------+---------
 abc  | abc
 山田 | 山田
 ABC  | abc
 aBC  | abc
(4 rows)
 */
SELECT str1,
       upper(str1) AS low_str
  FROM SampleStr
 WHERE str1 IN ('ABC', 'aBC', 'abc', '山田');

 /*
   str1 | low_str 
------+---------
 abc  | ABC
 山田 | 山田
 ABC  | ABC
 aBC  | ABC
(4 rows)
 */
