--Oracle�ASQL Server�ADB2�APostgreSQL
SELECT shohin_id, shohin_mei
  FROM Shohin
INTERSECT ALL
SELECT shohin_id, shohin_mei
  FROM Shohin2
ORDER BY shohin_id;



 shohin_id |   shohin_mei   
-----------+----------------
 0001      | Tシャツ
 0002      | 穴あけパンチ
 0003      | カッターシャツ
(3 rows)



 shohin_id |   shohin_mei   
-----------+----------------
 0001      | Tシャツ
 0001      | Tシャツ
 0002      | 穴あけパンチ
 0002      | 穴あけパンチ
 0003      | カッターシャツ
 0003      | カッターシャツ
 0004      | 包丁
 0005      | 圧力鍋
 0006      | フォーク
 0007      | おろしがね
 0008      | ボールペン
 0009      | 手袋
 0010      | やかん
(13 rows)