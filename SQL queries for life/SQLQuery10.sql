 222222

 select * from Return_Reasons

 select * from UploadICLData
 where RecDateTime between '2023-06-15 00:00:00.000' and '2023-06-15 23:00:00.000'
 order by fileid desc

select count(email1),email1 from bankemail
group by Email1
having count(email1)>1
0642)

update bankemail set CityID=50 where regid in 
(select regid from bankemail where cityid = 73)

		insert into bankemail select
'99999','','NAZMA.SIDDIQUI',	'NAZMA.SIDDIQUI',	'abl.com',	'',	'',	
'tba',	'tba',	'abl.com',
'',	'',	'014',	'0425',	'010' ,GETDATE(), 0

		select * from bankbranch where InstID=14 and branchid =425

		select * from bankemail order by Updatedate desc

select * from bankemail where --CityID in (81,82,83,84,85,86,87,88,89,71,72,73) 
	BranchCode=548     and 		bankcode=14
		email1 like '%manager0033%'
	--and cityid=81)
	 email2 like '%Nashman.Hanif%'
	--email2 like '%khalil.abbasi%' --regid= 4
	--delete from bankemail where regid =  1117
	d--elete from bankemail where regid in
	update bankemail set --domain1='mobilinkbank.com',domain2='mobilinkbank.com',
--UserName1='jahangir.ullah',email1='jahangir.ullah',Mobile1='',phone1=''
email2='muhammad.shoaib4d4d6',username2='muhammad.shoaib4d4d6' ,Mobile2='',Phone2='' --, domain2='silkbank.com.pk'
--branchcode='226'  --, mobile2='' --cityid=70
--CityID=70
where regid= 75

select * from City
60 70 80 
select * from emaillog where --msg like '%Branch Code 877%' and 
msg like '%Bank Code 014 Branch Code 221%'
and msg like '%CycleNo 2%'
and pdate between '2023-06-07 00:00:00.000' and '2023-06-08 23:59:57.000'
order by pdate desc

	select * from emaillog where msg like '%Usman.Asghar%' --and pdate between '2023-03-02 00:00:36.000' and '2023-03-02 23:43:36.000'
	order by pdate desc

	select * from emaillog where msg like '%Saima.Ejaz%' --and pdate between '2023-03-02 00:00:36.000' and '2023-03-02 23:43:36.000'
	order by pdate desc

	select * from report
	where InstID=14 and BranchID=5154
	order by repid desc

	select * from bankbranch where InstID=85 and branch_name like '%kacha%'

	select * from Institution where InstName like '%soner%'
	select * from AllBranches_list where bank_code=85 and Citycode=80
	branch_code=0296 --and isopen=1 and branch_name like '%gulberg%' branchid=4654

	----------------EMAIL NBP---------------
	------------------------------------------
	insert into BankEmailNBP
select
'99999','','shahzad.yaqoob',	'shahzad.yaqoob',	'nbp.com.pk',	'',	'',	
'tba',	'tba',	'nbp.com.pk',
'',	'',	'70',	'0',	'60' ,GETDATE(), 0

select * from City.

	select * from BankEmailNBP where 
	
	Email1 like '%Khurram.rashid%'
	update BankEmailNBP
	set UserName1='aminshahid', Email1='aminshahid', Mobile1='', Phone1=''
	where regid in  (967,969,970)

	delete from BankEmailNBP where regid=968

	select * from City
	-----------------------------------------------

-------------BANK DOMAIN----------
---------------------------------
select * from BankDomain where  BankCode=66

update bankdomain set bankcode = '999'
where domid in (109,110,114,115)

insert into bankdomain 
select '107', 'mobilinkbank.com'
-------------------------------------
update bankemail set username1='sheraz.shafiq' , email1 = 'sheraz.shafiq'
 ,UserName2='Amna.riaz2', Email2='Amna.riaz2' 
where RegID=5294
select * from BankEmail where BankCode=54 and BranchCode=176

--delete from bankemail where regid =   7866
@
insert into bankemail
select
'99999','','5849',	'5849',	'bankalfalah.com',	'',	'',	
'tba',	'tba',	'bankalfalah.com',
'',	'',	'053',	'6239',	'050' ,GETDATE(), 0

select count(cityid),cityid from Branch
where cityid between 10 and 40
group by cityid

-------------INSERT NEW SHEET IN BANKEMAIL2-----------

--delete from
--select * from 
bankemailpesh 
where 
email1 in (select email1 from bankemail)
 email2 in (select email2 from bankemail)

--insert into bankemail
select '99999', '',User_Name1,email1,domain1,mobile1,phone1,User_Name2,email2,domain2
,mobile2,phone2,bank_code,branch_code,city_code,getdate(),0 from bankemailpesh


update bankemail73 set phone1='' , phone2='' where phone1='NO PTCL'

update bankemail108 set cityid=40 where cityid in (73)
--------------------------------------------------

-------------TAKE BACKUP OF BANKEMAIL2-----------12,396
SELECT '99999' as Userid, '' as UserPWD,UserName1,email1,domain1,mobile1,phone1,UserName2,Email2,Domain2
,mobile2,phone2,bankcode,branchcode,CityID,GETDATE() as Updatedate,0 as IsUpdate from BankEmail
INTO bankemail_backup02052023
FROM BankEmail

select * from BankEmail where cityid = 73

update bankemail set cityid='70' where regid= 13269

insert into BankEmail
select '99999', '',UserName1,email1,domain1,mobile1,phone1,UserName2,Email2,Domain2
,mobile2,phone2,bankcode,branchcode,CityID,GETDATE(),0 from bankemailabl
--------------------------------------------------
select * from BankEmail_backup07022023
--------------BACKUP QUERY BANKEMAIL2-------------	

select * from BankEmail_05092022
where Email1+'@'+Domain1 not in 
(select Email1+'@'+Domain1 from BankEmail)

select * from BankEmail_05092022
where bankcode+'_'+branchcode
not in
(select BankCode+'_'+BranchCode from BankEmail)

select * from BankEmail_05092022 where updatedate > '2022-08-01 00:00:00'

(select bk1.Email1+'@'+bk1.Domain1 from bankemail_backup01072022 bk1, bankemail2 bk2
where bk1.Email1+'@'+bk1.Domain1 = bk2.email1+'@'+bk2.Domain1
and bk1.Email2+'@'+bk1.Domain2 = bk2.email2+'@'+bk2.Domain2)

SELECT bk2.Email1,bk2.Domain1, COUNT(bk2.email1)
FROM bankemail2 bk2
GROUP BY Email1,Domain1
HAVING COUNT(Email1) > 1

insert into bankemail
select UserID, UserPWD,UserName1,email1,domain1,mobile1,phone1,UserName2,email2,domain2
,mobile2,phone2,bankcode,branchcode,CityID,getdate(),0 from bankemail2
group by UserID, UserPWD,UserName1,email1,domain1,mobile1,phone1,UserName2,email2,domain2
,mobile2,phone2,bankcode,branchcode,CityID
having COUNT( DISTINCT email1) = 1
(select  COUNT( DISTINCT email1)  from bankemail2 group by regid,email1 having COUNT( DISTINCT email1) = 1)

SELECT email1, COUNT(*) FROM bankemail2 GROUP BY email1 ORDER BY 2 DESC

SELECT a.*, b.CityName 
 FROM BankEmail2 a, City b
 Where a.CityID = b.CityID
 Order by UpdateDate Desc


insert into bankemail2
select '99999','',user_name1,REPLACE(SUBSTRING(email1,1,CHARINDEX('@',email1)),'@','') as email1,
RIGHT(email1,charindex('@',REVERSE(email1))-1) as domain1
,case mobile1 when '-' then '' else mobile1 end as mobile1
,case phone1 when '-' then '' else phone1 end as phone1
, user_name2 ,
case email2 when 'TBA' then 'TBA' else REPLACE(SUBSTRING(email2,1,CHARINDEX('@',email2)),'@','') end as email2
,RIGHT(email1,charindex('@',REVERSE(email1))-1) as domain1
,case mobile2 when '-' then '' else mobile2 end as mobile2
,case phone2 when '-' then '' else phone2 end as phone2,
bank_code,branch_code,city_name,getdate(),0
from bankemailisb2 

------------------------------------------------------------------

--------- BANK HELP UPLOAD---------
 select * from BankHelp
 order by cirid desc

update bankhelp set RepType='.zip', RepName='Converter Utility Supporting Application.zip', RepDesc='IBCS-FileConverterUtility'  where CirID= 88

update bankhelp set bVisible=0  where CirID=77
-- update bankhelp set bSpecial=0
-- where CirID not in (75,73)
--------------------------------------

----------REPORTS WORKING-------------
-----------------------------------


select * from report 
where 
--repname like '%BRTS%'
reppath like '%\%'
order by repid desc


update report set --instid=054 , 
reppath='Reports\20220818\81965\BKTS08150096081822124812.PDF' where repid in (626457),)


Select a.bUpdated,a.repid,a.repname,a.repdesc,bDownload,  convert(varchar(20), RepLoadTime,105) Fileupdatedate, convert(varchar(10), 
CAST(RepLoadTime AS TIME), 0) Fileupdatetime,  a.repsize,a.reptype,  convert(varchar(20),reploadtime,120) reploadtime,convert(varchar(20),  
repmodified,105) repmodified ,a.tocitycode,cc.cityname cityname,convert(varchar(20),  repcreationdate,105) repcreationdate,a.reppath,
c.InstName InstName   From Report a inner join city cc on a.tocitycode=cc.cityid inner join reporttype b on a.RTID=b.RTID   
and lower(RTName) like 'bkts%' inner join institution c   on a.InstID=c.InstID and a.instID in  ( 54 )  and a.tocitycode in 
( 10,20,30,40,50,60,70,71,72,73,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96 )  and a.bVisible=1 and a.cycle_no=5 and 
a.repcreationdate between convert(datetime,'2022-08-26 00:00:00') and convert(datetime,'2022-08-26 23:59:00') and bspecial=0  
and a.instid = 54 order by InstName asc,cityname,a.reploadtime desc

---------FILE UPLOAD-------
-------------------------0----------
select * from UploadICLData 
where recdatetime between '2022-12-19 00:00:53.790' and '2022-12-19 23:00:53.790' 
order by RecDateTime desc and bankid=86
-----------------------------------------------

----------AVAILABLE USERS ON IBCS-------------
---------------------------------------------
select ul.*, inst.InstName from UserLog ul
join Institution inst on inst.InstID = ul.UserName
where TimeIn between '2022-11-29 00:00:00.000' and  '2022-11-28 23:59:45.323'
order by timein desc


select * from users where EmailAddress like '%abdul%' and InstID=107

-----------SEARCH LOGSS------------------
-----------------------------------------
-----------------------------------------
select * from NIFTEmail
select * from tickets order by ticket

select * from vCycleEndDiff where BankCode=54

select * from IBCSLogs  
where Updatedatetime between '2023-06-15 00:00:00.000' and '2023-06-15 23:59:00.000'
order by logID desc


exec sp_updatestats

select * from vHostNIBC

-------------------------------------------
----------USER WORKING-----------------------
update users set TelNo3='21-02-2024' where userid=48862

'MIIFnjCCBIagAwIBAgIIOH+Dt7r+XtUwDQYJKoZIhvcNAQELBQAwgY0xEzARBgNV  BAMMCk5JRlRFQ0ggQ0ExNDAyBgNVBAsMKzIwMTQgTklGVCBQdnQgTHRkLiAtIEZv  ciBhdXRob3JpemUgdXNlIG9ubHkxGzAZBgNVBAsMEk5JRlQgVHJ1c3QgTmV0d29y  azEWMBQGA1UECgwNTklGVCBQdnQgTHRkLjELMAkGA1UEBhMCUEswHhcNMjIwMjIx  MTEyMDUyWhcNMjMwMjIxMTEyMDUyWjCCARIxIDAeBgkqhkiG9w0BCQEWEW5pZnQu  Y29wc0BuaWZ0LnBrMRIwEAYDVQQDDAlOaWZ0IENvcHMxEzARBgNVBAsMCk9wZXJh  dGlvbnMxNTAzBgNVBAsMLFRlcm1zIG9mIHVzZSBhdCB3d3cubmlmdGV0cnVzdC5j  b20vcnBhIChjKTE0MRkwFwYDVQQLDBBCcmFuY2ggSUQgLSAwOTk5MRYwFAYDVQQL  DA1CYW5rIElEIC0gOTk5MUEwPwYDVQQKDDhOYXRpb25hbCBJbnN0aXR1dGlvbmFs  IEZhY2lsaXRhdGlvbiBUZWNobm9sb2dpZXMgUHZ0IEx0ZDELMAkGA1UEBwwCMTAx  CzAJBgNVBAYTAnBrMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuCXB  AgVejhRbD4Aa8YWLTj31/+1Aq79RMOMlsOP0LXdRN39iLm/dPqlPiqdsoevP+IM6  EWP8cKPEq6oFZKGB+HQybDWvWxVg78KMsP9BZL1nlyM7SRxsBI4y/nA/Hv/xlw3S  85eRur8BoES7Nao5TbZrh+6FU+5afKV4M2XHlKFjbWVV7Zk5g89d3OENAnQpjcFT  OOQEl5HoqPhcXlGmB2NBQ193iCwotxdy/2VILdQ9x6ZEIAQrg3kqZ2nrx6Imd0CP  /vJUxlEupDtB3p7ELCptQ0iGdj+ykg42UzvCyJSl5tiVPhylPyJJ5qLiXebgAprj  L+nmcr2Ly1EhsuWE2wIDAQABo4IBeDCCAXQwHQYDVR0OBBYEFL2RzqE5zUA59sZ9  zkn8So/W1IQmMAwGA1UdEwEB/wQCMAAwHwYDVR0jBBgwFoAUylq6Trh8Tl/knrCQ  3RXMiLVk2iIwgeoGA1UdHwSB4jCB3zCB3KCB2aCB1oaB02h0dHA6Ly9vbnNpdGUt  cm9vdC5uaWZ0ZXRydXN0LmNvbS9lamJjYS9wdWJsaWN3ZWIvd2ViZGlzdC9jZXJ0  ZGlzdD9jbWQ9Y3JsJmlzc3Vlcj1DTj1OSUZURUNIJTIwQ0EsT1U9MjAxNCUyME5J  RlQlMjBQdnQlMjBMdGQuJTIwLSUyMEZvciUyMGF1dGhvcml6ZSUyMHVzZSUyMG9u  bHksT1U9TklGVCUyMFRydXN0JTIwTmV0d29yayxPPU5JRlQlMjBQdnQlMjBMdGQu  LEM9UEswDgYDVR0PAQH/BAQDAgXgMCcGA1UdJQQgMB4GCCsGAQUFBwMBBggrBgEF  BQcDAgYIKwYBBQUHAwQwDQYJKoZIhvcNAQELBQADggEBAHyJGvifUEXZVfNuvoim  PruTZ2bD20CMRk/T1HPODEwTP5UorYkUwJy7DrOFcbiHmi/0VxKOTJkXubu5A0Us  EBr7427tgPVQPMODp4qbTtyDVD+GqjGcDO6UWGxrK7Bwb395tNMpMln/e9cr9QF+  T8izvgx+aS106W8T/hYGkLLvH/O+uckHnOhrK1aKEDYVysinuIt2FUEH6Kvdz6Av  p2sJQFWExYk8wixFlSyzOioWrR6slntTwLSn+rb9+7tt7cAZQIN96nwNwOlis+U3  AXrpYKfufN/WQctlC3IGmf1IHCfKoCnGUO7taNh/L5SzSCgIBjY6ICu0se3UtvD+  u3g='

update users set Certificate=
'MIIFnjCCBIagAwIBAgIIUDj8/CPOwMswDQYJKoZIhvcNAQELBQAwgY0xEzARBgNV  BAMMCk5JRlRFQ0ggQ0ExNDAyBgNVBAsMKzIwMTQgTklGVCBQdnQgTHRkLiAtIEZv  ciBhdXRob3JpemUgdXNlIG9ubHkxGzAZBgNVBAsMEk5JRlQgVHJ1c3QgTmV0d29y  azEWMBQGA1UECgwNTklGVCBQdnQgTHRkLjELMAkGA1UEBhMCUEswHhcNMjMwMjIx  MTEyMjI1WhcNMjQwMjIxMTEyMjI1WjCCARIxIDAeBgkqhkiG9w0BCQEWEW5pZnQu  Y29wc0BuaWZ0LnBrMRIwEAYDVQQDDAlOaWZ0IENvcHMxEzARBgNVBAsMCk9wZXJh  dGlvbnMxNTAzBgNVBAsMLFRlcm1zIG9mIHVzZSBhdCB3d3cubmlmdGV0cnVzdC5j  b20vcnBhIChjKTE0MRkwFwYDVQQLDBBCcmFuY2ggSUQgLSAwOTk5MRYwFAYDVQQL  DA1CYW5rIElEIC0gOTk5MUEwPwYDVQQKDDhOYXRpb25hbCBJbnN0aXR1dGlvbmFs  IEZhY2lsaXRhdGlvbiBUZWNobm9sb2dpZXMgUHZ0IEx0ZDELMAkGA1UEBwwCMTAx  CzAJBgNVBAYTAnBrMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmptk  ePfASTkBwjN5pzS/Ko8hfp+8k6Bpk6PANiorcjZvtemuNSlAPQK5I5515uOrbu0N  O1bAdOr6F0MrmFA4Xoh/n27BulGAdUhZVXTlI3d7Whd9JyrcHqlUVPUrisriNSoK  4utscR29RMjGnv0A7lKGKp37GU0IMPayfxS2TbBFTnBkQtPsmy77tkqTve/dr8Lx  UqmSk3O6qd/As0Ja+q8CJ9ZeVdo3Tyq1gbGtMEkJARkab9Mo8wpWITOWPSu0m8hS  jcaDetqUpEyO2GsPzJe5gPPSd6MHj0nhVSAuGCblOmhermWCyMN0bzSMbgZ9Hv1h  pe3fste2ZOlannW1WwIDAQABo4IBeDCCAXQwHQYDVR0OBBYEFPTsU/3old5Bc8rO  Mj+ECTxP8DfSMAwGA1UdEwEB/wQCMAAwHwYDVR0jBBgwFoAUylq6Trh8Tl/knrCQ  3RXMiLVk2iIwgeoGA1UdHwSB4jCB3zCB3KCB2aCB1oaB02h0dHA6Ly9vbnNpdGUt  cm9vdC5uaWZ0ZXRydXN0LmNvbS9lamJjYS9wdWJsaWN3ZWIvd2ViZGlzdC9jZXJ0  ZGlzdD9jbWQ9Y3JsJmlzc3Vlcj1DTj1OSUZURUNIJTIwQ0EsT1U9MjAxNCUyME5J  RlQlMjBQdnQlMjBMdGQuJTIwLSUyMEZvciUyMGF1dGhvcml6ZSUyMHVzZSUyMG9u  bHksT1U9TklGVCUyMFRydXN0JTIwTmV0d29yayxPPU5JRlQlMjBQdnQlMjBMdGQu  LEM9UEswDgYDVR0PAQH/BAQDAgXgMCcGA1UdJQQgMB4GCCsGAQUFBwMBBggrBgEF  BQcDAgYIKwYBBQUHAwQwDQYJKoZIhvcNAQELBQADggEBAJ7wMA2e9kXvNWgoncRt  BrOVR+1zdLb9ZpAwBLUeN1UMWOhvbnzQRioDKCxRXuHgib0vGH2AbQ0kI7TCfqsN  ofUDLJgGAHoyRTV5Ofxe6t6+1Tm9kpgJLuxHev1tibuGPc8pIaQuQkjXxzRdhu0J  cq1UoB/JsxAPrDqiiVdOA8SpQkLSGLmprrMjsAcBQoHZgb4p22m/GcKNNr2YGzQi  OzKrx+hEp7syUDNmqUya2x45f4MqUEDdq4/Qy0FOz4o+IEQYVsn/tQdVIoVNXijG  KAj1S4DsLG4ALBZaYAjbvG85csk3/6Sr3X94UTyafhl5y0Z28nCzreezUJCGX8BI  HU4='
where userid=48862
select * from users where instid=999 and --BranchID=1
EmailAddress like '%yawer%'

select * from role_page where roleid=574

select * from page where title like '%intercity%'

insert into Role_Page
select '574','146',null,null,0,getdate()

select * from user_role where userid=4403
order by CreationDateTime desc

select * from User_Role where userid=15464

insert into User_Role
select '4403', '2312' , GETDATE()
6233
select * from users where InstID=54 and BranchID=7

select * from users order by userid desc
qasimali@bankalhabib.com
exec sp_updatestats
--------------------------------------------

--------HUB WORKING ---------------------------
----------------------------------------

select hubimgid,hubimgname,imgpath,imgsize,ImgLoadTime,a.instid,a.hubcode,c.instname,a.bDownload,
 case when InOutTag = 1 then 'Inward' when InOutTag = 2 then 'Outward' end as InOutTag,
 upper(b.hubname) hubname ,  Cast(cast(imgsize as bigint)/1024 as varchar(255)) + ' KB' fsize, 
 STUFF( '000', 3 - LEN(a.instid ) + 1, LEN( a.instid ),a.instid) instid ,
 convert(varchar(20), ImgLoadTime,105) Fileupdatedate, convert(varchar(10), CAST(ImgLoadTime AS TIME), 0) Fileupdatetime 
 from hubOECfile a,institution c, 
 (select distinct hubcode,hubname,instid from hub) b 
 where imgcreationdate between convert(datetime,'2021-05-21 08:48:55.150')
 and convert(datetime, '2022-11-15 23:59:00.000')
 and a.instid=54 and a.hubcode=73
 and cycle_no=5 and a.instid=c.instid and c.instid=b.instid and a.instid=b.instid and a.hubcode=b.hubcode

 select * from hubOECfile
 order by imgsize desc
 --------------------------------------------
 ---------------------------------------------

 --------------USER WORKING-----------------------
 ---------------------------------------------

select * from users where EmailAddress like '%zia%'

select * from user_role where userid=4017

	select * from Institution where InstName like '%bank%'

select * from role_page where roleid=574
insert into role_page
select '574','136',null,null,0,getdate()

select * from page where title like '%cycle%'

select * from UserLog
where timein between '2023-06-15 00:00:00.000' and '2023-06-15 23:00:00.000'
--and  loggedin =1
order by timein desc

select * from Role_City  group by RoleID,CityID having count(CityID) = 27

select inst.InstName,us.BranchID,ct.CityName,us.FirstName +' '+ us.LastName ,us.EmailAddress from users us join User_Role ur on ur.UserID=us.UserID
join Institution inst on inst.InstID = us.InstID
join City ct on ct.CityID= us.Locality
where ur.RoleID in
(select roleid from role_city 
where roleid not in (select ur.RoleID from users us join User_Role ur on ur.UserID=us.UserID
where us.InstID =999 )
group by roleid
having count(roleid) >26)
and us.IsActive=1 and us.InstID!=999 and us.EmailAddress not like '%nift%'
and us.Certificate!= ''
order by InstName asc

select * from users where EmailAddress='khalid.niaz@dibpak.com'

select roleid,CityID from Role_City rc1
group by rc1.RoleID,rc1.CityID
having count(roleid) = 22

766 roles
select roleid,cityid from Role_City rc where roleid in 
(select distinct ur.RoleID from users us join User_Role ur on ur.UserID=us.UserID
where us.IsActive=1 and us.InstID !=999 and us.IsBranchUser=1 )
order by roleid

select * from User_Role where userid=15583

select * from role

select * from Role_City where roleid=971

select * from Role_Inst_Branch  where roleid=2097

select * from Role_Image_Inst_Branch where roleid=2097

select * from users where EmailAddress like '%yawer%'

select * from Role_Page where RoleID=124 and PageID=134

insert into Role_Page 
select '124','134',null,null,'0',GETDATE()

select * from page where title like '%email%'

select * from AllBranches_list where branch_code=2256

--update ChkBkRequest set isReported=0 , reportdatetime = null
--where reqid in (
--select * from ChkBkRequest --where ReportDateTime between '2022-06-13 12:30:42.010' and '2022-06-13 12:30:42.010'
--order by ReqID desc

select * from UserLog
order by TimeIn desc

select * from role_city where roleid=1061

select distinct us.UserName,pg.title from Page pg, users us, Role_Page rp
where rp.PageID=pg.PageId
and --us.IsActive=1 and 
pg.pageid=124
124

 select * from users where 
 --EmailAddress like '%farooq%' and 
 InstID=88 and BranchID=300
 IsActive=1 and CertSerialNumber='6C67014011110303'

 select * from users
where CreationDateTime > '2022-05-24 00:00:00.000' and '2022-05-24 23:59:59.000'

select * from users where --InstID=61 and BranchID=148  
 --Certificate is null order by telno3 desc
EmailAddress = 'sohail.imran@askaribank.com.pk'
where TelNo3 > '19-05-2023'
order by
CreationDateTime desc


insert into role_page
select 75,	134	,''	,NULL	,0,	getdate()

select us.UserName,ro.Name,ct.CityName,bb.InstName as BankName,REPLICATE('0',4-LEN(bb.branchid))+ CAST(bb.branchid AS varchar)as BranchCode,
bb.branch_name as BranchName,pg.title as PageAssigned --, us.CreationDateTime,us.TelNo3 
from users us,user_role ur,Role_Page rp,page pg, City ct,bankbranch bb
,Role_City rc,role ro
where us.UserID=ur.UserID 
and ur.RoleID=rp.RoleID
and rp.PageID=pg.PageId
--and us.Locality = ct.CityID
and us.InstID=bb.InstID
and us.BranchID = bb.branchid
and ur.RoleID=rc.RoleID
and rc.CityID = ct.CityID
and ur.RoleID = ro.RoleID
and us.IsActive=1
and bb.isopen=1
and pg.pageid in (123,124)
and us.InstID != 999
order by us.UserName asc
-------------------------------------------
------------------------------------------


SELECT a.*, b.CityName  FROM BankEmail a, City b Where BankCode in ('083') and a.CityID = b.CityID Order by UpdateDate Desc

select * from bankemail where email1='muhammad.zulqarnain2'


select SUBSTRING(email1, PATINDEX('ab',email1),charindex('ab', email1)) from bankemailmultan

select  email1, RIGHT(email1,charindex('@',REVERSE(email1))-1) from bankemailmultan

select * from City

select * from Institution where InstName like '%mcb%'

select * from allbankcert order by Update_DateTime desc where Bank_Code=18 and Branch_Code=1 and subjectEmail='furrukh.kamran@jsbl.com'

----------------------------------------

select * from bankemail2 where cityid=40 and email1 not in 
(select email1 from bankemail2_backup where CityID=40)

select bk2.CityID,bkp.CityID from bankemail2 bk2, bankemail2_backup bkp where bk2.CityID=40

update bankemail2 set CityID=88 where 
RegID in
(select bk2.RegID
, bk2.BankCode , bk2.BranchCode,bkp.BankCode,bkp.BranchCode ,bk2.CityID,bkp.CityID
from bankemail2 bk2, bankemail2_backup bkp
where bk2.BankCode = bkp.BankCode and bk2.BranchCode=bkp.BranchCode
and bk2.CityID = bkp.CityID
and bk2.CityID=73)

select bk2.regid,bk2.email1,dgk.email1, dgk.city_name as DGKcity, bk2.CityID from bankemaildgk dgk, bankemail2 bk2
where dgk.email1 = bk2.Email1

select email1,count(email1) from bankemail
where email1 in
(select rwp.Email1 from bankemailbop rwp)
group by regid,email1 having count(email1)=1

select * from bankemailbop
where email2 not in (select email2 from bankemail)

, bankemail bk2
where rwp.bank_code = bk2.BankCode
and rwp.branch_code=bk2.BranchCode
and bk2.CityID=40)
and 
email2 in
(select rwp.Email2 from bankemailrwp rwp, bankemail2 bk2
where rwp.bankcode = bk2.BankCode
and rwp.branchcode=bk2.BranchCode
and bk2.CityID=40)





select * from bankemail2bwl
where email1 in
(select email1 from bankemail2bwl bwl
where
email1
  in
(select email1 from bankemail2 where CityID=94))
----------------------------------------------------------

SELECT * FROM sys.messages WHERE message_id = 2628

select * from EmailLog 
where msg like '%Asia.shahzad@abl.com%'
order by pdate desc

--select * from BankDomain
--update bankdomain set EmailDomain='hblmfb.com' where domid=14

select distinct pdate,msg from EmailLog where msg like '%CityID 70%'
and pdate between '2022-08-04 16:00:00.000' and '2022-08-04 16:59:00.000'
order by pdate desc


select * from vWeekDaysOnOff

select * from vHostNIBC
where Amount like '%310912%'
order by Processdate desc

-------------SQL LOCKS------------
------------------------------
SELECT * FROM sys.server_event_sessions WHERE name='LockCounts'

SELECT * 
  FROM sys.dm_exec_requests
  WHERE DB_NAME(database_id) = 'NIBC' 
    AND blocking_session_id <> 0

	SELECT text,* 
  FROM sys.dm_exec_requests
  CROSS APPLY sys.dm_exec_sql_text(sql_handle)
  WHERE DB_NAME(database_id) = 'NIBC' 
    AND blocking_session_id <> 0

	select * from tickets
	with (updlock)
		-------------------------------

select * from ClearingDate

insert into ClearingDate
select '2022-08-19 00:00:00.000'
select top 100 * from Report order by RepLoadTime desc

select * from UploadICLData where bankID=014
order by RecDateTime desc

select * from vClearingdate

-----------------------------------------
-----------------------------------------
-----------------------------------------

select * from vCycleClearing

select * from vCycle

-----FILE UPLOAD WORK---------
 Select Top 5 a.fileid,a.fileName, a.bankID, a.branchID, a.cycleNo,  d.cycle_desc, a.cityCode, ct.CityName,  a.WebID,a.RecDateTime,a.userEmail, 
 convert(varchar(20), a.RecDateTime, 105) Fileupdatedate, convert(varchar(10), CAST(a.RecDateTime AS TIME), 0) Fileupdatetime, b.InstName, 
 c.branch_name 
 from UploadICLData a, Institution b, branch c, cycles d , City ct
 where a.bankID = b.InstID and a.bankID = c.instid and a.branchID = c.branchid and a.cycleNo = d.cycle_no and b.InstID = c.instid and a.cityCode = ct.CityID
 and a.bankID = '54' and a.branchID = '7' 
 order by a.RecDateTime desc
---------------------------------------

----------------------------------------


select subjectemail,Time_Modified,Expiry_Date,Bank_Code,Branch_Code from allbankcert 
where subjectEmail in
(select subjectemail from allbankcert group by subjectemail
having COUNT(subjectEmail) >1)  order by subjectemail,Time_Modified desc


--and CONVERT(varchar, Bank_Code)+'-'+CONVERT(varchar, Branch_Code) in (select CONVERT(varchar, Bank_Code)+'-'+CONVERT(varchar, Branch_Code) from allbankcert
--group by subjectemail,Bank_Code,Branch_Code having COUNT(subjectEmail) >1)
--order by Expiry_Date desc

--select * from allbankcert
where subjectEmail ='zafar.ullah@askaribank.com.pk' and Bank_Code =17 and Branch_Code=57 
--and Expiry_Date='2022-01-07 00:00:00.000'
and serialNumber='7.74156445072205E+18'
and Update_DateTime='2022-05-20 00:00:00.000'

insert into allbankcert
select
NULL,	'tabinda.akbar@ubl.com.pk',	'2011-12-02 00:00:00.000',	'2022-01-14 12:22:31.000',	'86',	'605',	'Not Available',	'8.13983519170463E+16',	'2022-01-14 12:22:31.000',	'2023-01-14 00:00:00.000',	'MIIFsDCCBJigAwIBAgIIcXYGOLUnAX0wDQYJKoZIhvcNAQELBQAwgY0xEzARBgNV  BAMMCk5JRlRFQ0ggQ0ExNDAyBgNVBAsMKzIwMTQgTklGVCBQdnQgTHRkLiAtIEZv  ciBhdXRob3JpemUgdXNlIG9ubHkxGzAZBgNVBAsMEk5JRlQgVHJ1c3QgTmV0d29y  azEWMBQGA1UECgwNTklGVCBQdnQgTHRkLjELMAkGA1UEBhMCUEswHhcNMjIwMTE0  MDcwOTQ1WhcNMjMwMTE0MDcwOTQ1WjCCASQxJzAlBgkqhkiG9w0BCQEWGHRhYmlu  ZGEuYWtiYXJAdWJsLmNvbS5wazEdMBsGA1UEAwwUVGFiaW5kYSBBa2JhciBCaGF0  dGkxEzARBgNVBAsMCk9wZXJhdGlvbnMxNTAzBgNVBAsMLFRlcm1zIG9mIHVzZSBh  dCB3d3cubmlmdGV0cnVzdC5jb20vcnBhIChjKTE0MRkwFwYDVQQLDBBCcmFuY2gg  SUQgLSAwNjA1MRYwFAYDVQQLDA1CYW5rIElEIC0gMDg2MUEwPwYDVQQKDDhOYXRp  b25hbCBJbnN0aXR1dGlvbmFsIEZhY2lsaXRhdGlvbiBUZWNobm9sb2dpZXMgUHZ0  IEx0ZDELMAkGA1UEBwwCMTAxCzAJBgNVBAYTAnBrMIIBIjANBgkqhkiG9w0BAQEF  AAOCAQ8AMIIBCgKCAQEA0y+2QsrFmmglYoy+GMw4ujdXEDAP72YW99oOUqYMJw4C  7GjvvPEoQntOpD84d+GdlzP8KGos2WDW9jtcbPGzvaVYkPyCjg7yZ4r/UvbT0Mv/  tOyOTYJXFm+S5DT8Qvh2GnHuJ+RkH3rD8Hc4fUUlCC6MDjQ93AdPgjaCkFI7Ay2i  3kp5jCLKicwP9wbgqxY22+JYcrpgEXAMQomIEG0/2l0Lq/Dnw7OcHfwTh00Trxot  QBCDtl+pGUJWJIUa6S+2QOIZqbrA2NQ/F12tLu36my4xPtAvKP+K8jQz9J8W/TrU  dtmWxwH0jhM1veyS8xEPqWkYtaPCzbtRy70MjuPS5wIDAQABo4IBeDCCAXQwHQYD  VR0OBBYEFJYQEoydnLLtx/fRtC1jnNlvnQsWMAwGA1UdEwEB/wQCMAAwHwYDVR0j  BBgwFoAUylq6Trh8Tl/knrCQ3RXMiLVk2iIwgeoGA1UdHwSB4jCB3zCB3KCB2aCB  1oaB02h0dHA6Ly9vbnNpdGUtcm9vdC5uaWZ0ZXRydXN0LmNvbS9lamJjYS9wdWJs  aWN3ZWIvd2ViZGlzdC9jZXJ0ZGlzdD9jbWQ9Y3JsJmlzc3Vlcj1DTj1OSUZURUNI  JTIwQ0EsT1U9MjAxNCUyME5JRlQlMjBQdnQlMjBMdGQuJTIwLSUyMEZvciUyMGF1  dGhvcml6ZSUyMHVzZSUyMG9ubHksT1U9TklGVCUyMFRydXN0JTIwTmV0d29yayxP  PU5JRlQlMjBQdnQlMjBMdGQuLEM9UEswDgYDVR0PAQH/BAQDAgXgMCcGA1UdJQQg  MB4GCCsGAQUFBwMBBggrBgEFBQcDAgYIKwYBBQUHAwQwDQYJKoZIhvcNAQELBQAD  ggEBAIehd1L4EkycxT/DqSjzpjIevXfGBQDSiF2nOig8TvaOCY91pZ4V1BwZyhdm  iRrV2Aq+9E/tCtkV0vTLl2WE5Poz68srbsB4S8kTDC2s8dgQeJ31T9+JC3S2aIwN  v1ItluldyK2NojbtvdhymFgfT+moiwfVfoNBi6SArNC3b7HtPmMdwTGp9DzElK3K  dmB/Je6PByCclJjaeaJsGR0r4PAgcRemixpDSOK0h/oGDuPff1UHqNZlQO4EdevI  IDrg5L/kEe3QsBn5z2G9/3MjjkJOQyT5JYNGu8JUtAQntCgPy9hDniEUXuzUHb8+  GgvG6pHvIMACGwkwH0J0wJYLBec='



------------------------------

select REPLICATE('0',3-LEN(instid))+ CAST(instid AS varchar), instid,branchid from bankbranch
where 
REPLICATE('0',3-LEN(instid))+ CAST(instid AS varchar) not in
(select  REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar)as bankcode from bankemail2)
and
REPLICATE('0',4-LEN(branchid))+ CAST(branchid AS varchar) not in
(select  REPLICATE('0',3-LEN(BranchCode))+ CAST(BranchCode AS varchar)as BranchCode from bankemail2)
and isopen =1


select * from bankemail2
where REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) not in
(select REPLICATE('0',3-LEN(bk2.BankCode))+ CAST(bk2.BankCode AS varchar) from bankbranch bb,bankemail2 bk2
where bb.InstID = bk2.BankCode
and bb.branchid=bk2.BranchCode)
and REPLICATE('0',3-LEN(BranchCode))+ CAST(BranchCode AS varchar) not in
(select REPLICATE('0',3-LEN(bk2.BranchCode))+ CAST(bk2.BranchCode AS varchar)  from bankbranch bb,bankemail2 bk2
where bb.InstID = bk2.BankCode
and bb.branchid=bk2.BranchCode)

select * from bankbranch bb,bankemail2 bk2
where bb.InstID = bk2.BankCode
--and bb.branchid=bk2.BranchCode
and REPLICATE('0',3-LEN(bb.branchid))+ CAST(bb.branchid AS varchar)  = REPLICATE('0',3-LEN(bk2.BranchCode))+ CAST(bk2.BranchCode AS varchar)

select distinct b2.email1+'@'+b2.Domain1,b2.email2+'@'+b2.Domain2, b2.BankCode,b2.BranchCode,bk.InstID,bk.branchid from bankemail2 b2, bankbranch bk
where bk.isopen =1
and b2.BankCode=bk.InstID
and b2.BranchCode=bk.branchid


select * from UploadICLData order by RecDateTime desc

select top 1 cycleNo,cycle_desc,cityid,
 Format(cycleStartTime, 'HH:mm') as cycleStartTime,
 Format(cycleEndTime, 'HH:mm') as cycleEndTime
 from vCycleEndDiff a, cycles b
 where a.minutediff > 0 
 and a.cycleNo = b.cycle_no
 and b.cycle_no = '2'
 and a.BankCode = '054'
 and a.cityid= '10'
 order by cycleEndTime,cycleStartTime

 select * from vCycleEndDiff


  Select Top 50 a.RecDateTime, a.fileid,a.fileName, a.bankID, a.branchID, a.cycleNo,  d.cycle_desc, a.cityCode, ct.CityName,  a.WebID,a.RecDateTime,
  a.userEmail,  convert(varchar(20), a.RecDateTime, 105) Fileupdatedate, convert(varchar(10), CAST(a.RecDateTime AS TIME), 0) Fileupdatetime,
  b.InstName, c.branch_name from UploadICLData a, Institution b, branch c, cycles d , City ct 
  where a.bankID = b.InstID and a.bankID = c.instid 
  and a.branchID = c.branchid and a.cityCode = ct.CityID and a.cycleNo = d.cycle_no and b.InstID = c.instid and a.bankID = '014' 
  and a.branchID = '0702' and RecDateTime between '2022-09-05 00:00:000' and '2022-09-06 00:00:000'
  order by a.RecDateTime desc


   Select Top 50 a.fileid,a.fileName, a.bankID, a.branchID, a.cycleNo,  d.cycle_desc, a.cityCode, ct.CityName,  a.WebID,a.RecDateTime,a.userEmail,
   convert(varchar(20), a.RecDateTime, 105) Fileupdatedate, convert(varchar(10), CAST(a.RecDateTime AS TIME), 0) Fileupdatetime, b.InstName,
   c.branch_name from UploadICLData a, Institution b, branch c, cycles d , City ct where a.bankID = b.InstID and a.bankID = c.instid
   and a.branchID = c.branchid and a.cityCode = ct.CityID and a.cycleNo = d.cycle_no and b.InstID = c.instid and a.bankID = '014'
   and a.branchID = '0702' and RecDateTime between convert(datetime,'2022-09-04 00:00:00') and convert(datetime, '2022-09-04 23:59:00')
   order by a.RecDateTime desc



   1874 -- 1910
select * from bankemail2 where cityid=70
and REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) +'-'+ REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) in
(select REPLICATE('0',3-LEN(Bank_Code))+ CAST(Bank_Code AS varchar)+'-'+REPLICATE('0',4-LEN(branch_code))+CAST(branch_code AS varchar) from AllBranches_list where Citycode=70 and status=1
)540


select * from AllBranches_list
where REPLICATE('0',3-LEN(Bank_Code))+ CAST(Bank_Code AS varchar) +'-'+ REPLICATE('0',4-LEN(Branch_Code))+CAST(Branch_Code AS varchar)
not  in (
select REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) +'-'+ REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) from bankemail2 where cityid=70 and CityID!=888
and REPLICATE('0',3-LEN(BankCode))+ CAST(BankCode AS varchar) +'-'+ REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) in
(select REPLICATE('0',3-LEN(Bank_Code))+ CAST(Bank_Code AS varchar)+'-'+REPLICATE('0',4-LEN(branch_code))+CAST(branch_code AS varchar) from AllBranches_list where Citycode=70 and status=1
)) and Citycode=70 and status=1

select * from AllBranches_list
where Citycode=70 and status=1

select * from AllBranches_list 
where Bank_Code=90 and Branch_Code=1725



Exec SP_SummeryReturn_Inward '2022-10-11 00:00:00',43,85,5

 SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid
 INNER JOIN (  select a.branchid,a.instid,a.locality cityid,b.branch_name from [users] a,branch b  where a.userid='26453' 
 and a.branchid=b.branchid and a.instid=b.instid and a.locality=b.cityid  ) tt ON b.instid = tt.InstID AND b.branchid = tt.BranchID 
 AND b.cityid = tt.cityid WHERE (a.InstID = 43) AND (b.cityid = 85) ORDER BY b.branch_name

 select * from branch where instid=43
 and cityid=85
 .
 select a.branchid,a.instid,rc.CityID cityid, b.branch_name from[users] a,branch b, User_Role ur, Role_City rc 
 where a.userid = '26453' and a.branchid = b.branchid and a.instid = b.instid and ur.UserID = a.userid and ur.RoleID = rc.RoleID and rc.CityID = b.cityid 
                
select * from CycleEnd

select * from vCycleEndDiff

insert into ClearingDate
select '2022-10-13 00:00:00.000'

select  * from ClearingDate
--delete from ClearingDate where processdate= '2022-09-22 00:00:00.000'
2022-08-19 00:00:00.000
2022-08-22 00:00:00.000
2022-08-23 00:00:00.000
2022-08-24 00:00:00.000
2022-08-25 00:00:00.000
2022-09-22 00:00:00.000
2022-09-09 00:00:00.000

--delete from clearingdate where ProcessDate = '2022-09-09 00:00:00.000'

update vhostnibc set processdate='2022-10-13 00:00:00'
where hostid in 
(select top 10 hostid from vhostnibc where processdate = '2022-10-07')

select * from vhostnibc where processdate='2022-10-13 00:00:00'
--and receiverbank=14
and senderbank=14

-- SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN 
--(  select a.branchid,a.instid,rc.CityID cityid, b.branch_name from[users] a,branch b, User_Role ur, Role_City rc  where a.userid = '25893' 
--and a.branchid = b.branchid and a.instid = b.instid and ur.UserID = a.userid and ur.RoleID = rc.RoleID and rc.CityID = b.cityid  ) tt 
--ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid WHERE (a.InstID = 14) AND(b.cityid = 30) ORDER BY b.isopen desc,b.branch_name


-- SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN 
-- (  select a.branchid,a.instid,a.locality cityid,b.branch_name from [users] a,branch b  where a.userid='25893' and a.branchid=b.branchid 
-- and a.instid=b.instid and a.locality=b.cityid  ) tt 
-- ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid WHERE (a.InstID = 14) AND(b.cityid = 30) 
-- ORDER BY b.isopen desc,b.branch_name


--  SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN 
--  (  select a.branchid,a.instid,rc.CityID cityid, b.branch_name from[users] a,branch b, User_Role ur, Role_City rc  where a.userid = '25893' 
--  and a.branchid = b.branchid and a.instid = b.instid and ur.UserID = a.userid and ur.RoleID = rc.RoleID and rc.CityID = b.cityid  ) tt 
--  ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid WHERE (a.InstID = 14) AND (b.cityid = 30)
--  ORDER BY b.branch_name


-- SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN 
-- (  select a.branchid,a.instid,a.locality cityid,b.branch_name from [users] a,branch b  where a.userid='25893' and a.branchid=b.branchid 
-- and a.instid=b.instid and a.locality=b.cityid  ) tt ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid 
-- WHERE (a.InstID = 14) AND (b.cityid = 30) 
-- ORDER BY b.branch_name

--  SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN 
--  (  select a.branchid,a.instid,a.locality cityid,b.branch_name from [users] a,branch b  where a.userid='25893' and a.branchid=b.branchid 
--  and a.instid=b.instid and a.locality=b.cityid  ) tt ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid 
--  WHERE (a.InstID = 43) AND (b.cityid = 50) ORDER BY b.branch_name

-- SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN 
-- (  select a.branchid,a.instid,rc.CityID cityid, b.branch_name from[users] a,branch b, User_Role ur, Role_City rc  where a.userid = '25893' 
-- and a.branchid = b.branchid and a.instid = b.instid and ur.UserID = a.userid and ur.RoleID = rc.RoleID and rc.CityID = b.cityid  ) tt 
-- ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid WHERE (a.InstID = 43) AND (b.cityid = 50) ORDER BY b.branch_name

-- select userid,roleid from user_role 
-- group by userid,roleid
-- having count(*)>1

--select count(ur.roleid) as count,ur.roleid,r.InstID,rp.PageID from User_Role ur,users r,role_page rp
--where ur.UserID=r.UserID and ur.RoleID=rp.RoleID and r.InstID=14 --and r.Locality not in (10,20,30,40)
--group by ur.roleid ,r.InstID ,r.CreationDateTime ,rp.PageID
--having count(ur.roleid) > 1
--order by r.CreationDateTime 

--419,442,450,460,536
--select * from user_role ur,users us where ur.UserID=us.UserID and ur.RoleID=536 and us.Locality !=10

--select * from role_page where roleid=2150
--order by CreationDateTime

--select * from user_role where userid=26621
--800,2160,586
--select * from users where userid=26621
--IsBranchUser=1
--order by CreationDateTime



-- SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN 
-- (  select a.branchid,a.instid,rc.CityID cityid, b.branch_name from[users] a,branch b, User_Role ur, Role_City rc  where a.userid = '26621' 
-- and a.branchid = b.branchid and a.instid = b.instid and ur.UserID = a.userid and ur.RoleID = rc.RoleID and rc.CityID = b.cityid  ) tt 
-- ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid WHERE (a.InstID = 60) AND (b.cityid = 87) ORDER BY b.branch_name

-- SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN 
-- (  select a.branchid,a.instid,a.locality cityid,b.branch_name from [users] a,branch b  where a.userid='26621' and a.branchid=b.branchid 
-- and a.instid=b.instid and a.locality=b.cityid  ) tt ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid 
-- WHERE (a.InstID = 60) AND (b.cityid = 87) ORDER BY b.branch_name