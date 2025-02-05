--SQL Server�APostgreSQL
BEGIN TRANSACTION;

INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000A',	'東京',		'0001',	30);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000A',	'東京',		'0002',	50);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000A',	'東京',		'0003',	15);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0002',	30);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0003',	120);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0004',	20);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0006',	10);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0007',	40);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000C',	'大阪',		'0003',	20);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000C',	'大阪',		'0004',	50);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000C',	'大阪',		'0006',	90);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000C',	'大阪',		'0007',	70);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000D',	'福岡',		'0001',	100);

COMMIT;





select * from Shohin;
 shohin_id |   shohin_mei   | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi  
-----------+----------------+---------------+--------------+--------------+------------
 0001      | Tシャツ        | 衣服          |         1000 |          500 | 2009-09-20
 0002      | 穴あけパンチ   | 事務用品      |          500 |          320 | 2009-09-11
 0003      | カッターシャツ | 衣服          |         4000 |         2800 | 
 0004      | 包丁           | キッチン用品  |         3000 |         2800 | 2009-09-20
 0005      | 圧力鍋         | キッチン用品  |         6800 |         5000 | 2009-01-15
 0006      | フォーク       | キッチン用品  |          500 |              | 2009-09-20
 0007      | おろしがね     | キッチン用品  |          880 |          790 | 2008-04-28
:


select * from TenpoShohin;

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


SELECT shohin_id 
    FROM TenpoShohin
    WHERE tenpo_id = '000C'

  shohin_id 
-----------
 0003
 0004
 0006
 0007