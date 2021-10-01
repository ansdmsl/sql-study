-- where 절 
SELECT *
FROM EMPLOYEES
WHERE SALARY > 14000; --월급이 14000봐 보다 많은 직웝 

SELECT *
FROM EMPLOYEES
WHERE LAST_NAME = 'King'; -- 문자열은 따옴표로 표시, 이름이 king인 직원

SELECT *
FROM EMPLOYEES
WHERE hire_date < '2002/06/10'; -- 날짜를 비교, 교용일이 2002년 6월 10일 이전

--예제1
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 100;

--예제2
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME = 'David';
--예제3
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID < 105 ;
--예제4
SELECT *
FROM JOB_HISTORY
WHERE START_DATE >= '2006/03/03';
--예제5
SELECT *
FROM DEPARTMENTS
WHERE LOCATION_ID <> 1700;

--논리 연산자 and or not 
SELECT LAST_NAME, DEPARTMENT_ID, SALARY
from EMPLOYEES
where DEPARTMENT_ID =60
    OR (DEPARTMENT_ID = 80
    AND SALARY > 10000 );

SELECT *
FROM employees
WHERE NOT ( hire_date > '2004/01/01' or salary > 5000);
-- hire date <= 2004-01-01 and salary <= 5000

-- 예제 1
SELECT *
FROM employees
WHERE ( salary > 4000 and job_id = 'IT_PROG' );

--예제2
SELECT *
FROM employees
WHERE ( salary > 4000 and (job_id = 'IT_PROG' or job_id = 'FI_ACCOUNT' ));

-- IN 연산자  ()인의 값과 같을때 or로 연결
SELECT  *
FROM employees 
WHERE salary IN (4000,3000,2700);

--예제
SELECT  *
FROM employees 
WHERE salary IN (10000,17000,24000);

SELECT *
FROM employees
WHERE department_id NOT IN (30, 50, 80, 100,100);

-- between 사이값 
SELECT *
FROM employees WHERE salary BETWEEN 9000 AND 10000;

--예제1
SELECT *
FROM employees WHERE salary BETWEEN 10000 AND 20000;

--예제2
SELECT *
FROM employees WHERE hire_date BETWEEN '2004/01/01' and '2004/12/30';
--예제3
SELECT *
FROM employees WHERE salary < 7000 or salary > 17000;

SELECT *
FROM employees WHERE salary NOT BETWEEN 7000 AND 17000;

--like 연산자 _ %를 같이 사용해서 문자열을 검색
SELECT  * FROM employees WHERE last_name LIKE 'B%';
--   --> 대문자B로 시작 뒤에는 상관 ㄴㄴ
SELECT  * FROM employees WHERE last_name LIKE '%b%';
--   --> 문자열 중간에 b가 있으면 전부출력
SELECT  * FROM employees WHERE last_name LIKE '____y';
--  --> 언더바는 정확한 자릿수를 표현 -> 4글자y

--예제1
SELECT  *
FROM employees
WHERE job_id like '%AD%';

--예제2
SELECT  *
FROM employees
WHERE job_id like 'AD___';
--예제3
SELECT  *
FROM employees
WHERE phone_number like '%1234';

--예제4
SELECT  *
FROM employees
WHERE phone_number not LIKE '%3%' AND  phone_number like '%9';

--예제5
SELECT  *
FROM employees
WHERE job_id like '%MGR%' OR job_id like '%ASST%' ;

-- null 
SELECT commission_pct
FROM employees;
-- 널은 입력되지 않은 사용할수 없는 값이고 0또는 공배('')이 아님 
-- 널값을 건색하기 위해 is null을 사용 
SELECT  * FROM employees WHERE commission_pct IS NULL;
-- 널값이 아닐 경우만 찾을때 is not null
SELECT  * FROM employees WHERE commission_pct IS NOT NULL;


