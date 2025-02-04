SELECT shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE hanbai_tanka > 100 
   AND hanbai_tanka < 1000;

/*
    shohin_mei  | hanbai_tanka 
--------------+--------------
 穴あけパンチ |          500
 フォーク     |          500
 おろしがね   |          880