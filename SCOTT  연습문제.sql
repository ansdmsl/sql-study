-- 연습문제 
select empno, ename, sal
from emp
where deptno = 10;

--2
select ename,hiredate,deptno
from emp
where empno = 7369;
--3
select *
from emp
where ename = 'ALLEN';

--4
select ename, deptno, sal
from emp
where hiredate = '81/02/20';
-- hiredate = '1981-02-20'
--5
SELECT * 
FROM emp
WHERE job != 'MANAGER';
--6
SELECT *
FROM emp 
WHERE hiredate >= '81-04-02';
--7
SELECT ename, sal, deptno
FROM emp
WHERE sal >= 800;
--8
SELECT * 
FROM emp
WHERE deptno >=20;
--9
SELECT *
FROM emp
WHERE SUBSTR( ename , 1, 1) > 'K';
--WHERE ename >= 'L';

--10
SELECT *
FROM emp 
WHERE hiredate < '81-12-09';
--11
SELECT empno, ename
FROM emp
WHERE empno <= 7698;
--12
SELECT ename, sal, deptno, hiredate
FROM emp
WHERE hiredate >= '81-04-02' and hiredate <= '82-12-09';
--13
SELECT ename, job, sal
FROM emp
WHERE sal > 1622 and sal <3000;

--14
select *
from emp
where empno not BETWEEN 7654 and 7782;
-- empno < 7654 or empot >7782
--15
select *
from emp
where substr( ename ,1,1) between 'B' and 'J' ;
-- ename >= 'b' and ename <= 'j' 
-- ename between 'b' and 'j' 
--16
SELECT *
FROM emp
WHERE SUBSTR(hiredate,1,2) <> 81;
-- not(hiredate >= '81-01-01' and hiredate <= '81-12-31'
-- hiredate not beetween \'81-01-01 and 81-12-31
-- to_char(hiredate, 'yyyy') <> '1981'; 
--17
SELECT  *
FROM emp
WHERE job = 'MANAGER' OR job = 'SALESMAN';
--18
SELECT ename, empno, deptno
FROM emp
WHERE deptno <>20 and deptno <>30;
-- deptno not in (20,30)
--19
SELECT empno, ename, hiredate, deptno
from emp
WHERE substr(ename,1,1) ='S';
-- ename llike 's%'
--20
SELECT *
FROM emp
where substr(hiredate,1,2) = '81' ;
-- hiredate between '1981-01-01' and  '1981-12-31'
-- like-> 데이터가 많으면 컴터부하 많이 걸림 ->웬만하면 안쓰는게 좋다
--> 정확한 값으로 검색하는게 좋다
--21
SELECT *
FROM emp
WHERE ename LIKE '%S%';
--22
SELECT *
FROM emp
WHERE ename LIKE 'M_____' and ename LIKE '_____N';
--WHERE ename LIKE 'M____N' 
--23
SELECT *
FROM emp
WHERE ename LIKE '_A%';
--24
SELECT *
FROM emp
WHERE COMM IS NULL;
--25
SELECT *
FROM emp
WHERE COMM IS NOT NULL;
--26
SELECT ENAME, DEPTNO, SAL
FROM emp
WHERE DEPTNO = 30 AND sal >=1500;
--27
SELECT empno,ename,deptno
FROM emp
WHERE ename LIKE 'K%' or deptno = 30;
--28
SELECT *
from emp
WHERE sal >= 1500 and deptno = 30 and job = 'MANAGER';
--29
SELECT * 
FROM emp
WHERE deptno = 30 ORDER BY empno;
--30
SELECT *
FROM emp
ORDER BY sal DESC;
--31
SELECT *
FROM emp
ORDER BY deptno ,sal DESC;
--32
SELECT deptno, ename, sal
FROM emp
ORDER BY deptno DESC, ename, sal DESC;
--33
SELECT ename, sal,ROUND(sal*0.13) BONUS, deptno
FROM emp
WHERE deptno = 10;
--34
SELECT ename,sal, NVL(comm,0),sal+NVL(comm,0) total
FROM emp
order by total desC;
--35
SELECT ename,sal, to_char(round(sal*0.15,1),'$999,999.0') 회비
from emp
WHERE sal BETWEEN 1500 and 3000;
--36
SELECT d.dname , count(e.empno)
FROM emp e
JOIN dept d
on e.deptno=d.deptno
GROUP by d.dname -- e.deptno, 없어도 된다
HAVING COUNT(empno) >5;

 --37
 SELECT job, sum(sal) 급여합계
 FROM emp
 WHERE job <> 'SALESMAN' 
 GROUP BY job HAVING SUM(SAL)> 5000;

 --38
 SELECT e.empno , e.ename , e.sal, s.grade
 from emp e
 JOIN salgrade s
 on e.sal BETWEEN s.losal and s.hisal; -- 비동등조인
--39
select deptno, count(*) 사원수, count(comm) as "커미션 받은 사원수" -- 띄워쓰기 하고싶으면 쌍따옴표 써야함
from emp
GROUP BY deptno;
--40
select ename, deptno,
decode ( deptno  ,10 ,'총무부'
                ,20,'개발부'
                , '영업부' -- 30, '영업부' 라고 해도됨
            ) "부서명"
from emp;

select ename, deptno,
case deptno  when 10 then '총무부'
             when 20 then '개발부'
             when 30 then '총무부'
             end "부서명" 
from emp;













