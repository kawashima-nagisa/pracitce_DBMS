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


-- */

select shohin_id, shohin_mei, hanbai_tanka, 
max(hanbai_tanka) OVER(ORDER BY shohin_id) as current_max_tanaka
from shohin;



 shohin_id |   shohin_mei   | hanbai_tanka | current_max_tanaka 
-----------+----------------+--------------+--------------------
 0001      | Tシャツ        |         1000 |               1000
 0002      | 穴あけパンチ   |          500 |               1000
 0003      | カッターシャツ |         4000 |               4000
 0004      | 包丁           |         3000 |               4000
 0005      | 圧力鍋         |         6800 |               6800
 0006      | フォーク       |          500 |               6800
 0007      | おろしがね     |          880 |               6800
 0008      | ボールペン     |          100 |               6800
(8 rows)