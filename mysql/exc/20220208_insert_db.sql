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
from infrCodeGroup as a
left join infrCode b on b.infrCodeGroup_ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder;


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
2,
'서울',
0,
now(),
now(),
now(),
now(),
1);

select * from infmemberjoinqna;

