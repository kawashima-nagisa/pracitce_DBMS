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
  FROM Shohin;ß

/*
HAVING の役割	GROUP BY で集約した後に条件を適用
サブクエリの役割	AVG(hanbai_tanka) を計算し、その値を HAVING の条件に使う
最終的な結果	商品分類ごとの平均販売単価が、全体の平均販売単価より高い分類を取得
✅ HAVING を使うことで、集約結果に対して条件を指定できる！
✅ スカラサブクエリを使い、「全体の平均販売単価より高いものだけ取得する」処理を実現！