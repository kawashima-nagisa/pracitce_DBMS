--SQL Server�ADB2�APostgreSQL�AMySQL
SELECT TS.tenpo_id, TS.tenpo_mei, TS.shohin_id, S.shohin_mei, S.hanbai_tanka, ZS.zaiko_suryo
  FROM TenpoShohin AS TS INNER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id
          INNER JOIN ZaikoShohin AS ZS
             ON TS.shohin_id = ZS.shohin_id
 WHERE ZS.souko_id = 'S001'
ORDER BY tenpo_id;

/*

tenpo_id | tenpo_mei | shohin_id |   shohin_mei   | hanbai_tanka | zaiko_suryo 
----------+-----------+-----------+----------------+--------------+-------------
 000A     | 東京      | 0001      | Tシャツ        |         1000 |           0
 000A     | 東京      | 0002      | 穴あけパンチ   |          500 |         120
 000A     | 東京      | 0003      | カッターシャツ |         4000 |         200
 000B     | 名古屋    | 0002      | 穴あけパンチ   |          500 |         120
 000B     | 名古屋    | 0003      | カッターシャツ |         4000 |         200
 000B     | 名古屋    | 0004      | 包丁           |         3000 |           3
 000B     | 名古屋    | 0006      | フォーク       |          500 |          99
 000B     | 名古屋    | 0007      | おろしがね     |          880 |         999
 000C     | 大阪      | 0003      | カッターシャツ |         4000 |         200
 000C     | 大阪      | 0004      | 包丁           |         3000 |           3
 000C     | 大阪      | 0006      | フォーク       |          500 |          99
 000C     | 大阪      | 0007      | おろしがね     |          880 |         999
 000D     | 福岡      | 0001      | Tシャツ        |         1000 |           0
(13 rows)