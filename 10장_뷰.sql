--뷰는 가상의 테이블 
--단순한 ㅠ 만들기 
DROP VIEW EMP_V1;
CREATE VIEW EMP_V1(직원번호,이름,성,이메일,고용일,직종)
AS
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID
FROM EMPLOYEES;

SELECT * FROM EMP_V1;

--테이블 삭제
DROP TABLE 학생;

--뷰에 데이터를 입력(실제 테이블이아니기 때문에 실제로는 테이블에 입력)
INSERT INTO EMP_V1(직원번호,이름,성,이메일,고용일,직종)
VALUES(333,'펭수','김','Peng',SYSDATE,'IT_PROG');

SELECT * FROM employees;
