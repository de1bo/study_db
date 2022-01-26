use world;

drop table publisher;

CREATE TABLE `book3` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`));
  
CREATE TABLE `publisher` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`));
  
  insert into book3 (
  name
  ,publisher_cd
  ) values (
  '4차산업혁명의미래'
  ,4
  );
  
  insert into publisher (
  name
  ) values (
  '아이콕스'
  );
  
  select * from book3;
   select * from publisher;
   
   -- 데이터를 여러개씩 가져올때는 join으로 구현
   select
   a.no
   ,a.name
   ,a.publisher_cd
   ,b.no
   ,b.name
   from book3 as a
	-- inner join publisher as b on b.no = a.publisher_cd;
	 left join publisher as b on b.no = a.publisher_cd;
   
   
   -- 테이블 조인을 해야 되면 테이블 이름에 알리아스를 넣는다. (alias)별칭
    -- 값을 하나만 가져올때는 서브쿼리문을 쓴다
   select 
		a.no
		,a.name
        ,a.publisher_cd
        ,(select name from publisher where no = a.publisher_cd) -- 값 이름이 서브자체로 나옴
	from book3 as a;
    
    select 
		a.no
		,a.name
        ,a.publisher_cd
        ,(select name from publisher where no = a.publisher_cd) as publisher_name -- 별칭인 publisher_name로 출력
	from book3 as a;
    
    select 
		a.no
		,a.name
        ,a.publisher_cd
        ,getPublisherName		-- 함수, function
	from book3 as a;