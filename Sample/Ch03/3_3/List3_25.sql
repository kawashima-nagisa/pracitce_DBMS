SELECT shohin_bunrui, COUNT(*)
  FROM Shohin
 GROUP BY shohin_bunrui
HAVING shohin_bunrui = '衣服';


 /*
SELECT shohin_bunrui, COUNT(*)
FROM Shohin
GROUP BY shohin_bunrui        -- ① まず「すべての `shohin_bunrui` ごとにグループ化」
HAVING shohin_bunrui = '衣服'; -- ② その後、「衣服」だけを残す


GROUP BY で shohin_bunrui ごとにデータをグループ化
その後、HAVING で shohin_bunrui = '衣服' のグループだけを残す
COUNT(*) を計算して結果を表示 
 */