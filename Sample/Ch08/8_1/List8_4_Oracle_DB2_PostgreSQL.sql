--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT shohin_id, shohin_mei, hanbai_tanka,
       SUM (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_sum
  FROM Shohin;

/*

   shohin_id |   shohin_mei   | hanbai_tanka | current_sum 
-----------+----------------+--------------+-------------
 0001      | Tシャツ        |         1000 |        1000
 0002      | 穴あけパンチ   |          500 |        1500
 0003      | カッターシャツ |         4000 |        5500
 0004      | 包丁           |         3000 |        8500
 0005      | 圧力鍋         |         6800 |       15300
 0006      | フォーク       |          500 |       15800
 0007      | おろしがね     |          880 |       16680
 0008      | ボールペン     |          100 |       16780
(8 rows)