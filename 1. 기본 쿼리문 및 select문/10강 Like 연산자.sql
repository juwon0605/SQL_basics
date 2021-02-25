--10강 Like 연산자

--이름이 F로 시작하는 사원의 이름과 사원 번호를 가져온다.
select ename, empno
from emp
where ename like 'F%';

--이름이 S로 끝나는 사원의 이름과 사원 번호를 가져온다.
select ename, empno
from emp
where ename like '%S';

--이름에 A가 포함되어 있는 사원의 이름과 사원 번호를 가져온다.
select ename, empno
from emp
where ename like '%A%';

--이름의 두번째 글자가 A인 사원의 사원 이름, 사원 번호를 가져온다.
select ename, empno
from emp
where ename like '_A%';

--이름이 4글자인 사원의 사원 이름, 사원 번호를 가져온다.
select ename, empno
from emp
where ename like '____';
