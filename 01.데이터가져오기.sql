--주석 단축기 CTRL +/
/*
여러줄 
주석
*/

--1./ 테이블의 모든 행과 열을 읽어오기 명령문 실행은 CTML + TENTER 
SELECT * FROM departments;

-- 2. 특정 열만 조회 
SELECT department_id, department_name
FROM departments;

--3. 별칭 붙이기 (열의 이름)
select department_id as 부서번호, department_name 부서이름
from departments;

--4 산술연산자 ( + - * / )
select first_name 이름, job_id 직책, salary 월급
from employees;
--5 월급에 100씩 뺀 열을 만들기 
select first_name 이름, job_id 직책,salary 월급, salary - 100 월급수정
from employees;
--6 월급에 10%뺀 열을 만들기 
select first_name 이름, job_id 직책,salary 월급, salary -salaty/10 월급수정
from employees;

--7. 보너스를 주는데 salary에 1000을 뺸 값의 5%로 책정 
select 
    last_name,
    first_name,
    job_id,
    salary,
    (salary-1000)*0.05 as 보너스
from employees; 

--distint : 중복값을 제거 
select distinct job_id
from employees;

--예제1
select employee_id, first_name, last_name
from employees;
--예제2
select first_name,salary, salary*1.1 as 뉴셀러리
from employees;

--예제3
select employee_id 사원번호 , first_name as 이름, last_name 성
from employees;


--연결연산자 1
SELECT last_name || 'is a' || job_id as 직업정보
FROM EMPLOYEES;

--예제4 : 이름을 한칸 뛰우고 붙여서 열, email에 문자열 붙여서 출력
SELECT EMPLOYEE_ID, FIRST_NAME ||' '|| LAST_NAME, EMAIL || '@company.com'
FROM EMPLOYEES;

DESC EMPLOYEES;
DESC DEPARTMENTS;


