UPDATE Shohin
   SET hanbai_tanka = hanbai_tanka * 10
 WHERE shohin_bunrui = 'キッチン用品';

--�ύX���e�̊m�F
SELECT * FROM Shohin ORDER BY shohin_id;