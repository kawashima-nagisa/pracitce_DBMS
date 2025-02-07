--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT shohin_bunrui, torokubi, SUM(hanbai_tanka) AS sum_tanka
  FROM Shohin
 GROUP BY ROLLUP(shohin_bunrui, torokubi);
ORDER BY shohin_bunrui, torokubi;

/*
 shohin_bunrui |  torokubi  | sum_tanka 
---------------+------------+-----------
               |            |     16780
 衣服          |            |      4000
 キッチン用品  | 2009-01-15 |      6800
 衣服          | 2009-09-20 |      1000
 キッチン用品  | 2008-04-28 |       880
 事務用品      | 2009-11-11 |       100
 事務用品      | 2009-09-11 |       500
 キッチン用品  | 2009-09-20 |      3500
 キッチン用品  |            |     11180
 衣服          |            |      5000
 事務用品      |            |       600
(11 rows)

*/

 SELECT shohin_bunrui, torokubi, SUM(hanbai_tanka) AS sum_tanka
  FROM Shohin
 GROUP BY shohin_bunrui, torokubi;


/*
  shohin_bunrui |  torokubi  | sum_tanka 
---------------+------------+-----------
 衣服          |            |      4000
 キッチン用品  | 2009-01-15 |      6800
 衣服          | 2009-09-20 |      1000
 キッチン用品  | 2008-04-28 |       880
 事務用品      | 2009-11-11 |       100
 事務用品      | 2009-09-11 |       500
 キッチン用品  | 2009-09-20 |      3500
(7 rows)

*/

SELECT 
    COALESCE(shohin_bunrui, '総合計') AS shohin_bunrui,
    COALESCE(TO_CHAR(torokubi, 'YYYY-MM-DD'), '小計') AS torokubi,
    SUM(hanbai_tanka) AS sum_tanka
FROM Shohin
GROUP BY ROLLUP(shohin_bunrui, torokubi)
ORDER BY 
    CASE 
        WHEN shohin_bunrui IS NULL THEN 2  -- 「総合計」を最後に
        ELSE 1 
    END,
    shohin_bunrui, 
    CASE 
        WHEN torokubi IS NULL THEN 2  -- 「小計」を分類ごとの最後に
        ELSE 1 
    END,
    torokubi;


/*
 shohin_bunrui |  torokubi  | sum_tanka 
---------------+------------+-----------
 キッチン用品  | 2008-04-28 |       880
 キッチン用品  | 2009-01-15 |      6800
 キッチン用品  | 2009-09-20 |      3500
 キッチン用品  | 小計       |     11180
 事務用品      | 2009-09-11 |       500
 事務用品      | 2009-11-11 |       100
 事務用品      | 小計       |       600
 衣服          | 2009-09-20 |      1000
 衣服          | 小計       |      4000
 衣服          | 小計       |      5000
 総合計        | 小計       |     16780
(11 rows)



📌 それぞれの CASE の意味
条件	数値 (ORDER BY の優先順位)	並び順のイメージ
shohin_bunrui IS NULL（=総合計）	2	一番最後に来る！
shohin_bunrui IS NOT NULL（=通常の分類）	1	先に並ぶ！
torokubi IS NULL（=小計）	2	分類ごとの最後に来る！
torokubi IS NOT NULL（=通常のデータ）	1	分類の中で先に並ぶ！

🔹 ORDER BY の処理の流れ
1️⃣ 最初の CASE（shohin_bunrui）で「総合計（NULL）」を最後にする！
2️⃣ shohin_bunrui が同じなら、次に CASE（torokubi）で「小計（NULL）」を分類の最後にする！
3️⃣ 最後に torokubi の日付順に並べる！