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