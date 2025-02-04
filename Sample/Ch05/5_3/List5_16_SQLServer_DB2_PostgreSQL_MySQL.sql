--SQL Server�ADB2�APostgreSQL�AMySQL
SELECT shohin_bunrui, shohin_mei, hanbai_tanka
  FROM Shohin AS S1
 WHERE hanbai_tanka > (SELECT AVG(hanbai_tanka)
                         FROM Shohin AS S2
                        WHERE S1.shohin_bunrui = S2.shohin_bunrui
                        GROUP BY shohin_bunrui);

 /*
                      
相関サブクエリとは？	サブクエリの中で、外側のクエリの値（S1.shohin_bunrui）を参照する！
なぜ相関サブクエリが必要？	分類ごとに異なる平均値を比較するため！
通常のサブクエリとの違い	通常のサブクエリは1回だけ実行、相関サブクエリは各行ごとに実行！
