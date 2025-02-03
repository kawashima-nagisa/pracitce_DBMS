SELECT shohin_bunrui, AVG(hanbai_tanka)
  FROM Shohin
 GROUP BY shohin_bunrui
HAVING AVG(hanbai_tanka) > (SELECT AVG(hanbai_tanka)
                              FROM Shohin);


/* �X�J���E�T�u�N�G���ł͂Ȃ��̂�SELECT��ɏ����Ȃ��i�G���[�ɂȂ�j*/
SELECT shohin_id, 
       shohin_mei, 
       hanbai_tanka,
       (SELECT AVG(hanbai_tanka)
          FROM Shohin
         GROUP BY shohin_bunrui) AS avg_tanka
  FROM Shohin;

/*
HAVING の役割	GROUP BY で集約した後に条件を適用
サブクエリの役割	AVG(hanbai_tanka) を計算し、その値を HAVING の条件に使う
最終的な結果	商品分類ごとの平均販売単価が、全体の平均販売単価より高い分類を取得
✅ HAVING を使うことで、集約結果に対して条件を指定できる！
✅ スカラサブクエリを使い、「全体の平均販売単価より高いものだけ取得する」処理を実現！



3. HAVING と WHERE の違い
条件を適用する場所	使うべき句	例
個々の行に対する条件	WHERE	WHERE hanbai_tanka > 3000;
グループ化した結果に対する条件	HAVING	HAVING AVG(hanbai_tanka) > 3000;
✅ WHERE は「データをグループ化する前」に適用される！
✅ HAVING は「GROUP BY で集約した後」に適用される！


ポイント	内容
HAVING は GROUP BY とセット	グループ化された結果に条件を適用
WHERE は HAVING の代わりにならない	WHERE では集約関数が使えない
HAVING なしでは集約後の条件フィルタができない	HAVING COUNT(*) > 3 のような条件は WHERE では書けない
✅ 基本的に HAVING は GROUP BY と一緒に使う！
✅ 個々の行に対するフィルタは WHERE、集約結果のフィルタは HAVING！