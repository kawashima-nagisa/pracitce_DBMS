--単純CASE式で書いた場合
SELECT shohin_mei,
       CASE shohin_bunrui
            WHEN '衣服'         THEN 'A：' || shohin_bunrui
            WHEN '事務用品'     THEN 'B：' || shohin_bunrui
            WHEN 'キッチン用品' THEN 'C：' || shohin_bunrui
            ELSE NULL
        END AS abc_shohin_bunrui
  FROM Shohin;


--検索CASE 式で書いた場合
SELECT shohin_mei,
       CASE 
            WHEN shohin_bunrui = '衣服'         THEN 'A：' || shohin_bunrui
            WHEN shohin_bunrui = '事務用品'     THEN 'B：' || shohin_bunrui
            WHEN shohin_bunrui = 'キッチン用品' THEN 'C：' || shohin_bunrui
            ELSE NULL
       END AS abc_shohin_bunrui
FROM Shohin;



/*
単純 CASE 式 と 検索 CASE 式 の違い
比較項目	単純 CASE 式	検索 CASE 式
書き方	CASE カラム名 WHEN 値 THEN ...	CASE WHEN 条件 THEN ...
比較の方法	等値比較（=）のみ	=, <, >, LIKE, IS NULL など複雑な条件が使える！
柔軟性	シンプル（等しい場合のみ）	より細かい条件が可能
適用例	shohin_bunrui が '衣服' なら A：衣服	hanbai_tanka > 3000 の場合 高額商品 などの分類が可能
✅ 単純 CASE 式は = のみ使える！
✅ 検索 CASE 式は >, <, LIKE, IS NULL など複雑な条件が使える！

