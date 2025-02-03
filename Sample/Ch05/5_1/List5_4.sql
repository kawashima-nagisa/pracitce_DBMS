CREATE VIEW ShohinSumJim (shohin_bunrui, cnt_shohin)
AS
SELECT shohin_bunrui, cnt_shohin
  FROM ShohinSum
 WHERE shohin_bunrui = '事務用品';

--�r���[���쐬����Ă��邱�Ƃ̊m�F
SELECT shohin_bunrui, cnt_shohin
  FROM ShohinSumJim;