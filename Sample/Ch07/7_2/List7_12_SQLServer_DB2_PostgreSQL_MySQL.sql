SELECT TS.tenpo_id, TS.tenpo_mei, S.shohin_id, S.shohin_mei, S.hanbai_tanka
  FROM Shohin AS S LEFT OUTER JOIN TenpoShohin AS TS
    ON TS.shohin_id = S.shohin_id
ORDER BY tenpo_id;


tenpo_id | tenpo_mei | shohin_id |   shohin_mei   | hanbai_tanka 
----------+-----------+-----------+----------------+--------------
 000A     | 東京      | 0001      | Tシャツ        |         1000
 000A     | 東京      | 0002      | 穴あけパンチ   |          500
 000A     | 東京      | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0002      | 穴あけパンチ   |          500
 000B     | 名古屋    | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0004      | 包丁           |         3000
 000B     | 名古屋    | 0006      | フォーク       |          500
 000B     | 名古屋    | 0007      | おろしがね     |          880
 000C     | 大阪      | 0003      | カッターシャツ |         4000
 000C     | 大阪      | 0004      | 包丁           |         3000
 000C     | 大阪      | 0006      | フォーク       |          500
 000C     | 大阪      | 0007      | おろしがね     |          880
 000D     | 福岡      | 0001      | Tシャツ        |         1000
          |           | 0008      | ボールペン     |          100
          |           | 0005      | 圧力鍋         |         6800
(15 rows)




 LEFT OUTER JOIN の基本ルール
✅ LEFT OUTER JOIN とは？

FROM で指定した左側のテーブル（Shohin）のデータをすべて取得！
JOIN する右側のテーブル（TenpoShohin）に対応するデータがあれば結合！
右側の TenpoShohin にないデータは NULL になる！



🔹 Shohin（商品テーブル）
📌 すべての商品情報を持つ

shohin_id	shohin_mei	hanbai_tanka
0001	Tシャツ	1000
0002	穴あけパンチ	500
0003	カッターシャツ	4000
0004	包丁	3000
0005	圧力鍋	6800
0006	フォーク	500
0007	おろしがね	880
0008	ボールペン	100


🔹 TenpoShohin（店舗在庫テーブル）
📌 どの店舗にどの商品があるかを管理

tenpo_id	tenpo_mei	shohin_id	suryo
000A	東京	0001	30
000A	東京	0002	50
000A	東京	0003	15
000B	名古屋	0002	30
000B	名古屋	0003	120
000B	名古屋	0004	20
000B	名古屋	0006	10
000B	名古屋	0007	40
000C	大阪	0003	20
000C	大阪	0004	50
000C	大阪	0006	90
000C	大阪	0007	70
000D	福岡	0001	100



🔹 LEFT OUTER JOIN の結果
📌 Shohin のデータはすべて取得し、それに対応する TenpoShohin のデータを結合する！
📌 Shohin にあるが TenpoShohin にない shohin_id（商品）は NULL になる！

tenpo_id	tenpo_mei	shohin_id	shohin_mei	hanbai_tanka
000A	東京	0001	Tシャツ	1000
000A	東京	0002	穴あけパンチ	500
000A	東京	0003	カッターシャツ	4000
000B	名古屋	0002	穴あけパンチ	500
000B	名古屋	0003	カッターシャツ	4000
000B	名古屋	0004	包丁	3000
000B	名古屋	0006	フォーク	500
000B	名古屋	0007	おろしがね	880
000C	大阪	0003	カッターシャツ	4000
000C	大阪	0004	包丁	3000
000C	大阪	0006	フォーク	500
000C	大阪	0007	おろしがね	880
000D	福岡	0001	Tシャツ	1000
NULL	NULL	0008	ボールペン	100
NULL	NULL	0005	圧力鍋	6800


✅ Shohin にある shohin_id が TenpoShohin に存在しない場合、tenpo_id や tenpo_mei が NULL になる！ ✅ これは LEFT OUTER JOIN の特徴で、「左側のテーブル（Shohin）のデータをすべて保持する」ため！

🔹 INNER JOIN に変えたらどうなる？

SELECT TS.tenpo_id, TS.tenpo_mei, S.shohin_id, S.shohin_mei, S.hanbai_tanka
FROM Shohin AS S
INNER JOIN TenpoShohin AS TS
ON TS.shohin_id = S.shohin_id
ORDER BY tenpo_id;


📌 この場合、Shohin にあるが TenpoShohin にない商品（0005 | 圧力鍋, 0008 | ボールペン）は除外される！
📌 つまり、INNER JOIN では「両方のテーブルに共通するデータのみ取得」する！

tenpo_id	tenpo_mei	shohin_id	shohin_mei	hanbai_tanka
000A	東京	0001	Tシャツ	1000
000A	東京	0002	穴あけパンチ	500
000A	東京	0003	カッターシャツ	4000
✅ INNER JOIN だと 0008 | ボールペン や 0005 | 圧力鍋 は取得されない！
✅ LEFT OUTER JOIN なら Shohin にあるすべての商品を取得できる！

