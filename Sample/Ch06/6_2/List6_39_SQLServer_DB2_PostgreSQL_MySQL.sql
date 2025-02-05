SELECT shohin_mei, hanbai_tanka
  FROM Shohin AS S
 WHERE EXISTS (SELECT 1 -- �����͓K���Ȓ萔�������Ă����܂��܂���B
                 FROM TenpoShohin AS TS
                WHERE TS.tenpo_id = '000C'
                  AND TS.shohin_id = S.shohin_id);

   shohin_mei   | hanbai_tanka 
----------------+--------------
 カッターシャツ |         4000
 包丁           |         3000
 フォーク       |          500
 おろしがね     |          880


/*

WHERE EXISTS (
    SELECT 1
    FROM TenpoShohin AS TS
    WHERE TS.tenpo_id = '000C'
    AND TS.shohin_id = S.shohin_id
);
EXISTS のサブクエリが TRUE になる shohin_id の商品のみ Shohin から取得！



EXISTS を INNER JOIN に変換すると、同じ結果が得られる：


SELECT DISTINCT S.shohin_mei, S.hanbai_tanka
FROM Shohin AS S
INNER JOIN TenpoShohin AS TS
ON S.shohin_id = TS.shohin_id
WHERE TS.tenpo_id = '000C';

✅ Shohin テーブルと TenpoShohin テーブルを shohin_id で結合（INNER JOIN）する！
✅ TenpoShohin テーブルの tenpo_id = '000C'（大阪の店舗）にある商品を取得する！
✅ 重複をなくすために DISTINCT を使う！
✅ EXISTS は「存在チェック」だけなので、JOIN よりも速い場合がある！
✅ JOIN はデータを結合するため、EXISTS より重くなることもある！


   shohin_mei   | hanbai_tanka 
----------------+--------------
 おろしがね     |          880
 カッターシャツ |         4000
 フォーク       |          500
 包丁           |         3000