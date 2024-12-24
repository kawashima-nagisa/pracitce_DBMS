CREATE TABLE Shohin
(shohin_id     CHAR(4) NOT NULL,
 shohin_mei    VARCHAR(100) NOT NULL,
 shohin_bunrui VARCHAR(32) NOT NULL,
 hanbai_tanka  INTEGER ,
 shiire_tanka  INTEGER ,
 torokubi      DATE ,
 PRIMARY KEY (shohin_id));


CREATE TABLE Jyushoroku (
    toroku_bango INTEGER NOT NULL,
    namae VARCHAR(128) NOT NULL,
    jyusho VARCHAR(256) NOT NULL,
    tel_no CHAR(10),
    mail_address CHAR(20),
    PRIMARY KEY (toroku_bango)
);


ALTER TABLE Jyushoroku
ADD COLUMN yubin_bango CHAR(8) NOT NULL;


DROP TABLE Jyushoroku;

CREATE TABLE Jyushoroku (
    toroku_bango INTEGER NOT NULL,
    namae VARCHAR(128) NOT NULL,
    jyusho VARCHAR(256) NOT NULL,
    tel_no CHAR(10),
    mail_address CHAR(20),
    yubin_bango CHAR(8) NOT NULL,
    PRIMARY KEY (toroku_bango)
);
