--08강 조건절 사용하기

--근무 부서가 10번인 사원들의 사원번호, 이름, 근무 부서를 가져온다.
select empno, ename, deptno
from emp
where deptno=10;

--근무 부서 번호가 10번이 아닌 사원들의 사원번호, 이름, 근무 부서 번호를 가져온다.
select empno, ename, deptno
from emp
where deptno <> 10;

--급여가 1500이상인 사원들의 사원번호, 이름, 급여를 가져온다.
select empno, ename, sal
from emp
where sal >= 1500;

--이름이 SCOTT 사원의 사원번호, 이름, 직무, 급여를 가져온다.
select empno, ename, job, sal
from emp
where ename = 'SCOTT';

--직무가 SALESMAN인 사원의 사원번호, 이름, 직무를 가져온다.
select empno, ename, job
from emp
where job = 'SALESMAN';

--직무가 CLERK이 아닌 사원의 사원번호, 이름, 직무를 가져온다.
select empno, ename, job
from emp
where job <> 'CLERK';

--1982년 1월 1일 이후에 입사한 사원의 사원번호, 이름, 입사일을 가져온다.
select empno, ename, hiredate
from emp
where hiredate >= '1982/01/01';

