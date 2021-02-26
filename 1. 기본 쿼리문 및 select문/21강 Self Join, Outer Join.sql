--21강 Self Join, Outer Join

--Self Join

--SMITH 사원의 사원번호, 이름, 직속상관 이름을 가져온다.
select a1. empno, a1.ename, a2.ename
from emp a1, emp a2
where a1.ename='SMITH' and a1.mgr = a2.empno;

--FORD 사원 밑에서 일하는 사원들의 사원번호, 이름, 직무를 가져온다.
select a2.empno, a2.ename, a2.job
from emp a1, emp a2
where a1.ename = 'FORD' and a1.empno = a2.mgr;

--SMITH 사원의 직속상관과 동일한 직무를 가지고 있는 사원들의 사원번호, 이름, 직무를 가져온다.
select a3.empno, a3.ename, a3.job
from emp a1, emp a2, emp a3
where a1.ename = 'SMITH' and a1.mgr = a2.empno and a2.job = a3.job;

--Outer Join

--각 사원의 이름, 사원번호, 직장상사 이름을 가져온다. 단 직속상관이 없는 사원도 가져온다.
select a1.ename, a1.empno, a2.ename
from emp a1, emp a2
where a1.mgr = a2.empno(+);

--모든 부서의 소속 사원의 근무부서명, 사원번호, 사원이름, 급여를 가져온다.
select a2.dname, a1.empno, a1.ename, a1.sal
from emp a1, dept a2
where a1.deptno(+) = a2.deptno
order by a2.dname;
