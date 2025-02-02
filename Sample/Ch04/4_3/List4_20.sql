--����J�b�R()�ň͂ނ��Ƃɂ�郊�X�g�\��
UPDATE Shohin
   SET (hanbai_tanka, shiire_tanka) = (hanbai_tanka * 10, shiire_tanka / 2)
 WHERE shohin_bunrui = 'キッチン用品';

--�ύX���e�̊m�F
SELECT * FROM Shohin ORDER BY shohin_id;