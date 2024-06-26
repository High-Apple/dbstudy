/*
ORDER BY
1. 조회 결과를 정렬할 때 사용한다.
2. 정렬방식
  1) 오름차순 정렬 : ASC
  2) 내림차순 정렬 : DESC
3. 2개 이상의 정렬 기준을 추가할 수 있다.
*/
--1. 연봉이 높은 순으로 사원 정보를 조회하시오.
SELECT * FROM EMPLOYEE_T ORDER BY SALARY DESC;
--2. 입사순으로 사원 정보를 조회하시오.
SELECT * FROM EMPLOYEE_T ORDER BY HIRE_DATE ASC;
--3. 성별의 오름차순으로 정렬하시오. 동일한 성별 내에서는 이름의 내림차순.
SELECT * FROM EMPLOYEE_T ORDER BY GENDER ASC, NAME DESC;

/*
SELECT절의 실행 순서
FROM        1
WHERE       2
GROUP BY    3
HAVING      4
SELECT      5
ORDER BY    6
F W G H S O

FROM TABLE 먼저 테이블 읽고
WHERE 조건 따져서
GROUP BY로 묶고
HAVING 묶어놓은 GROUP BY의 조건대로 정리하면 보여줄 내용은 다 골랐다
SELECT 이제 보여줄 방식 고르고
ORDER BY 에 따라 골라놓은 순서대로 보여줌.
*/









