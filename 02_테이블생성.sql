/*
테이블(table)
    1. 관계형 데이터베이스에서 데이터를 저장하는 객체이다.
    2. 표 형식을 가진다.
    3. 행(Row)과 열(Column)의 집합 형식이다.
*/
/*
테이블 만들기
    1. 열(column)을 만드는 과정이다.
    2. 테이블 만드는 쿼리문
        CREATE TABLE 테이블이름 (
            칼럼이름1 데이터타입 제약조건,
            칼럼이름2 데이터타입 제약조건,
            ...
        );
*/
/*
제약조건
    1. NOT NULL    : NULL 불가, 데이터 중복 가능.
    2. UNIQUE      : NULL 가능, 데이터 중복 불가.
    3. PRIMARY KEY : NULL 불가, 데이터 중복 불가.
    4. FOREGN KEY  : 다른 테이블 열 참조하여 해당 테이블에 존재하는 값만 입력 가능. 다른 테이블 고유키 참조.
    5. CHECK       : 설정한 조건식을 만족하는 데이터만 입력 가능. 조건식 만족하지 않는 데이터 입력 거부.
    
    기본키는 식별자 : 찾아 올 때 쓰는 값으로 주로 번호로 이루어진다.
    1) 중복이 없어야 함.
    2) 반드시 값을 가지고 있어야 함.
    즉, NOT NULL과 UNIQUE 두 가지 특성이 합쳐진 것이 PRIMARY KEY.
    작성방법은 NOT NULL PRIMARY KEY로 사용.
*/

CREATE TABLE BLOG_T (
  BLOG_NO  NUMBER             NOT NULL PRIMARY KEY, 
  TITLE    VARCHAR2(100 BYTE) NOT NULL,
  EDITOR   VARCHAR2(100 BYTE) NOT NULL,
  CONTENTS CLOB               NULL,        
  CREATED  DATE               NOT NULL,
  AGE      INT                CHECK (AGE >= 18)
);



DROP TABLE BLOG_T;