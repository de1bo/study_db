-- db_schema1 create, insert
create table db_schema1 (
	seq int,
    img varchar(45),
	bookname varchar(100),
    author varchar(45),
    publisher varchar(100),
    publication_date datetime,
    price int,
    sales_rate int,
    star float
);

insert into db_schema1 (
	seq
    , img
	, bookname
	, author
	, publisher
	, publication_date
	, price
	, sales_rate
    , star
) values (
	1
    , '책 이미지'
    , 'Do it! HTML+CSS+자바스크립트 웹 표준의 정석'
    , '고경희'
    , '이지스퍼블리싱'
    , '2021-01-01'
    , 27000
    , 49899
    , 9.6
);



-- db_schema2 create, insert
create table db_schema2 (
	seq int,
    img varchar(45),
	explanation varchar(200),
    space_type varchar(100),
    Reservation_time int,
    Capacity int,
    facility varchar(100)
);

insert into db_schema2 (
	seq
    , img
	, explanation
	, space_type
	, reservation_time
	, capacity
    , facility
) values (
	1
    , '연습실 이미지'
    , '레슨, 성악, 보컬, 피아노, 악기 연습 등 원하는 음악을 마음껏 할 수 있는 지상 연습실(단, 금관악기는 제외)'
    , '보컬연습실 악기연습실'
    , 1
    , 4
    , '의자/테이블, 전신거울, 내부 화장실, 금연, 공용 라운지, 샤워시설, 인터넷/WIFI'
);

select * from db_schema1;
select * from db_schema2;

-- drop table db_schema1;
-- drop table db_schema2;

select * from db_schema2 where facility like '%샤워%';