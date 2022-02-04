use world;

drop table infMember;

CREATE TABLE IF NOT EXISTS `infMember` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `id` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `passwordModDate` DATETIME NULL COMMENT '비밀번호가 변경된 시점',
  `genderCd` INT NOT NULL,
  `birthday` DATE NULL,
  `home_tel` INT NULL,
  `fax_tel` INT NULL,
  `password_an` VARCHAR(45) NULL COMMENT '비밀번호 답',
  `introduction` VARCHAR(255) NULL,
  `mobile_marketingCd` TINYINT NULL,
  `email_marketingCd` TINYINT NULL,
  `PIVPCd` TINYINT NULL,
  `personal_informationCd` TINYINT NULL,
  `password_qCd` TINYINT NULL,
  `job` VARCHAR(45) NULL,
  `recommender` VARCHAR(45) NULL,
  `wedding_aniversary` DATE NULL,
  `child` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `homepage` (
  `home_seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` TINYINT NULL,
  `hp_address` VARCHAR(45) NULL,
  `infMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`home_seq`),
  INDEX `fk_homepage_infMember1_idx` (`infMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_homepage_infMember1`
    FOREIGN KEY (`infMember_seq`)
    REFERENCES `infMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `phone` (
  `phone_seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` TINYINT NULL COMMENT '기본값으로 할건지',
  `phone_num` INT NULL,
  `telecom_Cd` TINYINT NULL COMMENT '통신사',
  `phon_typeCd` TINYINT NULL COMMENT '집전화인지 회사인지',
  `infMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`phone_seq`),
  INDEX `fk_phone_infMember1_idx` (`infMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_phone_infMember1`
    FOREIGN KEY (`infMember_seq`)
    REFERENCES `infMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `SNS` (
  `sns_seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` TINYINT NULL,
  `SNS` VARCHAR(45) NULL,
  `SNS_urlCd` TINYINT NULL,
  `infMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`sns_seq`),
  INDEX `fk_SNS_infMember1_idx` (`infMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_SNS_infMember1`
    FOREIGN KEY (`infMember_seq`)
    REFERENCES `infMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `address` (
  `addr_seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` TINYINT NULL,
  `address` VARCHAR(45) NULL,
  `Detailed_Address` VARCHAR(45) NULL,
  `infMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`addr_seq`),
  INDEX `fk_address_infMember1_idx` (`infMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_address_infMember1`
    FOREIGN KEY (`infMember_seq`)
    REFERENCES `infMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `email` (
  `email_seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` TINYINT NULL,
  `email` VARCHAR(45) NULL,
  `email_account` VARCHAR(45) NULL,
  `email_domain` VARCHAR(45) NULL,
  `email_typeCd` TINYINT NULL,
  `infMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`email_seq`),
  INDEX `fk_email_infMember1_idx` (`infMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_email_infMember1`
    FOREIGN KEY (`infMember_seq`)
    REFERENCES `infMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `hobby` (
  `hobby_seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `hobby` VARCHAR(45) NULL,
  `infMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`hobby_seq`),
  INDEX `fk_hobby_infMember1_idx` (`infMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_hobby_infMember1`
    FOREIGN KEY (`infMember_seq`)
    REFERENCES `infMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `national` (
  `national_seq` INT NOT NULL,
  `nationalCd` TINYINT NULL,
  `infMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`national_seq`),
  INDEX `fk_national_infMember1_idx` (`infMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_national_infMember1`
    FOREIGN KEY (`infMember_seq`)
    REFERENCES `infMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
insert into infMember (name, id, password, passwordModDate, genderCd, birthday, home_tel, fax_tel, password_an, introduction, mobile_marketingCd, email_marketingCd, PIVPCd, personal_informationCd, password_qCd, job, recommender, wedding_aniversary,child) values ('김도현', 'kdh', '15665', '2018-05-18 20:26:45', '1', '1996-04-24', '0216556', '02128567', '166698', 'my', '2', '1', '1', '2', '1', '치킨집사장', '김동현', '2022-07-25', '1');
insert into infMember (name, id, password, passwordModDate, genderCd, birthday, home_tel, fax_tel, password_an, introduction, mobile_marketingCd, email_marketingCd, PIVPCd, personal_informationCd, password_qCd, job, recommender, wedding_aniversary,child) values ('김지현', 'kjh', '155465', '2011-06-21 17:15:54', '1', '1980-01-13', '025522', '0212221', '166554', 'name', '2', '1', '1', '2', '1', '중국집사장', '김동현', '2021-06-15', '1');

select * from infMember;