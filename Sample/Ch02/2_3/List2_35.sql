SELECT shohin_mei, shohin_bunrui, torokubi
  FROM Shohin
 WHERE shohin_bunrui = '�����p�i'
   AND torokubi = '2009-09-11'
    OR torokubi = '2009-09-20';



SELECT shohin_mei, shohin_bunrui, torokubi
  FROM Shohin
 WHERE shohin_bunrui = '雑貨品'
   AND (torokubi = '2009-09-11'
    OR torokubi = '2009-09-20');


SELECT shohin_mei, shohin_bunrui, torokubi
  FROM Shohin
 WHERE shohin_bunrui = '雑貨品'
   AND torokubi = '2009-09-11'
    OR torokubi = '2009-09-20';
