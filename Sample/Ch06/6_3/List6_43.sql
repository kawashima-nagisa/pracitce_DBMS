--���i���ނ��Ƃɔ̔��P�������v�������ʂ��s��ϊ�����
SELECT SUM(CASE WHEN shohin_bunrui = '衣服'         THEN hanbai_tanka ELSE 0 END) AS sum_tanka_ihuku,
       SUM(CASE WHEN shohin_bunrui = 'キッチン用品' THEN hanbai_tanka ELSE 0 END) AS sum_tanka_kitchen,
       SUM(CASE WHEN shohin_bunrui = '事務用品'     THEN hanbai_tanka ELSE 0 END) AS sum_tanka_jimu
  FROM Shohin;
SELECT 
    SUM(CASE WHEN shohin_bunrui = 'キッチン用品' THEN hanbai_tanka ELSE 0 END) AS キッチン用品,
    SUM(CASE WHEN shohin_bunrui = '衣服' THEN hanbai_tanka ELSE 0 END) AS 衣服,
    SUM(CASE WHEN shohin_bunrui = '事務用品' THEN hanbai_tanka ELSE 0 END) AS 事務用品
FROM Shohin;

/*
 キッチン用品 | 衣服 | 事務用品 
--------------+------+----------
        11180 | 5000 |      600
(1 row)
 sum_tanka_ihuku | sum_tanka_kitchen | sum_tanka_jimu 
-----------------+-------------------+----------------
            5000 |             11180 |            600

shohin_bunrui = '衣服' の場合 → hanbai_tanka の値をそのまま使う
それ以外 → 0 にする（集計時に影響を与えないように）
SUM() を使って各列の値を合計！


*/

SELECT shohin_bunrui, SUM(hanbai_tanka) AS sum_tanka
FROM Shohin
GROUP BY shohin_bunrui;

 shohin_bunrui | sum_tanka 
---------------+-----------
 キッチン用品  |     11180
 衣服          |      5000
 事務用品      |       600
(3 rows)




SELECT shohin_mei,
       CASE WHEN shohin_bunrui = '衣服' THEN 1 END AS category_flag
FROM Shohin;
   shohin_mei   | category_flag 
----------------+---------------
 Tシャツ        |             1
 穴あけパンチ   |              
 カッターシャツ |             1
 包丁           |              
 圧力鍋         |              
 フォーク       |              
 おろしがね     |              
 ボールペン     |              
(8 rows)


SELECT 
    COUNT(CASE WHEN shohin_bunrui = '衣服'         THEN 1 ELSE null END) AS count_ihuku, 
    COUNT(CASE WHEN shohin_bunrui = 'キッチン用品' THEN 1 ELSE null END) AS count_kitchen,
    COUNT(CASE WHEN shohin_bunrui = '事務用品'     THEN 1 ELSE null END) AS count_jimu
FROM Shohin;
SELECT 
    SUM(CASE WHEN shohin_bunrui = '衣服'         THEN 1 ELSE 0 END) AS count_ihuku, 
    SUM(CASE WHEN shohin_bunrui = 'キッチン用品' THEN 1 ELSE 0 END) AS count_kitchen,
    SUM(CASE WHEN shohin_bunrui = '事務用品'     THEN 1 ELSE 0 END) AS count_jimu
FROM Shohin;
 count_ihuku | count_kitchen | count_jimu 
-------------+---------------+------------
           2 |             4 |          2


select sum(case when hanbai_tanka <= 1000 then 1 else 0 end) as  low_price,
       sum(case when hanbai_tanka BETWEEN 1001 and 3000 then 1 else 0 end) as  mid_price,
       sum(case when hanbai_tanka >= 3001 then 1 else 0 end) as high_price 
  from shohin;
 count_1000 | count_2000 | count_3000 | count_4000
  low_price | mid_price | high_price 
-----------+-----------+------------
         5 |         1 |          2