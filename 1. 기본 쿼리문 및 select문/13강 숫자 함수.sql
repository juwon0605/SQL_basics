--13강 숫자 함수

--의미 없는 가상 테이블 dual
--select 문법상 from이 반드시 있어야함.
select 10 + 10 from dual;

--절대값
select -10, abs(-10) from dual;
--전직원의 급여를 2000 삭감하고 삭감한 급여액의 절대값을 구한다.
select  sal, sal - 2000, abs(sal - 2000)
from emp;

--소수점 버림
select floor(12.3456) from dual;
--급여가 1500 이상인 사원의 급여를 15% 삭감한다. 단 소수점 이하는 버린다.
select sal, sal * 0.85, floor(sal * 0.85)
from emp
where sal >= 1500;

--반올림
select round(12.3456), round(12.6543), round(12.6543, 2), round(12.6543, -1) from dual;
--급여가 2천 이하인 사원들의 급여를 20%씩 인상한다. 단 10의 자리를 기준으로 반올림한다.
select sal, sal*1.2, round(sal*1.2, -2)
from emp
where sal <= 2000;

--버림. 자리수 지정.
select trunc(1234.5678), trunc(1234.5678, 2), trunc(1234.5678, -2) from dual;
--전 직원의 급여를 10자리 이하를 삭감한다
select sal, trunc(sal, -2)
from emp;

--나머지 연산자
select mod(10, 3), mod(10, 4), mod(10, 10) from dual;