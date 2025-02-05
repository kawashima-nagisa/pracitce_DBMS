--SQL Server�ADB2�APostgreSQL
--Shohin2�̃��R�[�h����Shohin�̃��R�[�h������
SELECT shohin_id, shohin_mei
  FROM Shohin2
EXCEPT
SELECT shohin_id, shohin_mei
  FROM Shohin
ORDER BY shohin_id;



 shohin_id | shohin_mei 
-----------+------------
 0009      | 手袋
 0010      | やかん
(2 rows)
