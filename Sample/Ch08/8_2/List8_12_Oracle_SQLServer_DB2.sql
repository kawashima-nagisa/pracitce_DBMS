--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT shohin_bunrui, SUM(hanbai_tanka) AS sum_tanka
  FROM Shohin
 GROUP BY ROLLUP(shohin_bunrui);



 /*
  shohin_bunrui | sum_tanka 
---------------+-----------
               |     16780
 キッチン用品  |     11180
 衣服          |      5000
 事務用品      |       600
(4 rows)