DROP SEQUENCE PAGESEQ;
DROP TABLE PAGEBOARD;

CREATE SEQUENCE PAGESEQ;
CREATE TABLE PAGEBOARD(
	SEQ NUMBER PRIMARY KEY,
	WRITER VARCHAR2(1000) NOT NULL,
	TITLE VARCHAR2(2000) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	REGDATE DATE NOT NULL
);

INSERT INTO PAGEBOARD VALUES(PAGESEQ.NEXTVAL, '관리자', '제목', '내용', SYSDATE);
INSERT INTO PAGEBOARD VALUES(PAGESEQ.NEXTVAL, '관리자', '제목', '내용', SYSDATE);
INSERT INTO PAGEBOARD VALUES(PAGESEQ.NEXTVAL, '관리자', '제목', '내용', SYSDATE);
INSERT INTO PAGEBOARD VALUES(PAGESEQ.NEXTVAL, '관리자', '제목', '내용', SYSDATE);
INSERT INTO PAGEBOARD VALUES(PAGESEQ.NEXTVAL, '관리자', '제목', '내용', SYSDATE);

SELECT * FROM PAGEBOARD;

SELECT B.* 
FROM (SELECT A.*, ROWNUM AS RNUM 
FROM (SELECT * FROM PAGEBOARD ORDER BY SEQ DESC) A) B 
WHERE RNUM BETWEEN 1 AND 10;



