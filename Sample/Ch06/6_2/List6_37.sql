SELECT shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE shohin_id NOT IN (SELECT shohin_id 
                           FROM TenpoShohin
                          WHERE tenpo_id = '000A');

 shohin_mei | hanbai_tanka 
------------+--------------
 包丁       |         3000
 圧力鍋     |         6800
 フォーク   |          500
 おろしがね |          880
 ボールペン |          100
(5 rows)


 tenpo_id | tenpo_mei | shohin_id | suryo 
----------+-----------+-----------+-------
 000A     | 東京      | 0001      |    30
 000A     | 東京      | 0002      |    50
 000A     | 東京      | 0003      |    15
 000B     | 名古屋    | 0002      |    30
 000B     | 名古屋    | 0003      |   120
 000B     | 名古屋    | 0004      |    20
 000B     | 名古屋    | 0006      |    10
 000B     | 名古屋    | 0007      |    40
 000C     | 大阪      | 0003      |    20
 000C     | 大阪      | 0004      |    50
 000C     | 大阪      | 0006      |    90
 000C     | 大阪      | 0007      |    70
 000D     | 福岡      | 0001      |   100




 SELECT shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE shohin_id NOT IN ('0001', '0002', '0003');


  shohin_mei | hanbai_tanka 
------------+--------------
 包丁       |         3000
 圧力鍋     |         6800
 フォーク   |          500
 おろしがね |          880
 ボールペン |          100