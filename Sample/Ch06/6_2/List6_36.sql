--�u���X�ɒu���Ă��鏤�i�̔̔��P���v�����߂�
SELECT shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE shohin_id IN (SELECT shohin_id 
                       FROM TenpoShohin
                      WHERE tenpo_id = '000C');



    shohin_mei   | hanbai_tanka 
----------------+--------------
 カッターシャツ |         4000
 包丁           |         3000
 フォーク       |          500
 おろしがね     |          880




 SELECT shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE shohin_id IN ('0003', '0004', '0006', '0007');


    shohin_mei   | hanbai_tanka 
----------------+--------------
 カッターシャツ |         4000
 包丁           |         3000
 フォーク       |          500
 おろしがね     |          880