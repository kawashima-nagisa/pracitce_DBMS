--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT shohin_id, shohin_mei, hanbai_tanka,
       AVG (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_avg
  FROM Shohin;


/*
 shohin_id |   shohin_mei   | hanbai_tanka |      current_avg      
-----------+----------------+--------------+-----------------------
 0001      | Tシャツ        |         1000 | 1000.0000000000000000
 0002      | 穴あけパンチ   |          500 |  750.0000000000000000
 0003      | カッターシャツ |         4000 | 1833.3333333333333333
 0004      | 包丁           |         3000 | 2125.0000000000000000
 0005      | 圧力鍋         |         6800 | 3060.0000000000000000
 0006      | フォーク       |          500 | 2633.3333333333333333
 0007      | おろしがね     |          880 | 2382.8571428571428571
 0008      | ボールペン     |          100 | 2097.5000000000000000
(8 rows)
