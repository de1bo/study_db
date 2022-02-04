use world;
CREATE TABLE IF NOT EXISTS `book6_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `writer_no` INT UNSIGNED NOT NULL,
  `book6_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_book6_writer_writer_idx` (`writer_no` ASC) VISIBLE,
  INDEX `fk_book6_writer_book61_idx` (`book6_no` ASC) VISIBLE,
  CONSTRAINT `fk_book6_writer_writer`
    FOREIGN KEY (`writer_no`)
    REFERENCES `writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book6_writer_book61`
    FOREIGN KEY (`book6_no`)
    REFERENCES `book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;


drop table writer;
drop table book6_writer;
drop table book6;

insert into book6
(
name
) values (
'bootstrap'
);

insert into writer (
name
) values (
'김두현'
);

select * from book6;
select * from writer;
select * from book6_writer;

insert into book6_writer (
book6_no
,writer_no
) values (
3
,4
);

select
a.no
,a.name
,b.writer_no
,c.name writer_name
 -- , (select name from writer c where c.no = b.writer_no1) as writer_name
from book6 as a
left join book6_writer b on b.book6_no = a.no
left join writer c on b.writer_no = c.no;

select a.no
, a.name
, b.writer_no
, c.name as writer_name
from book6 as a
left join book6_writer as b on b.book6_no = a.no
left join writer as c on b.writer_no = c.no;