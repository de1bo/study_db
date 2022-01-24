use world; -- 주석
show tables;

-- 테이블 생성
create table member1 (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);



create table member2 (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table bookstore (
	seq int,
    books varchar(100),
	bookname varchar(100),
    publisher varchar(100),
    author varchar(100),
    price int
);
-- 테이블 삭제

drop table bookstore;
drop table member1;

-- 데이터 입력
insert into cafe (
	seq
	, cafename
	, table_num
	, chair_num
	, address
	, location
	, ceo
) values (
	1
    , '별다방'
    , 1
    , 2
    , '서울시 어디쯤'
    , 1
    , '장동건'
);

-- varchar 은 ' 또는  "로 감싼다.
-- int는 사용하지 않아도 된다.
-- 컴마는 앞쪽을 선호 : 이건 호불호가 갈린다.


-- 데이터 조회
select * from cafe;

select * from cafe where seq = 3;
select * from cafe where cafename = '기억다방';
select * from cafe where location = 5;

select * from cafe where cafename = '별다방' and table_num = 1;
select * from cafe where cafename = '별다방' or table_num = 2;

select * from cafe where location > 5;
select * from cafe where location < 5;
select * from cafe where location >= 5;
select * from cafe where location <= 5;
select * from cafe where location <> 5; -- 5빼고 다

select * from cafe where name like '%다방%'; -- '다방'이 들어가면 다 검색
select * from cafe where name like '다방%'; -- 앞에 '다방'이 들어가는 것 검색
select * from cafe where name like '%다방'; -- 뒤에 '다방'이 들어가는 것 검색


