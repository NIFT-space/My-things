


 select REPLICATE('0',3-LEN(bb.InstID))+ CAST(bb.InstID AS varchar),inst.InstName,REPLICATE('0',4-LEN(bb.branchid))+CAST(bb.branchid AS varchar) as branchcode,
branch_name,ct.CityName from bankbranch bb , City ct,Institution inst
where 
bb.isopen=1 and bb.InstID!=999 and bb.InstID=70 and
bb.InstID=inst.InstID and bb.cityid=ct.CityID and REPLICATE('0',4-LEN(bb.branchid))+CAST(bb.branchid AS varchar) 
not in
(select distinct REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) as InstCode, REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) as BranchCode,
email1+'@'+domain1 as Email1,email2+'@'+domain2 as Email2, ct.CityName  from bankemail bk, City ct
where BankCode=070
and bk.CityID=ct.CityID

--(select distinct REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar)
-- from bankemail bk ,bankbranch bb
--where REPLICATE('0',3-LEN(bb.InstID))+ CAST(bb.InstID AS varchar)+'-'+REPLICATE('0',4-LEN(bb.branchid))+CAST(bb.branchid AS varchar) 
--= REPLICATE('0',3-LEN(bk.BankCode))+ CAST(bk.BankCode AS varchar)+'-'+REPLICATE('0',4-LEN(bk.BranchCode))+CAST(bk.BranchCode AS varchar)
-- and bb.isopen=1 and bb.InstID=70)

--(select distinct REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar)+'-'+ REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar)
-- from bankemail bk ,bankbranch bb
--where REPLICATE('0',3-LEN(bb.InstID))+ CAST(bb.InstID AS varchar)+'-'+REPLICATE('0',4-LEN(bb.branchid))+CAST(bb.branchid AS varchar) 
--= REPLICATE('0',3-LEN(bk.BankCode))+ CAST(bk.BankCode AS varchar)+'-'+REPLICATE('0',4-LEN(bk.BranchCode))+CAST(bk.BranchCode AS varchar)
-- --and domain1 not like '%nift%' and domain2 not like '%nift%' 
-- and bb.isopen=1 and bb.InstID=70)
 --and bb.Citycode=70)
 --and citycode = 70
 order by bb.InstID asc,bb.branchid asc

 select * from bankbranch where instid=70 --and branchid=304
 and isopen=1   20,857,  1469....distict 1117
 
 total branches = 1468  --- 1469
 added branches = 337
 in bankemail = 427 --430   distinct is 341----  382
 select distinct BankCode , BranchCode from BankEmail where BankCode=70 >>382 and BranchCode=0304
  select BankCode , BranchCode from BankEmail where BankCode=70 >>430

 996
472
 368 emails
995 383 new 11-10-2022
  select distinct
 REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) as InstCode,InstName, REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) as BranchCode,
 bb.Branch_name,email1+'@'+domain1 as Email1,email2+'@'+domain2 as Email2 , ct.CityName  
 from bankemail bk ,bankbranch bb, City ct
where 
REPLICATE('0',3-LEN(bb.InstID))+ CAST(bb.InstID AS varchar)+'-'+REPLICATE('0',4-LEN(bb.branchid))+CAST(bb.branchid AS varchar) 
= REPLICATE('0',3-LEN(bk.BankCode))+ CAST(bk.BankCode AS varchar)+'-'+REPLICATE('0',4-LEN(bk.BranchCode))+CAST(bk.BranchCode AS varchar)
--REPLICATE('0',3-LEN(bk.BankCode))+ CAST(bk.BankCode AS varchar) = REPLICATE('0',3-LEN(bb.InstID))+ CAST(bb.InstID AS varchar)
--and REPLICATE('0',4-LEN(bk.BranchCode))+CAST(bk.BranchCode AS varchar)=REPLICATE('0',4-LEN(bb.branchid))+CAST(bb.branchid AS varchar) 
--and domain1 not like '%nift%' and domain2 not like '%nift%'
 --and bb.cityid=bk.CityID --and bb.Citycode=70 
 and bb.isopen=1 and bb.InstID=70 and bk.CityID=bb.cityid and bk.CityID=ct.CityID
 order by InstCode asc,BranchCode asc,Email1 asc

 select distinct REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) as InstCode, REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) as BranchCode,
email1+'@'+domain1 as Email1,email2+'@'+domain2 as Email2, ct.CityName  from bankemail bk, City ct
where BankCode=070 --and BranchCode=0304 
and bk.CityID=ct.CityID
order by InstCode asc,BranchCode asc,Email1 asc

select * from Role_Page where roleid=2003

insert into role_page
select '2003','9',null,getdate()

select * from Page

Select p.URL as URL from users a join User_Role b on b.UserID = a.UserID join Role_Page c on c.RoleID = b.RoleID join Page p on p.PageID = c.PageID
where a.UserID = '2' and lower(ltrim(rtrim(p.title))) like 'Reports%'
select * from User_Role