SELECT DISTINCT emp
  FROM EmpSkills ES1
 WHERE NOT EXISTS
        (SELECT skill
           FROM Skills
         EXCEPT
         SELECT skill
           FROM EmpSkills ES2
          WHERE ES1.emp = ES2.emp);



 emp  
------
 神崎
 相田
(2 rows)




postgres=# SELECT * FROM Skills;
 skill  
--------
 Oracle
 UNIX
 Java
(3 rows)

postgres=# SELECT * FROM EmpSkills;
  emp   | skill  
--------+--------
 相田   | Oracle
 相田   | UNIX
 相田   | Java
 相田   | C#
 神崎   | Oracle
 神崎   | UNIX
 神崎   | Java
 平井   | UNIX
 平井   | Oracle
 平井   | PHP
 平井   | Perl
 平井   | C++
 若田部 | Perl
 渡来   | Oracle
(14 rows)




select *
from shohin
UNION
select *
from shohin
intersect
select *
from shohin
ORDER BY shohin_id;

🔹 SQL の処理順
SQL は INTERSECT → UNION の順番で実行 される！
つまり、このクエリは 次の3ステップ で処理される：

INTERSECT を実行（共通部分を取得）
UNION を実行（重複を削除して結合）
ORDER BY で並べる



SELECT *
FROM shohin
-- ① UNION の左側のブロック

UNION

(SELECT * FROM shohin
 INTERSECT
 SELECT * FROM shohin)
-- ② UNION の右側のブロック（INTERSECT が実行される）

ORDER BY shohin_id;
-- ③ 最後に ORDER BY で並べる


/*
① UNION の左側
SELECT * FROM shohin
✅ そのまま shohin のデータを取得！

② INTERSECT のブロック
(SELECT * FROM shohin
 INTERSECT
 SELECT * FROM shohin)
✅ INTERSECT は「共通するデータを取得」するが、shohin 同士なので結果は shohin のまま！
✅ つまり、この部分は shohin のデータとまったく同じ結果！

③ UNION の処理

SELECT * FROM shohin
UNION
(SELECT * FROM shohin INTERSECT SELECT * FROM shohin)
✅ UNION は「重複を削除して結合」するが、
✅ 両方とも shohin のデータそのままなので、UNION の影響なし！
➡ 結局 shohin のデータと同じ！

④ ORDER BY の処理
ORDER BY shohin_id;
✅ 最終的な結果を shohin_id の昇順に並び替える！
✅ これは SELECT * FROM shohin ORDER BY shohin_id; と同じ！

*/

select coalesce(ts.tenpo_id, '不明') as tenpo_id,
       coalesce(ts.tenpo_mei, '不明') as tenpo_mei,
       s.shohin_id,
        s.shohin_mei,
        s.hanbai_tanka
from tenposhohin ts right outer join shohin s
on ts.shohin_id = s.shohin_id
ORDER BY tenpo_id;

/*

tenpo_id | tenpo_mei | shohin_id |   shohin_mei   | hanbai_tanka 
----------+-----------+-----------+----------------+--------------
 000A     | 東京      | 0001      | Tシャツ        |         1000
 000A     | 東京      | 0002      | 穴あけパンチ   |          500
 000A     | 東京      | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0002      | 穴あけパンチ   |          500
 000B     | 名古屋    | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0004      | 包丁           |         3000
 000B     | 名古屋    | 0006      | フォーク       |          500
 000B     | 名古屋    | 0007      | おろしがね     |          880
 000C     | 大阪      | 0003      | カッターシャツ |         4000
 000C     | 大阪      | 0004      | 包丁           |         3000
 000C     | 大阪      | 0006      | フォーク       |          500
 000C     | 大阪      | 0007      | おろしがね     |          880
 000D     | 福岡      | 0001      | Tシャツ        |         1000
 不明     | 不明      | 0008      | ボールペン     |          100
 不明     | 不明      | 0005      | 圧力鍋         |         6800




 🔹 ① RIGHT OUTER JOIN の動作

FROM tenposhohin ts 
RIGHT OUTER JOIN shohin s
ON ts.shohin_id = s.shohin_id

✅ RIGHT OUTER JOIN は「右のテーブル（shohin）をすべて取得し、対応する tenposhohin のデータがあれば結合する」！
✅ つまり、shohin にあるすべての商品が取得され、tenposhohin にその商品がない場合は NULL になる！

📌 通常の INNER JOIN（共通するデータだけ取得）
tenpo_id	tenpo_mei	shohin_id	shohin_mei	hanbai_tanka
000A	東京	0001	Tシャツ	1000
000B	名古屋	0002	穴あけパンチ	500


📌 RIGHT OUTER JOIN（shohin にあるが tenposhohin にないデータも取得！）
tenpo_id	tenpo_mei	shohin_id	shohin_mei	hanbai_tanka
000A	東京	0001	Tシャツ	1000
000B	名古屋	0002	穴あけパンチ	500
NULL	NULL	0005	圧力鍋	6800
NULL	NULL	0008	ボールペン	100
✅ どの店舗にもない商品 0005（圧力鍋）と 0008（ボールペン）は NULL になる！