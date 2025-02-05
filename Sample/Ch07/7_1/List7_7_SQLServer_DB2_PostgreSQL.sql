--SQL Server�APostgreSQL
SELECT shohin_id, shohin_mei
  FROM Shohin
EXCEPT
SELECT shohin_id, shohin_mei
  FROM Shohin2
ORDER BY shohin_id;



 shohin_id | shohin_mei 
-----------+------------
 0004      | 包丁
 0005      | 圧力鍋
 0006      | フォーク
 0007      | おろしがね
 0008      | ボールペン
(5 rows)
