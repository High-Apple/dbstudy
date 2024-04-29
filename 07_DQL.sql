/*
DQL
1. Data Query Language
2. 데이터 조회어
3. 데이터(행, Row)를 조회할 때 사용한다.
4. DQL을 실행해도 데이터베이스에 변화는 발생하지 않는다. (트랜잭션은 전혀 필요하지 않음)
5. 형식
    SELECT    조회할 칼럼, 조회할 칼럼, ...
    FROM      테이블명
    WHERE     조건식
    GROUP BY  그룹화할 칼럼, 그룹화할 칼럼, ...     --GROUP BY 와 HAVING은 종속 조건
    HAVING    그룹조건식
    ORDER BY  정렬할칼럼  ASC|DESC, 정렬할칼럼 ASC|DESC,...
*/

--1. 부서 테이블의 모든 칼럼을 조회하시오.
SELECT DEPT_NO, DEPT_NAME, LOCATION
  FROM DEPARTMENT_T;

SELECT *        -- 개발할 때 * 사용 금지
  FROM DEPARTMENT_T;

SELECT D.DEPT_NO, D.DEPT_NAME, D.LOCATION
  FROM DEPARTMENT_T D;  --테이블의 별명(ALIAS)을 D로 지정

--2. 부서 테이블의 모든 칼럼을 조회하시오. 조회할 칼럼명을 '부서번호', '부서명', '위치'로 지정하시오
SELECT DEPT_NO AS 부서번호      --칼럼의 별명(ALIAS)을 부서번호로 지정
      ,DEPT_NAME AS 부서명
      ,LOCATION AS 위치
FROM DEPARTMENT_T;

--3. 부서 테이블의 위치 칼럼을 중복을 제거하여 조회하시오.   ///DISTINCT 중복을 제거 보여주는 명령어
SELECT DISTINCT LOCATION
FROM DEPARTMENT_T;

SELECT LOCATION
  FROM DEPARTMENT_T
 GROUP BY LOCATION;

/*
주요 조건식 작성 방법
1. 칼럼 = 값
2. 칼럼 = BETWEEN 값1 AND 값2
3. 칼럼 IN(값1, 값2)        // OR조건
4. 칼럼 IS NULL            // 칼럼이 NULL값을 가지고 있는지 검사하는 조건식
5. 칼럼 IS NOT NULL        // 칼럼이 NOT NULL 값인지 검사하는 조건식
6. 칼럼 LIKE 값            // 포함된 값을 찾는다
*/

--4. 부서 테이블에서 부서번호가 1인 부서정보를 조회하시오.
SELECT *
FROM DEPARTMENT_T
WHERE DEPT_NO = 1;     

--5. 부서 테이블에서 부서번호가 '서울'인 부서 정보를 조회하시오.
SELECT *
FROM DEPARTMENT_T
WHERE LOCATION='서울';  

--6. 사원 테이블에서 기본급이 3000000 이상인 사원을 조회하시오.
SELECT *
FROM EMPLOYEE_T
WHERE SALARY >=3000000;

--7. 사원 테이블에서 기본급이 2000000 ~ 3000000 인 사원을 조회하시오
SELECT *
FROM EMPLOYEE_T
WHERE SALARY BETWEEN 2000000 AND 3000000;

--8. 사원 테이블에서 직급이 '사원', '과장'인 사원을 조회하시오.
SELECT *
FROM EMPLOYEE_T
WHERE POSITION IN('사원', '과장');

/*
와일드 카드(WILD CARD)
1. 만능 문자
2. 종류
    1) %: 글자수에 상관 없는 만능 문자
    2) _: 1글자를 의미하는 만능문자
3. 예시
    1) 첫 번째 글자가 A인 모든 데이터: A%
    2) 두 번째 글자가 A인 모든 데이터: _A%
    3) 마지막 글자가 A인 모든 데이터 : %A
    4) A를 포함하는      모든 데이터 : %A%
*/
/*
LIKE 연산자
와일드 카드를 이용해서 조회할 때 사용하는 연산자
*/
--9. 사원 테이블에서 '한'씨를 조회하시오.
SELECT *
  FROM EMPLOYEE_T
 WHERE NAME LIKE '한%';
--10. 사원 테이블에서 9월달에 입사한 사원을 조회하시오.
SELECT *
  FROM EMPLOYEE_T
 WHERE EXTRACT(MONTH FROM HIRE_DATE) = 9;
-- EXTRACT 함수 : 날짜 유형의 데이터로부터 날짜 정볼를 분리하여 새로운 칼럼 형태로 추출

SELECT *
  FROM EMPLOYEE_T
 WHERE HIRE_DATE LIKE '%/09/%';





