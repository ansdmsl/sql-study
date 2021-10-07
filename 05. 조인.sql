-- 조인
--on을 join할 기본 조인
select e.employee_id, last_name, e.department_id, d.department_name 
from employees e join departments d
    on e.department_id = d.department_id;
    
-- where 절을 사용한 예전 join 방법 
select e.employee_id, last_name, e.department_id, d.department_name 
from employees e , departments d
where e.department_id = d.department_id;

--3개 테이블 조인 직원 부서, 로케이션 테이블 조인하기 
SELECT employee_id 직원이름, department_name 부서이름 , city 도시
FROM employees e
JOIN departments d 
    ON e.department_id = d.department_id
JOIN locations l
    ON d.location_id = l.location_id;
-- 예제
SELECT d.department_name 부서명, l.city 도시, c.country_name 국가
FROM departments d
JOIN locations l ON l.location_id = d.location_id
JOIN countries c ON c.country_id = l.country_id
WHERE l.city IN('Seattle','London') AND c.country_name Like 'United%';

-- 자체 조인 
SELECT e.last_name 직원, m.last_name 매니저 
FROM employees e JOIN employees m ON e.manager_id = m.employee_id;

-- 외부조인 
--기본 조인 (부서번호가 null인 직원은 제외 )
select e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
from employees e JOIN departments d on e.department_id = d.department_id;

SELECT *
FROM employees WHERE department_id IS NULL; -- 부서번호가 널인 직원

-- left 외부 조인 :직원 테이블중에 부서가 없는 직원도 출력
select e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
from employees e LEFT OUTER JOIN departments d on e.department_id = d.department_id;

-- RIGHT 외부 조인 : 부서 테이블에 있지만 직원테이블에서 사용하지 않는 부서도 전부 출력됨
select e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
from employees e RIGHT OUTER JOIN departments d on e.department_id = d.department_id;

-- FULL 외부 조인 
select e.last_name 이름, d.department_id 부서번호, d.department_name 부서명
from employees e FULL OUTER JOIN departments d on e.department_id = d.department_id;

-- 예제
SELECT c.country_name 국가, c.country_id 국가번호 , l.location_id 지역번호 ,l.city 도시
from countries c left outer join locations l on c.country_id =l.country_id
order by 지역번호 desc;
