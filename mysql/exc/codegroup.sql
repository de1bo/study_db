CREATE TABLE IF NOT EXISTS `infCodeGroup` (
  `ifcgseq` BIGINT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcgName` VARCHAR(100) NULL,
  `ifcgUseNy` TINYINT(1) NULL,
  `ifcgOrder` TINYINT(1) NULL,
  `ifcgRefferenceV1` VARCHAR(50) NULL,
  `ifcgRefferenceV2` VARCHAR(50) NULL,
  `ifcRefferenceV3` VARCHAR(50) NULL,
  `ifcgRefferenceI1` INT NULL,
  `ifcgRefferenceI2` INT NULL,
  `ifcgRefferenceI3` INT NULL,
  `ifcgDesc` VARCHAR(255) NULL,
  `ifcgDelNy` TINYINT(1) NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT(11) NULL,
  `regDevice` TINYINT(1) NULL,
  `regDatetime` DATETIME NULL,
  `regDatetimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT(11) NULL,
  `modDevice` TINYINT(1) NULL,
  `modDatetime` DATETIME NULL,
  `modDatetimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifcgseq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `infCode` (
  `ifcdseq` BIGINT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdName` VARCHAR(100) NULL,
  `ifcdUseNy` TINYINT(1) NULL,
  `ifcdOrder` TINYINT(1) NULL,
  `ifcdRefferenceV1` VARCHAR(50) NULL,
  `ifcdRefferenceV2` VARCHAR(50) NULL,
  `ifcdRefferenceV3` VARCHAR(50) NULL,
  `ifcdRefferenceI1` INT NULL,
  `ifcdRefferenceI2` INT NULL,
  `ifcdRefferenceI3` INT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT(1) NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT(11) NULL,
  `regDevice` TINYINT(1) NULL,
  `regDatetime` DATETIME NULL,
  `regDatetimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT(11) NULL,
  `modDevice` TINYINT(1) NULL,
  `modDatetime` DATETIME NULL,
  `modDatetimeSvr` DATETIME NULL,
  `ifcgseq` BIGINT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdseq`),
  INDEX `fk_infCode_infCodeGroup1_idx` (`ifcgseq` ASC) VISIBLE,
  CONSTRAINT `fk_infCode_infCodeGroup1`
    FOREIGN KEY (`ifcgseq`)
    REFERENCES `infCodeGroup` (`ifcgseq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * from infCodeGroup;
select * from infCode;

insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.성별', 1, 1);
insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.모바일_마케팅', 1, 2);
insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.이메일_마케팅', 1, 3);
insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.개인정보', 1, 4);
insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.비밀번호_문제', 1, 5);
insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.통신사', 1, 6);
insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.집,회사_전화', 1, 7);
insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.SNS', 1, 8);
insert into infCodeGroup (ifcgName, ifcgUseNy, ifcgOrder) values ('회원.국적', 1, 9);




insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('남성', 1, 1,1);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('여성', 1, 2,1);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('동의', 1, 1,2);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('거부', 1, 2,2);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('동의', 1, 1,3);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('거부', 1, 2,3);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('1년', 1, 1,4);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('3년', 1, 2,4);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('5년', 1, 3,4);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('10년', 1, 4,4);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('탈퇴시', 1, 5,4);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('나의 출신 고향은', 1, 1,5);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('내가 나온 초등학교는', 1, 2,5);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('다른 이메일 주소는', 1, 3,5);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('나의 보물 1호는', 1, 4,5);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('나의 이상형은', 1, 5,5);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('SKT', 1, 1,6);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('KT', 1, 2,6);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('LGU+', 1, 3,6);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('알뜰폰', 1, 4,6);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('개인', 1, 1,7);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('회사', 1, 2,7);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('페이스북', 1, 1,8);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('인스타', 1, 2,8);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('트위터', 1, 3,8);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('naver.com', 1, 1,9);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('daum.net', 1, 2,9);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('gmail.com', 1, 3,9);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('nate.com', 1, 4,9);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('한국', 1, 1,10);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('중국', 1, 2,10);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('미국', 1, 3,10);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('영국', 1, 4,10);
insert into infCode (ifcdName, ifcdUseNy, ifcdOrder, ifcgseq) values ('북한', 1, 5,10);