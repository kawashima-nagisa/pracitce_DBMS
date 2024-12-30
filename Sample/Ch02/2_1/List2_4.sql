SELECT shohin_id AS id,
       shohin_mei AS namae,
       shiire_tanka AS tanka
  FROM Shohin;


-- shohinテーブルから販売単価を10％引きにしても利益が100円より高い事務用品とキッチン用品を選択してください　出力する例はshohin_meiとshohin_bunrui、販売単価を10%引きにした時の利益riekiという別名をつけるとします



SELECT 
    shohin_mei, 
    shohin_bunrui, 
    (hanbai_tanka * 0.9 - shiire_tanka) AS rieki
-- SELECT では利益を表示するため。
FROM 
    shohin
WHERE 
    shohin_bunrui IN ('事務用品', 'キッチン用品') 
    AND (hanbai_tanka * 0.9 - shiire_tanka) > 100;
--WHERE では条件に基づいてデータをフィルタリングするため。



