SELECT shohin_mei,shohin_bunrui,
       CASE WHEN shohin_bunrui = '衣服'         THEN 'A：' || shohin_bunrui
            WHEN shohin_bunrui = '事務用品'     THEN 'B：' || shohin_bunrui
            WHEN shohin_bunrui = 'キッチン用品' THEN 'C：' || shohin_bunrui
            ELSE NULL
       END AS abc_shohin_bunrui
  FROM Shohin;
/*
✅ || を使って shohin_bunrui の前に「A：」「B：」「C：」を追加！
✅ 「衣服」は A：衣服、「事務用品」は B：事務用品、「キッチン用品」は C：キッチン用品 に変換！
✅ それ以外の値（分類なし）は NULL を返す！

   shohin_mei   | abc_shohin_bunrui 
----------------+-------------------
 Tシャツ        | A：衣服
 穴あけパンチ   | B：事務用品
 カッターシャツ | A：衣服
 包丁           | C：キッチン用品
 圧力鍋         | C：キッチン用品
 フォーク       | C：キッチン用品
 おろしがね     | C：キッチン用品
 ボールペン     | B：事務用品


    shohin_mei   | shohin_bunrui | abc_shohin_bunrui 
----------------+---------------+-------------------
 Tシャツ        | 衣服          | A：衣服
 穴あけパンチ   | 事務用品      | B：事務用品
 カッターシャツ | 衣服          | A：衣服
 包丁           | キッチン用品  | C：キッチン用品
 圧力鍋         | キッチン用品  | C：キッチン用品
 フォーク       | キッチン用品  | C：キッチン用品
 おろしがね     | キッチン用品  | C：キッチン用品
 ボールペン     | 事務用品      | B：事務用品
(8 rows)



SELECT 'Hello' || ' ' || 'World' AS result;
   result    
-------------
 Hello World



 SELECT shohin_mei, 
       'カテゴリ: ' || shohin_bunrui AS category_label
FROM Shohin;
  shohin_mei   |     category_label     
----------------+------------------------
 Tシャツ        | カテゴリ: 衣服
 穴あけパンチ   | カテゴリ: 事務用品
 カッターシャツ | カテゴリ: 衣服
 包丁           | カテゴリ: キッチン用品
 圧力鍋         | カテゴリ: キッチン用品
 フォーク       | カテゴリ: キッチン用品
 おろしがね     | カテゴリ: キッチン用品
 ボールペン     | カテゴリ: 事務用品