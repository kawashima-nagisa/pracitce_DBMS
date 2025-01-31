-- �񃊃X�g����
INSERT INTO ShohinIns (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi) 
       VALUES ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15');

/*

INSERT INTO ShohinIns (**カラム名のリスト** ) を指定。
指定したカラムに 対応する順番で値を VALUES (...) に入れる。
テーブルに新しいカラムが追加されても、影響を受けにくい。
どの値がどのカラムに入るのかが明確で、可読性が高い。
*/


-- �񃊃X�g�Ȃ�
INSERT INTO ShohinIns 
       VALUES ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15');

/*

INSERT INTO ShohinIns の後にカラム名を 指定しない。
テーブルのカラムの順番 に基づいて値が挿入される。
テーブルのカラム構成が変更された場合、SQL の動作が変わる可能性がある。
例えば、新しいカラムが追加された場合、エラーになる可能性がある。
どの値がどのカラムに入るのかが明確でないため、可読性が低い。
