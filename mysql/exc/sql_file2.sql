create table book (
	seq int,
	bookname varchar(100),
    publisher varchar(100),
    author varchar(100),
    price int
);

create table cafe (
	seq int,
	cafename varchar(100),
    table_num int,
    chair_num int,
    address varchar(100),
    location varchar(100),
    ceo varchar(100)
);

CREATE TABLE IF NOT EXISTS `book` (
  `seq` INT UNSIGNED NOT NULL,
  `bookname` VARCHAR(100) NULL,
  `publisher` VARCHAR(100) NULL,
  `author` VARCHAR(100) NULL,
  `price` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '서점';


drop table cafe;