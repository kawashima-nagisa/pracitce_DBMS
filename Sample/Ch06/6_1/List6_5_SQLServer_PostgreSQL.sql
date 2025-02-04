--SQL Server�APostgreSQL
--DDL�F�e�[�u���쐬
CREATE TABLE SampleStr
(str1  VARCHAR(40),
 str2  VARCHAR(40),
 str3  VARCHAR(40));

--DML�F�f�[�^�o�^
BEGIN TRANSACTION;

INSERT INTO SampleStr (str1, str2, str3) VALUES ('あいう',	'えお'	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abc'	,	'def'	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('山田'	,	'太郎'  ,	'です');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('aaa'	,	NULL    ,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES (NULL	,	'あああ',	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('@!#$%',	NULL	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('ABC'	,	NULL	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('aBC'	,	NULL	,	NULL);
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abc太郎',	'abc'	,	'ABC');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('abcdefabc','abc'	,	'ABC');
INSERT INTO SampleStr (str1, str2, str3) VALUES ('ミックマック',	'ッ', 'つ');

COMMIT;


--�e�[�u���̓��e�m�F
SELECT * FROM SampleStr;


/*
postgres=# SELECT * FROM SampleStr;
     str1     |  str2  | str3 
--------------+--------+------
 あいう       | えお   | 
 abc          | def    | 
 山田         | 太郎   | です
 aaa          |        | 
              | あああ | 
 @!#$%        |        | 
 ABC          |        | 
 aBC          |        | 
 abc太郎      | abc    | ABC
 abcdefabc    | abc    | ABC
 ミックマック | ッ     | つ
(11 rows)
