SELECT TS.tenpo_id, TS.tenpo_mei, TS.shohin_id, S.shohin_mei, S.hanbai_tanka
  FROM TenpoShohin TS, Shohin S
 WHERE TS.shohin_id = S.shohin_id
   AND TS.tenpo_id = '000A';


SELECT TS.tenpo_id, TS.tenpo_mei, TS.shohin_id, S.shohin_mei, S.hanbai_tanka
FROM TenpoShohin TS
INNER JOIN Shohin S ON TS.shohin_id = S.shohin_id
WHERE TS.tenpo_id = '000A';


/*

カンマ , を使う	FROM テーブルA, テーブルB の後に WHERE で結合条件を書く	JOIN の種類が分かりにくい（INNER JOIN？LEFT JOIN？）
INNER JOIN を使う	
FROM テーブルA INNER JOIN テーブルB ON 条件	
JOIN の種類が明確！
 tenpo_id | tenpo_mei | shohin_id |   shohin_mei   | hanbai_tanka 
----------+-----------+-----------+----------------+--------------
 000A     | 東京      | 0001      | Tシャツ        |         1000
 000A     | 東京      | 0002      | 穴あけパンチ   |          500
 000A     | 東京      | 0003      | カッターシャツ |         4000
(3 rows)
