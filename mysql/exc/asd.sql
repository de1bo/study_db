select distinct
z.seq
,(select ifcdName from infrcode where ifcdOrder = ifmmAdminCd and infrCodeGroup_ifcgSeq = 1) as Admistrator
,(select ifcdName from infrcode where ifcdOrder = ifmmRegistTypeCd and infrCodeGroup_ifcgSeq = 2) as ifmmRegistTypeCd
,z.ifmmImage
,z.ifmmName
,z.ifmmId
,z.ifmmPassword
,z.ifmmPwdModDate
,(select ifcdName from infrcode where ifcdOrder = ifmmGenderCd and infrCodeGroup_ifcgSeq = 3) as gender
,a.ifmeEmailAccount
,a.ifmeEmailDomain
,b.imadAddress1
,b.imadAddress2
,c.ifmpNumber
,c.ifmpHomeTel
,d.mblcMapAddress1
,d.mblcMapAddress2
,z.ifmmBirthday
,z.ifmmRecommendSeq
,(select ifcdName from infrcode where ifcdOrder = ifmmEmailConsentNy and infrCodeGroup_ifcgSeq = 12) as EmailConsent
,(select ifcdName from infrcode where ifcdOrder = ifmmPersonerinfoCd and infrCodeGroup_ifcgSeq = 4) as Personerinfo
,z.DelNy
FROM
infrmember as z
left join infrMemberEmail as a on a.infrMember_Seq = z.seq and a.ifmeDelNy = 0
left join infrMemberAddress as b on b.infrMember_Seq = z.seq and b.ifmaDelNy = 0
left join infrMemberPhone as c on c.infrMember_Seq = z.seq and c.ifmpDelNy = 0
left join MemberLocation as d on d.infrMember_Seq = z.seq and d.mblcDefaultNy = 1;



use eatja;