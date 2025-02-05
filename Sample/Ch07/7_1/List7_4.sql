SELECT shohin_id, shohin_mei
  FROM Shohin
 WHERE shohin_bunrui = 'キッチン用品'
UNION 
SELECT shohin_id, shohin_mei
  FROM Shohin2
 WHERE shohin_bunrui = 'キッチン用品'
ORDER BY shohin_id;


 shohin_id | shohin_mei 
-----------+------------
 0004      | 包丁
 0005      | 圧力鍋
 0006      | フォーク
 0007      | おろしがね
 0010      | やかん
(5 rows)


SELECT shohin_id, shohin_mei
FROM (
    SELECT shohin_id, shohin_mei, shohin_bunrui FROM Shohin
    UNION
    SELECT shohin_id, shohin_mei, shohin_bunrui FROM Shohin2
) AS merged_tables
WHERE shohin_bunrui = 'キッチン用品'
ORDER BY shohin_id;

 shohin_id | shohin_mei 
-----------+------------
 0004      | 包丁
 0005      | 圧力鍋
 0006      | フォーク
 0007      | おろしがね
 0010      | やかん
(5 rows)
