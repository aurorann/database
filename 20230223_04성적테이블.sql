●  파일 -> 새로만들기 -> 데이터베이스계층-> 데이터베이스 파일
     -> 파일명   : 20230223_04성적테이블.sql
     -> 저장위치 : i:\java202301\database
///////////////////////////////////////////////////////////////////////////

-- sungjuk 테이블 삭제
drop table sungjuk;
commit;

-- sungjuk 테이블 생성
create table sungjuk  (
   sno   int         not null
  ,uname varchar(50) not null
  ,kor   int         not null
  ,eng   int         not null
  ,mat   int         not null
  ,tot   int
  ,aver  int
  ,addr  varchar(20)
  ,wdate date
);
////////////////////////////////////////////




●  [sungjuk 테이블 입력 데이터]

insert into sungjuk(sno, uname, kor, eng, mat, addr, wdate)
values(sungjuk_seq.nextval,'아이티윌', 90, 85, 95, 'Seoul',sysdate);

insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'무궁화',40,50,20,'Seoul',sysdate);

insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'진달래',90,50,90,'Jeju',sysdate);
insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'개나리',20,50,20,'Jeju',sysdate);

insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'봉선화',90,90,90,'Seoul',sysdate);

insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'나팔꽃',50,50,90,'Suwon',sysdate);

insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'선인장',70,50,20,'Seoul',sysdate);
insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'소나무',90,60,90,'Busan',sysdate);

insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'참나무',20,20,20,'Jeju',sysdate);

insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'홍길동',90,90,90,'Suwon',sysdate);

insert into sungjuk(sno,uname,kor,eng,mat,addr,wdate)
values(sungjuk_seq.nextval,'무궁화',80,80,90,'Suwon',sysdate);


commit;
select count(*) from sungjuk; --전체 레코드 갯수
select * from sungjuk;




-- 문1) 전체행에 대해서 총점(tot), 평균(aver)을 구하시오
update sungjuk
set tot=kor+eng+mat, aver=(kor+eng+mat)/3;

-- 문2) 이름에 '나' 글자가 있는 행을 조회하시오
select uname
from sungjuk
where uname like '%나%';

-- 문3) 주소가 서울, 제주 행을 조회하시오
select uname, addr
from sungjuk
where addr='Seoul' or addr='Busan';

select uname, addr
from sungjuk
where addr in ('Seoul', 'Jeju');

-- 문4) 국영수 세과목 모두 90점 이상 행이 몇개인지 조회하시오
select count(*) as cnt --칼럼명 변경
from sungjuk
where 90<=kor and 90<=eng and 90<=mat;

select count(*)  cnt --as 생략가능
from sungjuk
where 90<=kor and 90<=eng and 90<=mat;

-- 문5) 주소별로 정렬해서 조회하시오. 주소가 같다면 일련번호 순으로 다시 정렬해서 조회하시오
select sno, uname, addr
from sungjuk
order by addr, sno;






















