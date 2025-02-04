SELECT str1, str2, str3,
       REPLACE(str1, str2, str3) AS rep_str
  FROM SampleStr;


/*
     str1     |  str2  | str3 |   rep_str    
--------------+--------+------+--------------
 あいう       | えお   |      | 
 abc          | def    |      | 
 山田         | 太郎   | です | 山田
 aaa          |        |      | 
              | あああ |      | 
 @!#$%        |        |      | 
 ABC          |        |      | 
 aBC          |        |      | 
 abc太郎      | abc    | ABC  | ABC太郎
 abcdefabc    | abc    | ABC  | ABCdefABC
 ミックマック | ッ     | つ   | ミつクマつク
 
✅ REPLACE() は str2 が str1 にないと置換されない！
✅ REPLACE() は str2 が NULL だと何も起こらない！
✅ str2 が str1 に複数回出現すると、すべて置換される！
✅ str2 が空 ('') の場合、何も起こらない！