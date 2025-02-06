--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT shohin_mei, shohin_bunrui, hanbai_tanka,
       RANK () OVER (ORDER BY hanbai_tanka) AS ranking,
       DENSE_RANK () OVER (ORDER BY hanbai_tanka) AS dense_ranking,
       ROW_NUMBER () OVER (ORDER BY hanbai_tanka) AS row_num
  FROM Shohin;



/*

     shohin_mei   | shohin_bunrui | hanbai_tanka | ranking | dense_ranking | row_num 
----------------+---------------+--------------+---------+---------------+---------
 ボールペン     | 事務用品      |          100 |       1 |             1 |       1
 フォーク       | キッチン用品  |          500 |       2 |             2 |       2
 穴あけパンチ   | 事務用品      |          500 |       2 |             2 |       3
 おろしがね     | キッチン用品  |          880 |       4 |             3 |       4
 Tシャツ        | 衣服          |         1000 |       5 |             4 |       5
 包丁           | キッチン用品  |         3000 |       6 |             5 |       6
 カッターシャツ | 衣服          |         4000 |       7 |             6 |       7
 圧力鍋         | キッチン用品  |         6800 |       8 |             7 |       8
(8 rows)



RANK(), DENSE_RANK(), ROW_NUMBER() の違い
関数	動作	特徴
RANK()	同順位のデータがあると、次の順位をスキップ！	1, 2, 2, 4, 5…（順位が飛ぶ）
DENSE_RANK()	同順位のデータがあっても、次の順位をスキップしない！	1, 2, 2, 3, 4…（順位が連続）
ROW_NUMBER()	単純に行番号を振る（重複なし）	1, 2, 3, 4, 5…


RANK()	同順位のデータがあると次の順位をスキップ！	順位に「飛び」が発生する	1, 2, 2, **4**, 5...
DENSE_RANK()	同順位のデータがあっても次の順位をスキップしない！	順位が連続する	1, 2, 2, **3**, 4...
ROW_NUMBER()	単純に行番号を振る	順位の重複なし	1, 2, 3, 4, 5...


スポーツの大会など、順位に「飛び」が必要な場合	RANK()
順位を連続した数値で表したい場合	DENSE_RANK()
データの行番号をつけたい場合	ROW_NUMBER()