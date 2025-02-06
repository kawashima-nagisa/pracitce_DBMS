--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT shohin_mei, shohin_bunrui, hanbai_tanka,
       RANK () OVER (ORDER BY hanbai_tanka) AS ranking
  FROM Shohin;



/*
   shohin_mei   | shohin_bunrui | hanbai_tanka | ranking 
----------------+---------------+--------------+---------
 ボールペン     | 事務用品      |          100 |       1
 フォーク       | キッチン用品  |          500 |       2
 穴あけパンチ   | 事務用品      |          500 |       2
 おろしがね     | キッチン用品  |          880 |       4
 Tシャツ        | 衣服          |         1000 |       5
 包丁           | キッチン用品  |         3000 |       6
 カッターシャツ | 衣服          |         4000 |       7
 圧力鍋         | キッチン用品  |         6800 |       8
(8 rows)