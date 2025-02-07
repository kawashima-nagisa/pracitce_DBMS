--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT CASE WHEN GROUPING(shohin_bunrui) = 1
            THEN '商品分類 合計'
            ELSE shohin_bunrui END AS shohin_bunrui,
       CASE WHEN GROUPING(torokubi) = 1
            THEN '登録日 合計'
            ELSE CAST(torokubi AS VARCHAR(16)) END AS torokubi,
       SUM(hanbai_tanka) AS sum_tanka
  FROM Shohin
 GROUP BY ROLLUP(shohin_bunrui, torokubi);





 SELECT 
    COALESCE(shohin_bunrui, '総合計') AS shohin_bunrui,
    COALESCE(TO_CHAR(torokubi, 'YYYY-MM-DD'), '小計') AS torokubi,
    SUM(hanbai_tanka) AS sum_tanka,
    CASE 
        WHEN GROUPING(shohin_bunrui) = 1 AND GROUPING(torokubi) = 1 THEN '総合計'
        WHEN GROUPING(torokubi) = 1 THEN '小計'
        ELSE '通常データ'
    END AS 集計レベル
    /*
    CASE 
    WHEN GROUPING(shohin_bunrui) = 1 AND GROUPING(torokubi) = 1 THEN '総合計'
    WHEN GROUPING(torokubi) = 1 THEN '小計'
    ELSE '通常データ'
     END AS 集計レベル
     ✅ CASE を使うと、新しく「集計レベル」という列を作ることができる！
     ✅ この CASE によって、「通常データ」「小計」「総合計」の分類を追加している！
    */
    
FROM Shohin
GROUP BY ROLLUP(shohin_bunrui, torokubi)
ORDER BY shohin_bunrui, torokubi;
 shohin_bunrui |  torokubi  | sum_tanka | 集計レベル 
---------------+------------+-----------+------------
 キッチン用品  | 2008-04-28 |       880 | 通常データ
 キッチン用品  | 2009-01-15 |      6800 | 通常データ
 キッチン用品  | 2009-09-20 |      3500 | 通常データ
 キッチン用品  | 小計       |     11180 | 小計
 事務用品      | 2009-09-11 |       500 | 通常データ
 事務用品      | 2009-11-11 |       100 | 通常データ
 事務用品      | 小計       |       600 | 小計
 総合計        | 小計       |     16780 | 総合計
 衣服          | 2009-09-20 |      1000 | 通常データ
 衣服          | 小計       |      4000 | 通常データ
 衣服          | 小計       |      5000 | 小計
(11 rows)