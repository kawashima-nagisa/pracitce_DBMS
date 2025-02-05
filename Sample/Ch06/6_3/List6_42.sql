SELECT shohin_bunrui,
       SUM(hanbai_tanka) AS sum_tanka
  FROM Shohin
 GROUP BY shohin_bunrui;


  shohin_bunrui | sum_tanka 
---------------+-----------
 キッチン用品  |     11180
 衣服          |      5000
 事務用品      |       600