SELECT *
  FROM SampleLike
 WHERE strcol LIKE '%ddd%';

 /*
  WHERE で strcol が '%ddd%' に一致する行だけを抽出
  結果を表示
   strcol 
--------
 abcddd
 dddabc
  */