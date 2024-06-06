

select * from bankemail2 bk2,AllBranches_list abl where bk2.CityID=70
and bk2.BankCode=abl.Bank_code 
and bk2.BranchCode= abl.branch_code
and abl.Citycode=70

select * from bankemail2 where BankCode=10 and BranchCode in (90,91,95,96,101,132,133,517)
010	0090
010	0091
010	0095
010	0096
010	0101
010	0132
010	0133
010	0517

select 
 REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) as InstCode, REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) as BranchCode,bb.Branch_name 
 ,email1+'@'+domain1 as Email1, ct.CityName from bankemail2 ,AllBranches_list bb,City ct
where 
REPLICATE('0',3-LEN(bb.Bank_code))+ CAST(bb.Bank_code AS varchar)=bankemail2.BankCode 
and bankemail2.BranchCode=REPLICATE('0',4-LEN(bb.Branch_Code))+CAST(bb.Branch_Code AS varchar) 
and domain1 not like '%nift%' and domain2 not like '%nift%'
and bankemail2.CityID=ct.CityID and bb.Citycode=bankemail2.CityID and bb.Citycode=70 
 order by BranchCode desc

 select distinct BankCode,BranchCode from bankemail2 where CityID=70
 and REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) +'-'+ REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) not in
( select REPLICATE('0',3-LEN(Bank_Code))+ CAST(Bank_Code AS varchar)+'-'+REPLICATE('0',4-LEN(branch_code))+CAST(branch_code AS varchar) from AllBranches_list where Citycode=70 )

1874 -- 1910
select * from bankemail2 where cityid=70
and REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) +'-'+ REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) in
(select REPLICATE('0',3-LEN(Bank_Code))+ CAST(Bank_Code AS varchar)+'-'+REPLICATE('0',4-LEN(branch_code))+CAST(branch_code AS varchar) from AllBranches_list where Citycode=70 and status=1
)540

 select * from bankemail2 bk2,AllBranches_list bb where
 bk2.CityID=70 and bb.Citycode=70 and bk2.BankCode=bb.Bank_code and bk2.BranchCode=bb.branch_code


 select * from bankemail2 where email1 like '%tahira.najeeb%'

--insert into bankemail2
select '99999','',bwl.username1,bwl.email1,
bwl.domain1,bwl.mobile2
,bwl.phone2
, bwl.username2 , bwl.email2, bwl.domain2
,bwl.mobile2
,bwl.phone2,
bwl.bankcode,bwl.branchcode,bwl.cityid,getdate(),0
from bankemail2mul bwl, bankemail2 bk2
where bwl.email1 = bk2.Email1
and bk2.CityID=70
(select email1 from bankemail2 where CityID=70)

insert into bankemail2
select '99999','',username1,email1,
domain1,mobile2
,phone2
, username2 , email2, domain2
,mobile2
,phone2,
bankcode,branchcode,'70' as cityid,getdate(),0
from bankemail2mul
where REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) +'-'+REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar)
not in
(select REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) +'-'+REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) from bankemail2  where CityID=70)


select mul.email1,bk2.Email1
,count(bk2.BranchCode)
,mul.bankcode,bk2.BankCode,mul.branchcode,bk2.BranchCode from bankemail2mul mul,bankemail2 bk2
where --mul.email1 = bk2.Email1 and 
bk2.CityID=70 and bk2.Email1 not like '%tba%' 
and REPLICATE('0',3-LEN(mul.BankCode))+ CAST(mul.BankCode AS varchar) +'-'+REPLICATE('0',4-LEN(mul.BranchCode))+CAST(mul.BranchCode AS varchar) =
REPLICATE('0',3-LEN(bk2.BankCode))+ CAST(bk2.BankCode AS varchar) +'-'+REPLICATE('0',4-LEN(bk2.BranchCode))+CAST(bk2.BranchCode AS varchar)
group by mul.email1,bk2.Email1,mul.bankcode,bk2.BankCode,mul.branchcode,bk2.BranchCode
--having count(bk2.Email1) =1 
order by bk2.BankCode asc

-------------------