create database escritorio;
use escritorio;

create table dept(   
  deptno     integer,   
  dname      varchar(14),   
  loc        varchar(13),   
  constraint pk_dept primary key (deptno)   
);

create table emp(   
  empno    integer,   
  ename    varchar(10),   
  job      varchar(9),   
  mgr      integer,   
  hiredate date,   
  sal      float,   
  comm     integer,   
  deptno   integer,   
  constraint pk_emp primary key (empno),   
  constraint fk_deptno foreign key (deptno) references dept (deptno)   
);

#Inserindo Dados tabela Dept
insert into DEPT (DEPTNO, DNAME, LOC) 
values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept   
values(20, 'RESEARCH', 'DALLAS');
insert into dept   
values(30, 'SALES', 'CHICAGO');
insert into dept  
values(40, 'OPERATIONS', 'BOSTON');

#Inserindo Dados Tabela Emp
insert into emp   
values(   
 7839, 'KING', 'PRESIDENT', null,   
 '1981-11-17',   
 5000, null, 10   
);
insert into emp  
values(  
 7698, 'BLAKE', 'MANAGER', 7839,  
 '1981-1-5',  
 2850, null, 30  
);

insert into emp  
values(  
 7782, 'CLARK', 'MANAGER', 7839,  
 '1981-6-9',  
 2450, null, 10  
);
insert into emp  
values(  
 7566, 'JONES', 'MANAGER', 7839,  
 '1981-4-2',  
 2975, null, 20  
);
insert into emp  
values(  
 7788, 'SCOTT', 'ANALYST', 7566,  
 '1987-7-13',  
 3000, null, 20  
);
insert into emp  
values(  
 7902, 'FORD', 'ANALYST', 7566,  
 '1981-12-3',  
 3000, null, 20  
);
insert into emp  
values(  
 7369, 'SMITH', 'CLERK', 7902,  
 '1980-12-17',  
 800, null, 20  
);
insert into emp  
values(  
 7499, 'ALLEN', 'SALESMAN', 7698,  
 '1981-2-22',  
 1600, 300, 30  
);
insert into emp  
values(  
 7521, 'WARD', 'SALESMAN', 7698,  
'1981-2-22',  
 1250, 500, 30  
);
insert into emp  
values(  
 7654, 'MARTIN', 'SALESMAN', 7698,  
 '1981-9-28',  
 1250, 1400, 30  
);

insert into emp  
values(  
 7844, 'TURNER', 'SALESMAN', 7698,  
 '1981-9-8',  
 1500, 0, 30  
);
insert into emp  
values(  
 7876, 'ADAMS', 'CLERK', 7788,  
 '1987-07-13',  
 1100, null, 20  
);
insert into emp  
values(  
 7900, 'JAMES', 'CLERK', 7698,  
 '1981-12-3',  
 950, null, 30  
);
insert into emp  
values(  
 7934, 'MILLER', 'CLERK', 7782,  
 '1982-1-23',  
 1300, null, 10  
);


-- trazer todos os campos da tabela dept --
SELECT * from dept;

SELECT * from emp;
-- selecionar os colunas ename, job da tabela emp

SELECT ename,job from emp;

SELECT job from emp;
-- irá trazer valores distintos
SELECT distinct job from emp;

-- selecionar todos os empregados que tem o salário maior do que 300

SELECT * From emp WHERE sal <1100;

-- selecionar nas tabelas ename, job e deptno os funcionários que 
-- tem como cargo clerk (atendente)

SELECT ename,job,deptno 
FROM emp 
WHERE job="clerk";

-- selecionar nas tabelas ename, job os funcionários que 
-- tem como o salário menor ou igual que a comissão (comm)
SELECT ename, job, sal,comm 
FROM emp
WHERE sal<=comm;

-- selecionar os funcionários que o salario está entre 2500 a 3000

SELECT ename,sal
FROM emp
WHERE sal between 2500 and 3000;





use escritorio;

select * from dept;

select * from emp;

select job from emp;

select distinct job from emp;

select * from emp where sal = 300;

select ename ,sal,comm
from emp
where sal<=comm;

select ename job,deptno 
from emp
where job='clerk'; 

-- use recursos_humanos;

-- select last_name, salary
-- from employees
-- where salary between 2500 and 3500;


use escritorio;

select ename , sal from emp where deptno =20;


select empno , ename , job , sal from emp where empno = 7788;

select * from emp where ename='james';

select ename , job , sal from emp where job != 'Manager';

select ename ,sal from emp where sal between 1000 and 2000;

select ename,job,sal,(sal +500 )*2 from emp where job ='analyst';

select * from emp order by job;

select * from dept order by dname;

select * from dept order by dname desc;

select max(sal) from emp;

select min(sal) from emp;

select min(sal),max(sal) from emp;

select sum(sal) from emp where job='manager';

select Avg(sal) from emp;

select count(empno) from emp where job='salesman';

select count(empno) from emp;

select job, max(sal),ename from emp group by job,ename;

select deptno, min(sal),max(sal),sum(sal) from emp group by deptno;

select job,max(sal) from emp group by job having max(sal) >1000;

select job,min(sal),max(sal) from emp group by job having job <> 'manager' order by job desc;

select job,max(sal)as maximo from emp group by job having max(sal) >1000;

select lower(job),max(sal) from emp group by job;

select concat(ename,'',job) as concatenadp from emp;

create database t;
use t;

create table tabla(
id int auto_increment primary key,
nome varchar(100),
dato timestamp default current_timestamp
);

insert into tabla(nome) values("Eric");

select * from tabla;

select date_format(now(),'%Y-%m-%d %H:%i:%s');

select timestampdiff(minute,'2023-09-20 10:00:00',now())as diferenca;

select*from tabla where date(dato)=curdate();

select date_format("2017-06-15",'%d%M%Y');


use escritorio;
select ename,sal,hiredate from emp where date(hiredate);
select ename,sal,date_format(hiredate,'%d %m %y') from emp ;

select distinct job from emp ;

select * from emp having sal>1500 and sal<2850;
select * from emp where sal <> 1500 and sal<>2850;


select ename,sal,deptno from emp group by sal desc having deptno = 20 ;

select *,sal from emp where sal >= 1000 and sal<=1500;

select ename from emp where ename like '%TH%' or ename like '%LL%';

select ename,deptno,sal from emp group by sal desc;

-- sub consulta 