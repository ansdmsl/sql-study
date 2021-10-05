-- 그룹함수 ( 다중행 함수, 집계함수)
select ROUND(avg(salary)) 평균값, MAX(salary) 최대값, MIN(salary) 최소값, sum(salary) 합계, COUNT(salary) 카운트
from employees
where job_id like '%REP%';

SELECT count(*) FROM employees;

SELECT count(*) FROM employees where department_id =80; --80번 부서의 직원들

-- 그룹함수에서는 널값을 제외하고 계산한다. ( 예외 count(*))
select count(department_id)
from employees; --1명이 부석 ㅏ없음(사장)

select count(distinct department_id)
from employees; --중복되징 않은 부서의 개수 

select avg(commission_pct)
from employees; -- 넓ㅅ값을 제외한 모든 직원들 커미션 평균

-- group by 절 : 특정 그룹으로 나우어서 그룹함수를 사용 
SELECT department_id 부서번호, ROUND(AVG(salary)) 평균급여
FROM employees
GROUP BY department_id; -- 부서번호로 그룹나눔 

SELECT * FROM employees WhERE department_id is null; --부서가 없는 사람 

-- 예제1
SELECT department_id 부서명,count(*) 사원수,MAX(salary) 최대금여, MIN(salary) 최소습여, sum(salary) 급여합계, ROUND(AVG(salary)) 평균급여
FROM employees GROUP BY department_id  order by 급여합계 desc; -- 부서번호로 그룹나눔 

-- 예제2
SELECT department_id 부서번호, job_id 직업 , manager_id 상사번호,sum(salary) 급여합계,  count(*) 직원수
FROM employees group by department_id, job_id, manager_id order by 부서번호; 

--예제
select round(avg(max(salary))), avg(min(salary))
from employees GROUP BY department_id;

-- 그룹함수의 조건절 having 
SELECT department_id 부서번호, COUNT(*) 사원수
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5; -- 사원수 5명이 넘는 부서

-- 예제
SELECT job_id 직종, sum(salary) 월급여합계
FROM employees
GROUP BY job_id 
HAVING AVG(salary) > 10000 and job_id <> 'AC_MGR'; 

-- 예제2
SELECT department_id 부서번호, ROUND(AVG(salary)) 평균급여
FROM employees
GROUP BY department_id
HAVING  department_id <> 40 AND AVG(salary) <= 7000;

-- 예제
SELECT job_id , sum(salary) 급여총액 
FROM employees WHERE job_id  NOT LIKE '%REP%'
GROUP BY job_id 
HAVING SUM(salary) >= 13000 ORDER BY 급여총액 DESC; 

