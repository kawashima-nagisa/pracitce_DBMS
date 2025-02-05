SELECT shohin_mei, hanbai_tanka
  FROM Shohin AS S
 WHERE EXISTS (SELECT *
                 FROM TenpoShohin AS TS
                WHERE TS.tenpo_id = '000C'
                  AND TS.shohin_id = S.shohin_id);

SELECT shohin_mei, hanbai_tanka
  FROM Shohin AS S
 WHERE EXISTS (SELECT 1
                 FROM TenpoShohin AS TS
                WHERE TS.tenpo_id = '000C'
                  AND TS.shohin_id = S.shohin_id);



SELECT shohin_mei, hanbai_tanka
FROM Shohin
WHERE shohin_id IN (
    SELECT shohin_id FROM TenpoShohin WHERE tenpo_id = '000C'
);
/*

   shohin_mei   | hanbai_tanka 
----------------+--------------
 カッターシャツ |         4000
 包丁           |         3000
 フォーク       |          500
 おろしがね     |          880


 クエリ	結果	パフォーマンス
EXISTS (SELECT *)	動作OK	やや遅い（不要なカラム取得）
EXISTS (SELECT 1)	動作OK	速い（最適化されやすい）
EXISTS (SELECT NULL)	動作OK	1 とほぼ同じ
EXISTS (SELECT DISTINCT ...)	不要（結果は変わらない）	❌ 遅くなる