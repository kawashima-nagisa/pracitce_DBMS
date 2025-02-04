--PostgreSQL�AMySQL
SELECT str1,
       SUBSTRING(str1 FROM 3 FOR 2) AS sub_str
  FROM SampleStr;

SELECT str1,
       SUBSTRING(str1,3, 2) AS sub_str
  FROM SampleStr;

/*
     str1     | sub_str 
--------------+---------
 あいう       | う
 abc          | c
 山田         | 
 aaa          | a
              | 
 @!#$%        | #$
 ABC          | C
 aBC          | C
 abc太郎      | c太
 abcdefabc    | cd
 ミックマック | クマ

SUBSTRING(str1 FROM 3 FOR 2)	3文字目から2文字取得	cd
SUBSTRING(str1 FROM 3)	3文字目から最後まで取得	cdef
SUBSTRING(str1 FOR 3)	1文字目から3文字取得	abc
SUBSTRING(str1, 3, 2)	3文字目から2文字取得（省略形）	cd
✅ SUBSTRING() を使うと、文字列の特定の部分だけを取り出せる！
✅ FROM を指定すると「何文字目から取得するか」決められる！
✅ FOR を指定すると「何文字取得するか」決められる！