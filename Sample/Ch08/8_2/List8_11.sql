--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT '合計' AS shohin_bunrui, SUM(hanbai_tanka)
  FROM Shohin
UNION ALL
SELECT shohin_bunrui, SUM(hanbai_tanka)
  FROM Shohin
 GROUP BY shohin_bunrui;



 /*

 なぜ '合計' が表示される？	SELECT '合計' AS shohin_bunrui で固定の文字列を作っている！
GROUP BY の部分は何をしている？	商品分類ごとに SUM(hanbai_tanka) を計算している！
UNION ALL は何をしている？	「全体の合計」と「商品分類ごとの合計」を結合！

  shohin_bunrui |  sum  
---------------+-------
 合計          | 16780
 キッチン用品  | 11180
 衣服          |  5000
 事務用品      |   600
(4 rows)
*/