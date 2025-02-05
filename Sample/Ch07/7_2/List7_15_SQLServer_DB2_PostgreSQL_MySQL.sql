--SQL Server�ADB2�APostgreSQL�AMySQL
SELECT TS.tenpo_id, TS.tenpo_mei, TS.shohin_id, S.shohin_mei
  FROM TenpoShohin AS TS CROSS JOIN Shohin AS S;


/*

結合タイプ	動作	**結合条件 (ON)	出力される行数
INNER JOIN	共通データのみ取得	必須	少なくなる
LEFT JOIN	左のテーブルの全データを取得	必須	多くなる
CROSS JOIN	すべての組み合わせを取得	不要	爆発的に増える
✅ CROSS JOIN は ON が不要で、「すべての組み合わせ」を作る！
✅ そのため、データ量が大きくなりすぎることに注意！