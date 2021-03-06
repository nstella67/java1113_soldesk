-- sungjuk_oracle.sql
-- 시작 → Oracle → Run SQL Command Line
-- connect 오라클 서버 확인

-- 성적 테이블 삭제
drop table sungjuk;

-- 성적 시퀀스 삭제
drop sequence sungjuk_seq;

-- 성적 시퀀스 생성
create sequence sungjuk_seq;

-- 성적 테이블 생성
create table sungjuk(
    sno     int primary key,   -- 일련번호
    uname    varchar(20),    -- 이름
    kor      int not null,   -- 국어
    eng      int not null,   -- 영어
    mat      int not null,   -- 수학
    aver     int,            -- 평균
    addr     varchar(50),    -- 주소
    wdate    date            -- 작성일
);

-- 행추가 (일련번호 sno칼럼 입력할때)
-- 1) 시퀀스
insert into sungjuk(sno, uname, kor, eng, mat, addr, wdate)
values(sungjuk_seq.nextval, '손흥민', 99, 88, 77, 'England', sysdate);

-- 2) 최대값 max()+1
insert into sungjuk(sno, uname, kor, eng, mat, addr, wdate)
values((select nvl(max(sno),0)+1 from sungjuk), '박지성', 44, 55, 66, '수원', sysdate);

select * from sungjuk;

delete from sungjuk where sno>=4;

--수정
update sungjuk
set uname=?, kor=?, mat=?, aver=?, addr=?
where sno=4;



--삭제
delete sungjuk where sno=4;