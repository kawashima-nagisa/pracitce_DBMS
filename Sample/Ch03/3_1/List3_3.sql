SELECT COUNT(*), COUNT(col_1)
  FROM NullTbl;

CREATE TABLE NullTbl (
    col_1 INTEGER
);


INSERT INTO NullTbl (col_1) VALUES 
    (NULL),
    (NULL),
    (NULL);

SELECT COUNT(*), COUNT(col_1) FROM NullTbl;


/*
COUNT(*) = 3 → すべての行をカウント
COUNT(col_1) = 0 → NULL のデータはカウントしないため0になる
*/