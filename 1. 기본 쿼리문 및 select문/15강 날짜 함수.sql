--15강 날짜 함수

--현재 날짜
select sysdate from dual;

--날짜 데이터 연산
select sysdate, sysdate - 7, sysdate + 7
from dual;
--각 사원이 입사한 날짜로 부터 100일 후가 되는 날짜를 가져온다.
select hiredate, hiredate+100
from emp;
--직무가 SALESMAN인 사원의 입사일 100일전 날짜를 가져온다.
select hiredate, hiredate-100
from emp
where job='SALESMAN';
--전 사원의 근무 일수를 가져온다.
select floor(sysdate - hiredate)
from emp
order by hiredate desc;

--날짜 반올림
select sysdate,
        round(sysdate, 'CC') as "년도두자리기준",
        round(sysdate, 'YYYY') as "월기준",
        round(sysdate, 'MM') as "일기준",
        round(sysdate, 'DAY') as "주기준",
        round(sysdate, 'DDD') as "시기준",
        round(sysdate, 'HH') as "분기준",
        round(sysdate, 'MI') as "초기준"
from dual;
--각 사원의 입사일을 원 기준으로 반올림한다.
select hiredate, round(hiredate, 'YYYY')
from emp;

--날짜 버림
select sysdate,
        trunc(sysdate, 'CC') as "년도두자리기준",
        trunc(sysdate, 'YYYY') as "월기준",
        trunc(sysdate, 'MM') as "일기준",
        trunc(sysdate, 'DAY') as "주기준",
        trunc(sysdate, 'DDD') as "시기준",
        trunc(sysdate, 'HH') as "분기준",
        trunc(sysdate, 'MI') as "초기준"
from dual;
--1981년에 입사한 사원들의 사원번호, 사원이름, 급여, 입사일을 가져온다.
select empno, ename, sal, hiredate 
from emp
where hiredate between '1981/01/01' and '1981/12/31';

select empno, ename, sal, hiredate
from emp
where trunc(hiredate, 'YYYY') = '1981/01/01';

--날짜 차이 구하기
--두 날짜 사이의 일수 구하기
select floor(sysdate - hiredate)
from emp;
--날짜 차이 개월 수 계산
select floor(months_between(sysdate, hiredate))
from emp;
--100개월 후
select add_months(sysdate, 100) from dual;
--각 사원들의 입사일 수 100개월 되는 날짜를 구한다.
select hiredate, add_months(hiredate, 100)
from emp;

--지정된 날짜 기준 판단
--다음주 o요일이 며칠인지 구하기
select sysdate, next_day(sysdate, '월요일') from dual;
--월의 마지말 날짜 구하기
select sysdate, last_day(sysdate) from dual;

--to_char : 오라클 DBMS -> 프로그램
select sysdate, to_char(sysdate, 'YYYY-MM-DD HH:MI:SS AM') from dual;

--to_date : 프로그램 -> 오라클 DBMS
select to_date('2021-02-26 01:57:53 오전', 'YYYY-MM-DD HH:MI:SS AM') from dual;

--사원들의 입사일을 다음과 같은 양식으로 가져온다.
--1900-10-10
select hiredate, to_char(hiredate, 'YYYY-MM-DD')
from emp;