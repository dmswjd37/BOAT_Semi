drop table BOARD_COMMENT cascade constraints purge;

create table BOARD_COMMENT(
	B_C_NUM					number 			PRIMARY KEY,--글번호
	B_C_ID 					varchar2(30)	references MEMBER(EMPNO),
	B_CONTENT				varchar2(200),
	B_REG_DATE				date DEFAULT SYSDATE,
	B_COMMENT_NUM			number	--원문글번호
	references BOARD(BOARD_NUM) on delete cascade,--comm 테이블이 참조하는 보드 글 번호
	B_COMMENT_RE_LEV		number(1)	check(B_COMMENT_RE_LEV in (0,1,2)),--원문이면0 답글이면1
	B_COMMENT_RE_SEQ		number,	--원문이면0, 1레벨이면 1레벨 시퀀스 + 1
	B_COMMENT_RE_REF		number	--원문은 자신 글번호, 답글이면 원문 글번호
);
--게시판 글이 삭제되면 참조하는 댓글도 삭제됩니다.
 
drop sequence BOARD_COM_SEQ;

--시퀀스를 생성합니다.
create sequence BOARD_COM_SEQ;
 
delete BOARD_COMMENT;
 
select*from BOARD_COMMENT;
 
 
