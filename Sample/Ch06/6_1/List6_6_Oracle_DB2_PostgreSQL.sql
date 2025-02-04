--Oracle�ADB2�APostgreSQL
SELECT str1, str2,
       str1 || str2 AS str_concat
  FROM SampleStr;



/*
   str1     |  str2  |   str_concat   
--------------+--------+----------------
 あいう       | えお   | あいうえお
 abc          | def    | abcdef
 山田         | 太郎   | 山田太郎
 aaa          |        | 
              | あああ | 
 @!#$%        |        | 
 ABC          |        | 
 aBC          |        | 
 abc太郎      | abc    | abc太郎abc
 abcdefabc    | abc    | abcdefabcabc
 ミックマック | ッ     | ミックマックッ