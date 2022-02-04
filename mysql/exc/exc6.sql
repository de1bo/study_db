CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

drop table codegroup;
drop table code;

CREATE TABLE IF NOT EXISTS `code` (
  `code` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(50) NOT NULL,
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  PRIMARY KEY (`code`),
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into codeGroup (
seq
, name
) values (
'infra001'
, '성별'
);

select * from codeGroup;
select * from code;

insert into code(
code
,name
,codeGroup_seq
) values(
'3'
,'기타'
, 'infra001'
);

select 
a.seq
, a.name
, b.code
, b.name
from codeGroup as a
left join code as b on b.code = a.name ;

select 
a.seq
, a.name
, b.code
, b.name
from codeGroup as a
left join code as b on b.codeGroup_seq = a.seq ;
