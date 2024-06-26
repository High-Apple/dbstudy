/* 
sys계정
1. 오라클 관리자 계정이다.
2. 일반 사용자를 만드는 역할로 국한해서 사용합니다.
3. SYS계정으로 일반 쿼리작업을 수행하지않도록 주의합니다.
*/
/*
새로운 사용자 생성 방법

1. 사용자를 만드는 쿼리문을 실행한다.
     CREATE USER 계정이름 IDENTIFIED BY 비밀번호;
     
2. 사용자에게 권한을 부여한다.
    1) 접속 권한
    GRANT CONNECT TO 계정이름;
    2) 접속/사용 권한 부여
    GRANT CONNECT, RESOURCE TO 계정이름
    3) 관리자 권한 부여
    GRANT DBA TO 계정이름 /DBADMINISTRATIR...약자가 DBA. 기본적으로 관리자로 합니다.
*/

--ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;0
--CREATE USER GD IDENTIFIED BY 1111;

/*
쿼리문 실행하는 방법
1. 커서를 두고 CTRL + ENTER : 커서가 있는 쿼리문만 실행된다.
2. 블록을 잡고 CTRL + ENTER : 블록 잡은 부분의 쿼리문만 실행된다.
3. F5                     : 전체 스크립트가 실행된다.
*/

/*
계정 삭제하기
1. 데이터베이스 객체를 가진 경우
DROP USER 계정이름 CASCADE;
2. 데이터베이스 객체를 안 가진 경우
DROP USER 계정이름;
(지금 C##GD를 지울려먼 2번! 암것도 안했으니까)
*/

--DROP USER GD CASCADE;

--GRANT CONNECT TO GD; --접속 권한 부여
--GRANT CONNECT, RESOURCE TO GD; 

--접속 권한, 객체 사용 권한
--GRANT DBA TO GD; --관리자 



--REVOKE CONNECT FROM GD;
--REVOKE CONNECT, RESOURCE FROM GD;
--REVOKE DBA FROM GD;

