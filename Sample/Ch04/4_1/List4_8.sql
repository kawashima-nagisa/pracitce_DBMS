-- shiire_tanka��i����Ȃ��j���ȗ��F�uNULL�v�ɂȂ�
INSERT INTO ShohinIns (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, torokubi) 
       VALUES ('0008', 'ボールペン', '事務用品', 100, '2009-11-11');

-- shohin_mei��iNOT NULL����j���ȗ��F�G���[�I
INSERT INTO ShohinIns (shohin_id, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
       VALUES ('0009', 'ボールペン', 1000, 500, '2009-12-12');
-- ERROR:  null value in column "shohin_mei" of relation "shohinins" violates not-null constraint