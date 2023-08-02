drop table MYINFO cascade constraints purge;

create table MYINFO (
	T_EMPNO VARCHAR2(12),
	T_CONTENT VARCHAR2(1000),
	T_DATE DATE DEFAULT SYSDATE, 
	T_GRAPH VARCHAR2(2),
	CONSTRAINT MYINFO_GP_CK check(T_GRAPH in ('Y','N'))
);

--글내용, 완료(Y,N), 날짜(SYSDATE)

SELECT*FROM MYINFO
WHERE T_EMPNO = 'ADMIN'
AND T_GRAPH = 'N'
ORDER BY T_DATE;

UPDATE MYINFO 
SET T_GRAPH = 'N' 
WHERE T_EMPNO = 'ADMIN'
AND T_CONTENT = '할일'

SELECT*FROM MYINFO
ORDER BY T_DATE;

INSERT INTO MYINFO
VALUES('ADMIN','할 일1',SYSDATE,'N')

delete MYINFO where T_GRAPH = 'N'