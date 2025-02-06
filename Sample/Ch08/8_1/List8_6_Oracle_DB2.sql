--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT shohin_id, shohin_mei, hanbai_tanka,
       AVG (hanbai_tanka) OVER (ORDER BY shohin_id
                                ROWS 2 PRECEDING) AS moving_avg
  FROM Shohin;




/*
 shohin_id |   shohin_mei   | hanbai_tanka |      moving_avg       
-----------+----------------+--------------+-----------------------
 0001      | Tシャツ        |         1000 | 1000.0000000000000000
 0002      | 穴あけパンチ   |          500 |  750.0000000000000000
 0003      | カッターシャツ |         4000 | 1833.3333333333333333
 0004      | 包丁           |         3000 | 2500.0000000000000000
 0005      | 圧力鍋         |         6800 | 4600.0000000000000000
 0006      | フォーク       |          500 | 3433.3333333333333333
 0007      | おろしがね     |          880 | 2726.6666666666666667
 0008      | ボールペン     |          100 |  493.3333333333333333
(8 rows)
*/