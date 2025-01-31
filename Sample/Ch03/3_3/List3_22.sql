SELECT shohin_bunrui, AVG(hanbai_tanka)
  FROM Shohin
 GROUP BY shohin_bunrui;



/*
SQL では、集約関数 (AVG(), SUM(), COUNT() など) を使う場合、通常は GROUP BY が必要になります。
GROUP BY shohin_bunrui によって、shohin_bunrui ごとにデータがグループ化 される。
各グループに対して AVG(hanbai_tanka) が計算される。



GROUP BY なしで AVG() を使う方法
もし GROUP BY なしで AVG() を使いたいなら、すべての hanbai_tanka の平均だけを計算すればよい：


SELECT AVG(hanbai_tanka) FROM Shohin;
*/
