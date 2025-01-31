SELECT shohin_bunrui, COUNT(*)
  FROM Shohin
 WHERE shohin_bunrui = '衣服'
 GROUP BY shohin_bunrui;

/*
動作の流れ
WHERE で shohin_bunrui = '衣服' の行だけを先に抽出する
その後、グループ化 (GROUP BY) を適用
COUNT(*) を計算して結果を表示
*/