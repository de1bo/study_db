
use nct;
select 
a.ifatSeq,
(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifatName
, a.ifmuSeq
, (select ifmuName from infrMenu where ifmuSeq = a.ifmuSeq) as ifmuName
, a.ifauRolCd
, (select ifcdName from infrCode where ifcdSeq = a.ifauRolCd) as ifauRoleName
from infauthmenu a
	where 1=1
		and a.ifatSeq = 1;
        
select 
a.ifatSeq,
(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifmuName12
, a.ifmuSeq
, (select ifmuName from infrMenu where ifmuSeq = a.ifmuSeq) as ifmuName12
, a.ifatSeq
, (select ifcdName from infrCode where ifcdSeq = a.ifauRolCd) as ifauRoleName12
from infauthmenu a
	where 1=1
		and a.ifatSeq = 1;