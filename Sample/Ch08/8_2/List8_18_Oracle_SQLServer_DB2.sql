--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT CASE WHEN GROUPING(shohin_bunrui) = 1
            THEN '商品分類　合計'
            ELSE shohin_bunrui END AS shohin_bunrui,
       CASE WHEN GROUPING(torokubi) = 1
            THEN '登録日　合計'
            ELSE CAST(torokubi AS VARCHAR(16)) END AS torokubi,
       SUM(hanbai_tanka) AS sum_tanka
  FROM Shohin
 GROUP BY GROUPING SETS (shohin_bunrui, torokubi);


/*

  shohin_bunrui  |   torokubi   | sum_tanka 
----------------+--------------+-----------
 キッチン用品   | 登録日　合計 |     11180
 衣服           | 登録日　合計 |      5000
 事務用品       | 登録日　合計 |       600
 商品分類　合計 |              |      4000
 商品分類　合計 | 2009-11-11   |       100
 商品分類　合計 | 2009-09-20   |      4500
 商品分類　合計 | 2009-09-11   |       500
 商品分類　合計 | 2009-01-15   |      6800
 商品分類　合計 | 2008-04-28   |       880
(9 rows)



商品分類ごとの合計（キッチン用品、衣服、事務用品 の合計）を取得！
登録日ごとの合計（各 torokubi ごとの合計）を取得！
通常のデータ（個別の商品単位のデータ）は取得されない！