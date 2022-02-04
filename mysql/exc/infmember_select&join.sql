SELECT 
z.seq
,a.hp_address
,b.phone_num
,z.name
,z.id
,z.password
,z.passwordModDate
,z.genderCd
,z.birthday
,z.home_tel
,z.fax_tel
,z.password_an
,z.introduction
,z.mobile_marketingCd
,z.email_marketingCd
,z.PIVPCd
,z.personal_informationCd
,z.password_qCd
,z.job
,z.recommender
,z.wedding_aniversary
,z.child
,(select ifcdname from infcode where ifcdOrder = genderCd and ifcgseq = 1) as 성별
,(select ifcdname from infcode where ifcdOrder = mobile_marketingCd and ifcgseq = 2) as 모바일마케팅
,(select ifcdname from infcode where ifcdOrder = email_marketingCd and ifcgseq = 3) as 이메일마케팅
,(select ifcdname from infcode where ifcdOrder = personal_informationCd and ifcgseq = 4) as 개인정보
,(select ifcdname from infcode where ifcdOrder = password_qCd and ifcgseq = 5) as 비밀번호_문제
FROM
 infmember as z
left join homepage as a on a.infMember_seq = z.seq and a.defaultNy=1
left join phone as b on b.infMember_seq = z.seq and b.defaultNy=1;


 -- homepage as a
-- , phone as b
-- , SNS as c
-- , email as d
-- , address as e
-- , hobby as f
-- left join infmember as z on z.seq = a.defaultNy


select
a.seq
,a. name
,a.id
,b.home_seq
,b.hp_address
from infmember as a
left join homepage as b on b.home_seq = a.seq;


   select
   a.no
   ,a.name
   ,a.publisher_cd
   ,b.no
   ,b.name
   from book3 as a
	-- inner join publisher as b on b.no = a.publisher_cd;
	 left join publisher as b on b.no = a.publisher_cd;