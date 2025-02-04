--SQL Server�ADB2�APostgreSQL�AMySQL
SELECT shohin_bunrui, cnt_shohin
  FROM (SELECT *
          FROM (SELECT shohin_bunrui, COUNT(*) AS cnt_shohin
                  FROM Shohin
                 GROUP BY shohin_bunrui) AS ShohinSum
         WHERE cnt_shohin = 4) AS ShohinSum2;


SELECT shohin_bunrui, cnt_shohin
FROM (
    SELECT shohin_bunrui, COUNT(*) AS cnt_shohin
    FROM Shohin
    GROUP BY shohin_bunrui
) AS ShohinSum
WHERE cnt_shohin = 4;


-- AS の省略

SELECT shohin_bunrui, cnt_shohin
FROM (
    SELECT shohin_bunrui, COUNT(*) cnt_shohin
    FROM Shohin
    GROUP BY shohin_bunrui
) ShohinSum
WHERE cnt_shohin = 4;




CREATE VIEW ViewRenshu_51 AS
SELECT shohin_mei, hanbai_tanka, torokubi
FROM Shohin
WHERE hanbai_tanka >= 1000
and torokubi = '2009-09-20';


CREATE OR REPLACE VIEW ViewRenshu_51 AS
SELECT shohin_mei, hanbai_tanka, torokubi
FROM Shohin
WHERE hanbai_tanka >= 1000
AND torokubi = '2009-09-20';




/*
select * from ViewRenshu_51;
 shohin_mei | hanbai_tanka |  torokubi  
------------+--------------+------------
 Tシャツ    |         1000 | 2009-09-20
 包丁       |         3000 | 2009-09-20



 */

 INSERT INTO ViewRenshu_51 values ('ナイフ', 300, '2009-11-02');

/*
✅ 方法①：shohin_id を含めて INSERT する
エラーの原因は shohin_id（商品ID）が NULL になっている こと。
ビューには shohin_id がないため、INSERT 時に shohin_id を指定する必要がある。

sql
コピーする
編集する
INSERT INTO Shohin (shohin_id, shohin_mei, hanbai_tanka, torokubi)
VALUES ('0011', 'ナイフ', 300, '2009-11-02');
✅ ビュー ViewRenshu_51 に INSERT できなくても、Shohin に INSERT すればビューにも反映される！ ✅ ただし、hanbai_tanka >= 1000 を満たさないと ViewRenshu_51 には表示されない！
*/


-- ✅ サブクエリ (SELECT AVG(hanbai_tanka) FROM Shohin) は全体の平均を1つの値として取得！
-- ✅ 行ごとに同じ値（全体の平均）が表示される！
select shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, (select AVG(hanbai_tanka)from Shohin) AS hanbai_tanka_all
from Shohin;

-- 以下はエラーになる　AVG(hanbai_tanka) は集約関数 なので、GROUP BY なしで他の列と一緒に SELECT できない！
select shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka,  AVG(hanbai_tanka) AS hanbai_tanka_all
from Shohin;