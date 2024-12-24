--SQL Server PostgreSQL
-- DML�F�f�[�^�o�^
BEGIN TRANSACTION;
INSERT INTO Shohin VALUES ('0001', 'T�V���c', '�ߕ�', 1000, 500, '2009-09-20');
INSERT INTO Shohin VALUES ('0002', '�������p���`', '�����p�i', 500, 320, '2009-09-11');
INSERT INTO Shohin VALUES ('0003', '�J�b�^�[�V���c', '�ߕ�', 4000, 2800, NULL);
INSERT INTO Shohin VALUES ('0004', '�', '�L�b�`���p�i', 3000, 2800, '2009-09-20');
INSERT INTO Shohin VALUES ('0005', '���͓�', '�L�b�`���p�i', 6800, 5000, '2009-01-15');
INSERT INTO Shohin VALUES ('0006', '�t�H�[�N', '�L�b�`���p�i', 500, NULL, '2009-09-20');
INSERT INTO Shohin VALUES ('0007', '���낵����', '�L�b�`���p�i', 880, 790, '2008-04-28');
INSERT INTO Shohin VALUES ('0008', '�{�[���y��', '�����p�i', 100, NULL, '2009-11-11');
COMMIT;
BEGIN TRANSACTION;

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
VALUES ('0002', '腕時計パッチ', '雑貨品', 500, 320, '2009-09-11');

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
VALUES ('0003', 'キャプターシャツ', '衣服', 4000, 2800, NULL);

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
VALUES ('0004', '紅茶', 'キッチン用品', 3000, 2800, '2009-09-20');

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
VALUES ('0005', '料理鍋', 'キッチン用品', 6800, 5000, '2009-01-15');

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
VALUES ('0006', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20');

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
VALUES ('0007', '飲み物セット', 'キッチン用品', 880, 790, '2008-04-28');

INSERT INTO shohin (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
VALUES ('0008', 'ボールペン', '雑貨品', 100, NULL, '2009-11-11');

COMMIT;
