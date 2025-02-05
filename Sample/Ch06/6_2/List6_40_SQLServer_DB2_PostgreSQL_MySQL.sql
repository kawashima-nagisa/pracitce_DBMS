SELECT shohin_mei, hanbai_tanka
FROM Shohin AS S
WHERE NOT EXISTS (
    SELECT *
    FROM TenpoShohin AS TS
    WHERE TS.tenpo_id = '000A'
    AND TS.shohin_id = S.shohin_id
);
SELECT shohin_mei, hanbai_tanka
FROM Shohin
WHERE shohin_id NOT IN (
    SELECT shohin_id FROM TenpoShohin WHERE tenpo_id = '000A'
);



/*
 shohin_mei | hanbai_tanka 
------------+--------------
 包丁       |         3000
 圧力鍋     |         6800
 フォーク   |          500
 おろしがね |          880
 ボールペン |          100
(5 rows)