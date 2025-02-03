SELECT shohin_id, shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE hanbai_tanka > (SELECT AVG(hanbai_tanka)
                         FROM Shohin);

/*

スカラサブクエリ（Scalar Subquery） とは、
✅ 1つの値（スカラー値）を返すサブクエリ のこと。

(SELECT AVG(hanbai_tanka) FROM Shohin)

✅ このサブクエリは AVG(hanbai_tanka) を計算している！
✅ AVG() は、常に 1つの値（スカラー値） を返す！
✅ このサブクエリは 1行1列（単一の値）を返すので「スカラサブクエリ」になる！
✅ COUNT()・SUM()・AVG()・MAX() などの集約関数を使うと、1つの値が返るのでスカラサブクエリになる！
✅ サブクエリの結果が1つの値（1行1列）になるなら WHERE 句でも使える！



スカラサブクエリとは？	1つの値（スカラー値）を返すサブクエリ
なぜこのサブクエリはスカラ？	AVG(hanbai_tanka) が 常に1つの値 を返すから
エラーになるケース	サブクエリが複数の値を返す場合（SELECT hanbai_tanka FROM Shohin など）
WHERE 句での使用	WHERE hanbai_tanka > (スカラサブクエリ) はOK！
✅ スカラサブクエリは「1つの値を取得する時」に便利！
✅ AVG()・MAX()・COUNT() などの集約関数を使うとスカラサブクエリになりやすい！

