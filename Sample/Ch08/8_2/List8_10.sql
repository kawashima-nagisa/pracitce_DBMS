--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT shohin_bunrui, SUM(hanbai_tanka)
  FROM Shohin
 GROUP BY shohin_bunrui;


/*

  shohin_bunrui |  sum  
---------------+-------
 キッチン用品  | 11180
 衣服          |  5000
 事務用品      |   600
(3 rows)