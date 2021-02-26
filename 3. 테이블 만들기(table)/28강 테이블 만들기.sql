--28강 테이블 만들기

--다음과 같은 정보를 저장하기 위한 테이블을 만든다.
--학생번호, 학생이름, 학생나이, 국어점수, 영어점수, 수학점수
create table stu_table(
    stu_idx number,
    stu_name char(10),
    stu_age number,
    stu_kor number,
    stu_eng number,
    stu_math number
);

insert into stu_table (stu_idx, stu_name, stu_age, stu_kor, stu_eng, stu_math)
values (1111, '홍길동', 30, 100, 80, 70);

select * from stu_table;

--number 자릿수 제한

create table number_table(
    number1 number,
    number2 number(3),
    number3 number(5, 2) --5자리에는 뒤에 소숫점 2자리 포함
);

insert into number_table(number1)
values (10000);

select * from number_table;

insert into number_table(number2)
values (100);

select * from number_table;

insert into number_table(number3)
values (100.11111);

select * from number_table;

--Sub Qeury로 테이블 만들기

--emp 테이블을 복제한 emp01 테이블을 만드시오
drop table emp01;
create table emp01
as
select * from emp;

select * from emp01;

--emp 테이블에서 사원의 번호, 이름, 급여 정보를 가지고 있는 테이블을 생성하시오
drop table emp01;
create table emp01
as
select empno, ename, sal from emp;

select * from emp01;

--30번 부서에 근무하고 있는 사원들의 사원번호, 이름, 근무부서 이름을 가지고 있는 테이블을 생성한다.
drop table emp01;
create table emp01
as
select a1.empno, a1.ename, a2.dname
from emp a1, dept a2
where a1.deptno = a2.deptno and a1.deptno = 30;

select * from emp01;

--각 부서별 급여 총합, 평균, 최고액, 최저액, 사원수를 가지고 있는 테이블을 생성하시오
drop table emp01;
create table emp01
as
select deptno as deptno, sum(sal) as sum, round(avg(sal)) as avg,
        max(sal) as max, min(sal) as min, count(sal) as count
from emp
group by deptno
order by deptno; 

select * from emp01;
