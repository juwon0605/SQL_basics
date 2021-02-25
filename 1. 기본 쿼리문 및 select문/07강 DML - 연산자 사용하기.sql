--07강 DML - 연산자 사용하기

--산술 연산자
--각 사원들의 급여액과 급여액에서 1000을 더한 값, 200을 뺀 값, 2를 곱한 값, 2로 나눈 값을 가져온다.
select sal, sal+1000, sal-200, sal*2, sal/2
from emp;
--각 사원의 급여액, 커미션, 급여 + 커미션 액수를 가져온다.
--오라클 DBMS에서 null은 default로 무한대를 뜻한다.
-- nvl()을 사용하여 null일때 0으로 취급할 수 있다.
select sal, nvl(comm, 0), sal+nvl(comm, 0)
from emp;

--Concat 연산자
--사원들의 이름과 직무를 다음 양식으로 가져온다.
select ename, job
from emp;
--000 사원의 담당 직무는 XXX 입니다.
select ename || '사원의 담당 직무는 ' || job || '입니다'
from emp;

--Distinct
--사원들이 근무하고 있는 근무 부서의 번호를 가져온다.
select deptno
from emp;
--사원들이 근무하고 있는 근무 부서의 번호를 가져온다. (중복제거)
select distinct deptno
from emp;
