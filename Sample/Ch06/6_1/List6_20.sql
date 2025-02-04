SELECT COALESCE(str2, 'nullです')
  FROM SampleStr;
SELECT str2, COALESCE(str2, 'nullです')
  FROM SampleStr;


/*
  str2  | coalesce 
--------+----------
 えお   | えお
 def    | def
 太郎   | 太郎
        | nullです
 あああ | あああ
        | nullです
        | nullです
        | nullです
 abc    | abc
 abc    | abc
 ッ     | ッ

COALESCE() の動作	説明
左から順に NULL でない値を探す	COALESCE(NULL, 1, 2) → 1
すべて NULL の場合は NULL を返す	COALESCE(NULL, NULL, NULL) → NULL
異なるデータ型が混在するとエラー	COALESCE(NULL, 1, 'test') → ❌
✅ COALESCE() を使うと、NULL の値を簡単に置き換えられる！
✅ デフォルト値を設定したり、代替値を使いたいときに便利！

