/*
    통계 함수(집계 함수)
    --열 하나만 계산 가능. 행들의 합계를 볼 수 있음.
    1. 합계  : SUM(EXPR)
    2. 평균  : AVG(EXPR)
    3. 최대  : MAX(EXPR)
    4. 최소  : MIN(EXPR)
    5. 개수  : COUNT(EXPR)
*/

-- EMPLOYEE_T 테이블
--1. 전체 사원의 기본급 합계 조회하기
SELECT SUM(SALARY)
FROM EMPLOYEE_T;
--2. 전체 사원의 기본급 평균 조회하기
SELECT AVG(SALARY)
FROM EMPLOYEE_T;
--3. 전체 사원의 기본급 최대 조회하기
SELECT MAX(SALARY)
FROM EMPLOYEE_T;
--4. 전체 사원의 기본급 최소 조회하기
SELECT MIN(SALARY)
FROM EMPLOYEE_T;
--5. 전체 사원 수 조회하기
SELECT COUNT(EMP_NO)    -- 사원번호의 개수
FROM EMPLOYEE_T;
SELECT COUNT(NAME)      -- 이름의 개수
FROM EMPLOYEE_T;
SELECT COUNT(*)  
FROM EMPLOYEE_T;

--2. 커미션 평균(커미션 = COMMISSION_PCT *SALARY)
SELECT AVG(COMMISSION_PCT*SALARY)  
FROM EMPLOYEES;

SELECT AVG(NVL(COMMISSION_PCT, 0) * SALARY)
FROM EMPLOYEES;

--3. 가장 먼저 입사한 사원이 입사한 날짜 (최소 입자일자)
SELECT MIN(HIRE_DATE)
  FROM EMPLOYEES;
  
--4. 가장 늦게 입사한 사원이 입사한 날짜 (최대 입사일자)
SELECT MAX(HIRE_DATE)
FROM EMPLOYEES;

--5. 사원들이 근무하고 있는 부서의 개수
SELECT COUNT(DISTINCT DEPARTMENT_ID)
FROM EMPLOYEES;







