SELECT SYSDATE FROM DUAL;

 -- 한줄 주석 
 --  HR계정(연습용계정)을 언락하고 비밀번호 지정ㄹ
ALTER USER HR ACCOUNT UNLOCK 
IDENTIFIED BY 1234;

@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql;
alter user scott identified by 1234;