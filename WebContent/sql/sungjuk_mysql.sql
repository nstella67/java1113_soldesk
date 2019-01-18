-- sungjuk_mysql.sql
-- ����ǻ�� D:\java1113\mysql-5.6\bin
--				�� mysqld.exe ���� ���� �� �۾������ڿ��� Ȯ��

-- �������̺� ����
drop table sungjuk;

-- �������̺� ����
create table sungjuk (
  sno   int not null auto_increment primary key,
  uname varchar(20) not null,
  kor   tinyint     not null,
  eng   tinyint     not null,
  mat   tinyint     not null,
  tot   int         null default 0,
  aver  int         null default 0,
  regdt datetime    not null
)ENGINE=MyISAM DEFAULT CHARSET="utf8";

-- �׽�Ʈ
insert into sungjuk(uname,kor,eng,mat,regdt)
values('ȫ�浿',70,80,95,now());


-- snoĮ���� �ִ밪�� ������ +1 �ؼ� �Է��Ͻÿ�
insert into sungjuk(sno, uname, kor, eng, mat,regdt)
values(  (select ifnull(max(sno),0)+1 from sungjuk as TB),
         '�����', 90, 80, 70, now()
);
      
-- ���
select * from sungjuk order by sno desc;