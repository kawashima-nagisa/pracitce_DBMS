SELECT shohin_mei, hanbai_tanka
  FROM Shohin S
 WHERE EXISTS (SELECT 1 --�����͓K���Ȓ萔�������Ă����܂��܂���
                 FROM TenpoShohin TS
                WHERE TS.tenpo_id = '000C'
                  AND TS.shohin_id = S.shohin_id);


   shohin_mei   | hanbai_tanka 
----------------+--------------
 カッターシャツ |         4000
 包丁           |         3000
 フォーク       |          500
 おろしがね     |          880