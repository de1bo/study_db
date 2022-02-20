INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`DelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

select * from infrCodeGroup;
where 1=1
and ifcgDelNy = 0;

update infrCodeGroup
set ifcgDelNy = 1
where ifcgSeq > 10;


INSERT INTO `nct`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`infrCodeGroup_ifcgSeq`)
VALUES
(
'내가 나온 초등학교는?',
1,
2,
0,
now(),
now(),
now(),
now(),
14);

INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3Char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnsDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
"미국",
"US",
"USA",
1,
2,
0,
now(),
now(),
now(),
now()
);

select * from infrnationality;
desc infrNationality;

select * from infrCode;

select
a.ifcgSeq
,a.ifcgName
,b.ifcgSeq
,b.ifcdName
,b.ifcdOrder
,b.ifcdUseNy
,b.ifcdDelNy
from infrCodeGroup as a
left join infrCode b on b.infrCodeGroup_ifcgSeq = a.ifcgSeq
order by a.ifcgSeq asc, b.ifcdOrder desc;


-- update infrcode set ifcdName ="10년" where ifcgSeq =10 ;

INSERT INTO `nct`.`intrmember`
(
`ifmmAdminNy`,
`ifmmName`,
`ifmmId`,
`ifmmPassword`,
`ifmmPwdModDate`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmMarriageCd`,
`ifmmMarriageDate`,
`ifmmChildrenNum`,
`ifmmFavoriteColor`,
`ifmmRecommenderSeq`,
`ifmmEmailConsentNy`,
`ifmmsmsConsentNy`,
`ifmmPushConsentNy`,
`DelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
2,
'김지현',
'dfgfdg',
44566,
now(),
2,
now(),
1,
1,
now(),
1,
'blue',
1,
1,
1,
1,
0,
now(),
now(),
now(),
now());

select * from intrmember;

update intrmember set ifmmAdminNy = 0 where Seq = 3;

select
a.ifmmSeq
,a.ifmmName
,a.ifmmId
--
,b.ifmaTitle
,b.ifmaAddress1
,b.ifmaAddress2
from
	intrmember a
    left join infrMemberAddress b on b. ifmaDelNy = 1 and b.ifmmSeq = a.ifmmSeq;
   --  left join infrMemberAddressOnline 
-- useNy는 더이상 사용되지 않을때 사용하는것 보존기간 10년이 있었는데 10년을 삭제할때 useny로 리스트에는 보이지 않지만 존재는 한다는 의미 더미 데이터 같은느낌
INSERT INTO `nct`.`infmemberjoinqna`
(
`ifjqQuestionCd`,
`ifjqAnswer`,
`ifnsDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`Seq`)
VALUES
(
3,
'집',
0,
now(),
now(),
now(),
now(),
1);

select * from infrMemberAddress;

INSERT INTO `nct`.`infrmemberhobby`
(
`ifnhHobbyCd`,
`ifnhUseNy`,
`ifmhOrder`,
`ifmhDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`Seq`)
VALUES
(
3,
1,
3,
0,
now(),
now(),
now(),
now(),
1);

INSERT INTO `nct`.`infrmemberaddress`
(
`ifmpDefaulyNy`,
`ifmpTypeCd`,
`ifmpTitle`,
`ifmpAddress1`,
`ifmpAddress2`,
`ifnsDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`Seq`)
VALUES
(
0,
1,
'회사',
'서울',
'강서구',
2,
now(),
now(),
now(),
now(),
1);

select * from infrMemberAddressOnline;

INSERT INTO `nct`.`infrmemberemail`
(
`ifmeTypeCd`,
`ifmeEailFull`,
`ifmeEmailAccount`,
`ifmeEmailDomain`,
`ifmeEmailDomainCd`,
`ifmeDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`Seq`)
VALUES
(
2,
'qwer9876@naver.com',
'qwer9876',
'@naver.com',
1,
1,
now(),
now(),
now(),
now(),
1);


INSERT INTO `nct`.`infrmemberphone`
(
`ifmpDelNy`,
`ifmpTypeCd`,
`ifmpDeviceCd`,
`ifmpTelecomCd`,
`ifmpNumber`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`Seq`)
VALUES
(
0,
2,
2,
2,
12345678,
now(),
now(),
now(),
now(),
1);

INSERT INTO `nct`.`infrmemberaddressonline`
(
`ifaoTypeCd`,
`ifaoDefaulyNy`,
`ifaoSnsTypeCd`,
`ifaoUrl`,
`ifaoTitle`,
`ifnsDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`Seq`)
VALUES
(
2,
0,
2,
'1234@instagram',
'인스타',
0,
now(),
now(),
now(),
now(),
1);

select
a.ifcgSeq
,a.ifcgName
,b.ifcgSeq
,b.ifcdName
, b.ifcdOrder
,b.ifcdUseNy
, b.ifcdDelNy
from infrCodeGroup a
	left join infrCode b on b.infrCodeGroup_ifcgSeq = a.ifcgSeq
where 1=1
	and a.DelNy = 0
    and a.ifcgUseNy = 1
    and b.ifcdDelNy = 0
    and b.ifcdUseNy = 1
 --   and a.ifcgSeq = 3
order by
	a.ifcgSeq asc
    , b.ifcdOrder desc;
    
    use nct;

select * from infrCodeGroup;
select * from infrCode;

select
	a.Seq
	, a.ifmmAdminNy
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmAdminNy) as AdminName
    , a.ifmmDormancyNy
    , a.ifmmName
    , a.ifmmId
    , a.ifmmgenderCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmgenderCd) as ifmmgenderName
    , a.ifmmDob
    , b.ifmaTypeCd
    , (select ifcdName from infrCode where ifcdSeq = b.ifmaTypeCd) as ifmaTypeName
    , b.ifmaTitle
    , b.ifmaAddress1
    , b.ifmaAddress2
    , b.ifmaZipCode
    , c.ifaoTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = c.ifaoTypeCd) as ifaoTypeName
    , c.ifaoSnsTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = c.ifaoSnsTypeCd) as ifaoSnsTypeName
    , c.ifaoTitle
    , c.ifaoUrl
    ,(select ifcdName from infrCode where ifcdSeq = d.ifmeTypeCd) as ifmeTypeName
    , d.ifmeEmailFull
    , e.ifjqQuestionCd
    ,(select ifcdName from infrCode where ifcdSeq = e.ifjqQuestionCd) as ifjqQuestionName
    , e.ifjqAnswer
    , f.ifmnSeq
    , g.ifnaName
    ,h.ifmpTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = h.ifmpTypeCd) as ifmpTypeName
    , h.ifmpDeviceCd
    ,(select ifcdName from infrCode where ifcdSeq = h.ifmpDeviceCd) as ifmpDeviceName
    , h.ifmpTelecomCd
    , (select ifcdName from infrCode where ifcdSeq = h.ifmpTelecomCd) as ifmpTelecomName
    ,h.ifmpNumber
    , concat(substring(h.ifmpNumber,1,3),"-",substring(h.ifmpNumber,4,4),"-",substring(h.ifmpNumber,7,4)) as ifmpTelecomNameWithDash
    , ifnull(c.ifaoSnsTypeCd,"-") as ifaoSnsTypeCdNullCheck
from
	intrMember a
    left join infrMemberAddress b on b.ifmaDelNy = 0 and b.ifmaDefaultNy = 1 and b.Seq = a.Seq
    left join infrMemberAddressOnline c on c.ifaoDelNy = 0 and c.ifaoDefaultNy = 1 and c.Seq = a.Seq
    left join infrMemberEmail d on d.ifmeDelNy = 0 and d.ifmeDefaultNy =1 and d.Seq = a.Seq
    left join infmemberjoinqna e on e.ifjqDelNy = 0 and e.Seq = a.Seq
    left join infrMemberNationality f on f.ifmnDelNy = 0 and f.ifmnDefaultNy = 1 and f.Seq = a.Seq
    left join infrNationality g on g.ifnaDelNy = 0 and g.ifnaSeq = f.ifmnSeq
    left join infrMemberPhone h on h.ifmpDelNy = 0 and h.ifmpDefaultNy = 1 and h.Seq = a.Seq
where 1=1
	and a.DelNy = 0
    ;
    
    
use nct;
