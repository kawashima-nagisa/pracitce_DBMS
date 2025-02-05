--Oracle
--Oracle��DECODE��CASE�����p
SELECT  shohin_mei,
        DECODE(shohin_bunrui, '�ߕ�',         'A�F' || shohin_bunrui,
                              '�����p�i',     'B�F' || shohin_bunrui,
                              '�L�b�`���p�i', 'C�F' || shohin_bunrui,
               NULL) AS abc_shohin_bunrui
  FROM Shohin;




SELECT shohin_mei , shiire_tanka
from shohin
where shiire_tanka NOT IN (500, 2800, 5000);


SELECT shohin_mei , shiire_tanka
from shohin
where shiire_tanka NOT IN (500, 2800, 5000 , NULL);

/*
 この場合、NULL との比較が UNKNOWN になる！

SQL では NULL は「不明な値」なので、比較ができない！
NOT IN のリストの中に NULL があると、比較結果が UNKNOWN になり、すべてのデータが取得されなくなる！
*/

--方法①：NULL を除外する
SELECT shohin_mei, shiire_tanka
FROM Shohin
WHERE shiire_tanka NOT IN (500, 2800, 5000)
AND shiire_tanka IS NOT NULL;