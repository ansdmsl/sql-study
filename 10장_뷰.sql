--뷰는 가상의 테이블 
--단순한 뷰 만들기 
--DROP VIEW EMP_V1;
--CREATE VIEW EMP_V1(직원번호,이름,성,이메일,고용일,직종)
--AS
--SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID
--FROM EMPLOYEES;

SELECT * FROM EMP_V1;
--읽기전용뷰 만들기 (90번 부서 직원들의 읽기 전용 뷰)
CREATE OR REPLACE VIEW EMP90_read(직원번호,이름,성,이메일,고용일,직종)
AS
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID
FROM EMPLOYEES
WHERE department_id = 90
WITH READ ONLY;
SELECT * FROM emp90_read;
-- DEML 직업이 안됨 
DELETE FROM emp90_read;

--테이블 삭제
DROP TABLE 학생;

--뷰에 데이터를 입력(실제 테이블이아니기 때문에 실제로는 테이블에 입력)
INSERT INTO EMP_V1(직원번호,이름,성,이메일,고용일,직종)
VALUES(333,'펭수','김','Peng',SYSDATE,'IT_PROG');

SELECT * FROM employees;

--복잡한 뷰 
-- 그룹함수를 쓴 뷰는 dml(입력, 수정, 삭제) 등 불가 
CREATE OR REPLACE VIEW 부서별_직원_보고서
AS
SELECT department_id 부서번호, count(*) 직원수, MAX(salary) 최고급여, min(salary) 최저급여 , ROUND(AVG(salary)) 평균급여
FROM employees
GROUP BY department_id
ORDER BY department_id;

SELECT * FROM 부서별_직원_보고서;
