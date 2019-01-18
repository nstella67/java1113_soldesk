-- sungjuk_oracle.sql
-- ���� �� Oracle �� Run SQL Command Line
-- connect ����Ŭ ���� Ȯ��

-- ���� ���̺� ����
drop table sungjuk;

-- ���� ������ ����
drop sequence sungjuk_seq;

-- ���� ������ ����
create sequence sungjuk_seq;

-- ���� ���̺� ����
create table sungjuk(
    sno     int primary key,   -- �Ϸù�ȣ
    uname    varchar(20),    -- �̸�
    kor      int not null,   -- ����
    eng      int not null,   -- ����
    mat      int not null,   -- ����
    aver     int,            -- ���
    addr     varchar(50),    -- �ּ�
    wdate    date            -- �ۼ���
);

-- ���߰� (�Ϸù�ȣ snoĮ�� �Է��Ҷ�)
-- 1) ������
insert into sungjuk(sno, uname, kor, eng, mat, addr, wdate)
values(sungjuk_seq.nextval, '�����', 99, 88, 77, 'England', sysdate);

-- 2) �ִ밪 max()+1
insert into sungjuk(sno, uname, kor, eng, mat, addr, wdate)
values((select nvl(max(sno),0)+1 from sungjuk), '������', 44, 55, 66, '����', sysdate);

select * from sungjuk;

delete from sungjuk where sno>=4;

--����
update sungjuk
set uname=?, kor=?, mat=?, aver=?, addr=?
where sno=4;



--����
delete sungjuk where sno=4;