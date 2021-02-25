--17강 그룹 함수

--sum()
--사원들의 급여 총합을 구한다.
select sum(sal)
from emp;
--사원들의 커미션 총합을 구한다.
select sum(comm)
from emp
--그룹 함수는 아래 의미 함의
--where comm is not null;
--급여가 1500 이상인 사원들의 급여 총합을 구한다.
select sum(sal)
from emp
where sal >= 1500;
--20번 부서에 근무하고 있는 사원들의 급여 총합을 구한다.
select sum(sal)
from emp
where deptno=20;
--직무가 SALESMAN인 사원들의 급여 총합을 구한다.
select sum(sal)
from emp
where job='SALESMAN';
--column 개수가 맞지 않으면 error!
--직무가 SALESMAN인 사원들의 이름과 급여총합을 가져온다.
select ename, sujm(sal)
from emp
where job='SALESMAN';

--avg()
--전 사원의 급여 평균을 구한다.
select round(avg(sal))
from emp;
--커미션을 받는 사원들의 커미션 평균을 구한다.
select avg(comm)
from emp;
--그룹 함수는 아래 의미 함의
--where comm is not null;
--전 사원의 커미션의 평균을 구한다.
select round(avg(nvl(comm, 0)))
from emp;
-- 커미션을 받는 사원들의 급여 평균을 구한다.
select round(avg(sal))
from emp
where comm is not null;
--30번 부서에 근무하고 있는 사원들의 급여 평균을 구한다.
select round(avg(sal))
from emp
where deptno=30;
--직무가 SALESMAN인 사원들의 급여 + 커미션 평균을 구한다.
select avg(sal+nvl(comm, 0))
from emp
where job='SALESMAN';

--count()
--사원들의 총 수를 가져온다.
select count(empno)
from emp;
--커미션을 받는 사원들의 총 수를 가져온다.
select count(comm)
from emp;

--max(), min()
--사원들의 급여 최대, 최소값을 가져온다.
select max(sal), min(sal)
from emp;
