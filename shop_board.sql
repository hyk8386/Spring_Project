drop table t_board;

   CREATE TABLE t_board(
    BNO NUMBER, 
	TITLE VARCHAR2(200), 
	CONTENT VARCHAR2(2000),
	WRITER VARCHAR2(50),
	REGDATE DATE DEFAULT sysdate, 
	UPDATEDATE DATE DEFAULT sysdate
    );

SELECT
    *
FROM t_board;

select*from t_board where bno>0 
   		order by bno desc;
        
        select*from t_board where bno=4; 
   		

insert into t_board
values((select * from (select NVL(max(bno),0)+1 from t_board) next), '제목을 입력' , '내용을 입력', '작성자', sysdate, sysdate );

delete from t_board where bno=14;


update t_board
set title='김지호', content='김지호', UPDATEDATE=sysdate
where bno=9;


commit;
