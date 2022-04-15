
CREATE DATABASE IF NOT EXISTS `example` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `example`;

Create Table dept
(
  Deptno int primary key,
  Dname varchar(20),
  Loc varchar(10),
  sumsalary int,
  persons  int
);

Create Table emp
(
  empno int primary key,
  ename varchar(10),
  Job varchar(10),
  Mgr int,
  Hiredate datetime,
  Sal float,
  Comm float,
  deptno int ,
  Foreign key (mgr) references emp(empno),
  Foreign key (deptno) references dept(deptno)
 );


insert into dept values(1,'Research','New York',0,0);

insert into dept values(2,'Office','New York',0,0);
insert into dept values(3,'Finance','Iowa',0,0);

insert into dept values(4,'Factory','Iowa',0,0);
insert into dept values(5,'Market','New York',0,0);

insert into emp values(1,'Smith','Manager',null,'2008-10-10',2345.9,200,1);
insert into emp values(2,'John','Manager',null,'2010-1-20',4345.9,600,2);

insert into emp values(3,'Allen','SALESMAN',1,'2015-10-10',1800,180,1);
insert into emp values(4,'Ward','CLERK',null,'2013-11-20',2345.9,300,3);

insert into emp values(5,'MARTIN','SALESMAN',1,'2014-1-10',2300,180,1);
insert into emp values(6,'KING','ANALYST',4,'2013-11-20',2745.9,300,3);

insert into emp values(7,'SCOTT','ANALYST',1,'2014-1-10',2600,280,1);
insert into emp values(8,'KING','ANALYST',2,'2013-11-20',2787,320,2);

insert into emp values(9,'JAMES','CLERK',1,'2014-1-10',2300,280,1);
insert into emp values(10,'BLAKE','SALESMAN',null,'2013-11-20',2587,290,4);

insert into emp values(11,'CLARK','SALESMAN',1,'2013-5-10',2300,280,1);
insert into emp values(12,'MILLER','SALESMAN',10,'2012-9-20',2587,290,4);

insert into emp values(13,'Ali','CLERK',1,'2013-5-10',2800,290,1);
insert into emp values(14,'Kong','ANALYST',2,'2014-9-20',3587,290,2);

insert into emp values(15,'Cheng','ANALYST',10,'2013-5-10',3800,340,4);
insert into emp values(16,'Wang','ANALYST',4,'2016-9-20',3887,290,3);

insert into emp values(17,'Zhangsan','Manager',1,'2013-7-10',2350,450,1);
insert into emp values(18,'Lisi','CLERK',10,'2015-4-20',2347,480,4);

insert into emp values(19,'Wangfang','ANALYST',1,'2013-5-10',3800,390,1);
insert into emp values(20,'Kongzi','Manager',2,'2012-9-20',3587,290,2);

insert into emp values(21,'Chengdong','SALESMAN',10,'2013-5-10',3800,340,4);
insert into emp values(22,'Hewang','ANALYST',4,'2016-9-20',3887,290,3);