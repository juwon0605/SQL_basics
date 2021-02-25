--11강 null 비교

--사원중에 커미션을 받지 않는 사원의 사원번호, 이름, 커미션을 가져온다.
--오라클 DBMS에서 null은 무한대 취급한다. (숫자 연산으로 비교 불가)
select empno, ename, comm
from emp
where comm is null;
--(반대)
select empno, ename, comm
from emp
where comm is not null;

--회사 대표(직속상관이 없는 사람)의 이름과 사원번호를 가져온다.
select ename, empno
from emp
where mgr is null;
--반대
select ename, empno 
from emp
where mgr is not null;