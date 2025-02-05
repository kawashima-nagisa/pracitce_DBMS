CREATE TABLE TenpoShohin
(tenpo_id  CHAR(4)       NOT NULL,
 tenpo_mei  VARCHAR(200) NOT NULL,
 shohin_id CHAR(4)       NOT NULL,
 suryo     INTEGER       NOT NULL,
 PRIMARY KEY (tenpo_id, shohin_id));


 /*
 
項目	CHAR(n)（固定長）	VARCHAR(n)（可変長）
データの長さ	常に n 文字（足りない場合はスペース追加）	最大 n 文字（短い場合はそのまま）
スペースの扱い	末尾に自動でスペース追加（検索時は無視）	スペースは追加されない
ストレージの使用量	n バイト固定（少し無駄が多い）	データの長さに応じて可変
処理速度	高速（固定長なので処理が一定）	遅くなることもある（可変長なので処理が複雑）
用途	ID・コードなど固定長のデータ向け	商品名・住所など可変長のデータ向け

postgres=# \d TenpoShohin;
                     Table "public.tenposhohin"
  Column   |          Type          | Collation | Nullable | Default 
-----------+------------------------+-----------+----------+---------
 tenpo_id  | character(4)           |           | not null | 
 tenpo_mei | character varying(200) |           | not null | 
 shohin_id | character(4)           |           | not null | 
 suryo     | integer                |           | not null | 