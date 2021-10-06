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
