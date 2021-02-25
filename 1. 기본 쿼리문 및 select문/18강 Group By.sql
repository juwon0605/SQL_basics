--18강 Group By

--각 직업별 사원들의 급여 총합, 명수, 평균을 구한다.
select job, sum(sal), count(sal), avg(sal)
from emp
group by job
order by job;

--1500 이상 급여를 받는 사원들의 부서별 급여 평균을 구한다.
select deptno, avg(sal)
from emp
where sal >= 1500
group by deptno
order by deptno;
