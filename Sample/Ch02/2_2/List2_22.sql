SELECT shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 WHERE hanbai_tanka - shiire_tanka >= 500;

SELECT shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 WHERE shiire_tanka + 500 <= hanbai_tanka;



SELECT shohin_mei, hanbai_tanka, shiire_tanka
FROM Shohin
WHERE hanbai_tanka >= shiire_tanka + 500;
