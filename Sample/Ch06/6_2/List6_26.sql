SELECT *
  FROM SampleLike
 WHERE strcol LIKE 'abc___';
/*
 strcol 
--------
 abcddd
(1 row)

LIKE とは？
✅ LIKE は、文字列が特定のパターンに一致するかを検索する演算子！
✅ ワイルドカード（特殊記号）を使って柔軟な検索ができる！

ワイルドカード	説明	例
%	0文字以上の任意の文字列	LIKE 'abc%' → 'abc' や 'abcdef' など
_	1文字だけの任意の文字	LIKE 'a_c' → 'abc' や 'aXc' など
