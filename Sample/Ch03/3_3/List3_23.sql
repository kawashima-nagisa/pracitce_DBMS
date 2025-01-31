SELECT shohin_bunrui, AVG(hanbai_tanka)
  FROM Shohin
 GROUP BY shohin_bunrui
HAVING AVG(hanbai_tanka) >= 2500;


SELECT shohin_bunrui, AVG(hanbai_tanka) AS avg_price
  FROM Shohin
 GROUP BY shohin_bunrui
HAVING AVG(hanbai_tanka) >= 2500;