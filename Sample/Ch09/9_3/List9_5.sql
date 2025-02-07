/* List9-5 Shohin�e�[�u�����쐬����SQL */
--�f�[�^�x�[�Xshop�̍쐬
CREATE DATABASE shop;

--��������u\q�v��psql�����O�A�E�g���A�ēx�R�}���h�v�����v�g����shop�f�[�^�x�[�X�֐ڑ��Bpostgres�̃p�X���[�h�̓C���X�g�[�����Ɏw�肵������
C:\PostgreSQL\9.5\bin\psql.exe -U postgres -d shop

--Shohin�e�[�u���̍쐬
CREATE TABLE Shohin
(shohin_id CHAR(4) NOT NULL,
 shohin_mei VARCHAR(100) NOT NULL,
 shohin_bunrui VARCHAR(32) NOT NULL,
 hanbai_tanka INTEGER ,
 shiire_tanka INTEGER ,
 torokubi DATE ,
     PRIMARY KEY (shohin_id));

--���i�f�[�^�̓o�^
BEGIN TRANSACTION;
INSERT INTO Shohin VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');
INSERT INTO Shohin VALUES ('0002', '穴あけパンチ`', '事務用品', 500, 320, '2009-09-11');
INSERT INTO Shohin VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);
INSERT INTO Shohin VALUES ('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');
INSERT INTO Shohin VALUES ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15');
INSERT INTO Shohin VALUES ('0006', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20');
INSERT INTO Shohin VALUES ('0007', 'おろしがね', 'キッチン用品', 880, 790, '2008-04-28');
INSERT INTO Shohin VALUES ('0008', 'ボールペン', '事務用品', 100, NULL, '2009-11-11');
COMMIT;


/*
psql -U kawashimanagisa -d postgres -c "\dt"	postgres データベースのテーブル一覧
psql -U kawashimanagisa -d shop -c "\dt"	shop データベースのテーブル一覧（今は空）
CREATE TABLE shohin (...);	shop データベースに shohin テーブルを作成
psql -U kawashimanagisa -d shop -c "\dt"	shohin テーブルが作成されたか確認


Java プログラムをコンパイル
📌 以下のコマンドで .class ファイルを生成


javac -cp ".:postgresql-42.7.5.jar" DBConnect2.java
java -cp ".:/Users/kawashimanagisa/Downloads/postgresql-42.7.5.jar" DBConnect2

パスをとおす
echo 'export CLASSPATH=$CLASSPATH:/Users/kawashimanagisa/Downloads/postgresql-42.7.5.jar' >> ~/.zshrc
source ~/.zshrc


cd ~/Desktop/practice_DBMS
javac DBConnect2.java
📌 再度 Java を実行
java DBConnect2