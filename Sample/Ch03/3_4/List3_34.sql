SELECT shohin_bunrui, COUNT(*)
  FROM Shohin
 GROUP BY shohin_bunrui
 ORDER BY COUNT(*);


SELECT shohin_bunrui
  FROM Shohin
 GROUP BY shohin_bunrui
 ORDER BY COUNT(*);