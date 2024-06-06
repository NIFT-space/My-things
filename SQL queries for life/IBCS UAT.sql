
select * from users where InstID=53 and BranchID=1

select * from Role where name like '%alfalah%'

select * from role_page order by CreationDateTime desc

insert into user_role
select '58864','2312',getdate()

insert into users
select
	'naveedsajwani@bankal',	'naveedsajw',	'Naveed',	'Sajwani',	1,	12,'','','19-10-2023',	'naveedsajwani@bankalfalah.com',	1,	1,	NULL	,53,	1,	1,	0,	10,	'OG1',	'06129604122CC817',	'MIIFrzCCBJegAwIBAgIIBhKWBBIsyBcwDQYJKoZIhvcNAQELBQAwgY0xEzARBgNV  BAMMCk5JRlRFQ0ggQ0ExNDAyBgNVBAsMKzIwMTQgTklGVCBQdnQgTHRkLiAtIEZv  ciBhdXRob3JpemUgdXNlIG9ubHkxGzAZBgNVBAsMEk5JRlQgVHJ1c3QgTmV0d29y  azEWMBQGA1UECgwNTklGVCBQdnQgTHRkLjELMAkGA1UEBhMCUEswHhcNMjIxMDE5  MDg0MDI5WhcNMjMxMDE5MDg0MDI5WjCCASMxLDAqBgkqhkiG9w0BCQEWHW5hdmVl  ZHNhandhbmlAYmFua2FsZmFsYWguY29tMRcwFQYDVQQDDA5OYXZlZWQgU2Fqd2Fu  aTETMBEGA1UECwwKT3BlcmF0aW9uczE1MDMGA1UECwwsVGVybXMgb2YgdXNlIGF0  IHd3dy5uaWZ0ZXRydXN0LmNvbS9ycGEgKGMpMTQxGTAXBgNVBAsMEEJyYW5jaCBJ  RCAtIDAwMDExFjAUBgNVBAsMDUJhbmsgSUQgLSAwNTMxQTA/BgNVBAoMOE5hdGlv  bmFsIEluc3RpdHV0aW9uYWwgRmFjaWxpdGF0aW9uIFRlY2hub2xvZ2llcyBQdnQg  THRkMQswCQYDVQQHDAIxMDELMAkGA1UEBhMCcGswggEiMA0GCSqGSIb3DQEBAQUA  A4IBDwAwggEKAoIBAQDlpFaQKt6rw7amCh9LeX+7q0yjj65V7+OWNKHaiv+9aUKr  Xxt9R+aZddCHlvakdrs9AO9AMOHEtd55/gcyHER1lhHksqEmbj0380Ru2zHHetl5  F8aPHEkbOlVU9FDL6f/M3wdBQ44ZXSwFP94TzZ2IR66teGmha8klckY/lbybKiaj  g+LRjsAHJwx6H+Y5JGdhrgpPIGi289mxB81b0Q6ubZpzpV/PVYAZWpVXRGCaAgFW  X0IhF72OZXxlDu9iyibRqc0UFKEPRoXTBPi5jBezvz3kcUvPGmOING2RoTUugCTe  LUdKoE2CuQGtyK1w35br2M2f8Hpe2sdDPvhsuDnJAgMBAAGjggF4MIIBdDAdBgNV  HQ4EFgQUIImnZ5/ro0QZP6xkufLPrfea7VkwDAYDVR0TAQH/BAIwADAfBgNVHSME  GDAWgBTKWrpOuHxOX+SesJDdFcyItWTaIjCB6gYDVR0fBIHiMIHfMIHcoIHZoIHW  hoHTaHR0cDovL29uc2l0ZS1yb290Lm5pZnRldHJ1c3QuY29tL2VqYmNhL3B1Ymxp  Y3dlYi93ZWJkaXN0L2NlcnRkaXN0P2NtZD1jcmwmaXNzdWVyPUNOPU5JRlRFQ0gl  MjBDQSxPVT0yMDE0JTIwTklGVCUyMFB2dCUyMEx0ZC4lMjAtJTIwRm9yJTIwYXV0  aG9yaXplJTIwdXNlJTIwb25seSxPVT1OSUZUJTIwVHJ1c3QlMjBOZXR3b3JrLE89  TklGVCUyMFB2dCUyMEx0ZC4sQz1QSzAOBgNVHQ8BAf8EBAMCBeAwJwYDVR0lBCAw  HgYIKwYBBQUHAwEGCCsGAQUFBwMCBggrBgEFBQcDBDANBgkqhkiG9w0BAQsFAAOC  AQEAI01wTIqfzmaBxLSX5OYns/6QC9pZ7JBRCo2svRleEhujc/cpQ+JDpcRDKqXJ  ICsD6ONESiPyOMmCk0lCge9vs1EN6PU5BUhu57QaiYRjnszKHTAS3ky5RsQ9X7Vs  TQCYN00GJtFpjJc8PAfQ0jOHgt8vypSUHfk944rt1mhuA8J5ufZDryQoU7N6w5VP  If77lGfoW1ZiwiizrXrUiP7aMb9i2gB0kfZiDtFIR21BS1/a6l5zvyPMXKEiPxcJ  Zuk+HZtf3aJNIzLW/fFePwFy2IeeadlYoQIf6PulWkxGX6RiJMQf/eaONgNtrXK3  4AxHXH6ho8cn1vm/vyU0cO6ctw==',	'Valid',	'PK',	'2021-10-18 11:47:22.803',	1,	0

select cycle_no, cycle_desc,
 CASE 
 WHEN cycle_no = 1  THEN '3' 
 WHEN cycle_no = 2  THEN '1' 
 WHEN cycle_no = 5  THEN '2' 
 WHEN cycle_no = 20 THEN '4' 
 WHEN cycle_no = 31 THEN '5' 
 ELSE '6' 
 END AS sorder, 
 (case when Mon <> '1900-01-01 00:00:00.000' then 'ON' else 'OFF' end) as Mon,
 (case when Tue<> '1900-01-01 00:00:00.000' then 'ON' else 'OFF' end) as Tue, 
 (case when Wed<> '1900-01-01 00:00:00.000' then 'ON' else 'OFF' end) as Wed, 
 (case when Thu<> '1900-01-01 00:00:00.000' then 'ON' else 'OFF' end) as Thu, 
 (case when Fri<> '1900-01-01 00:00:00.000' then 'ON' else 'OFF' end) as Fri, 
 (case when Sat<> '1900-01-01 00:00:00.000' then 'ON' else 'OFF' end) as Sat, 
 (case when Sun<> '1900-01-01 00:00:00.000' then 'ON' else 'OFF' end) as Sun
 from vWeekDaysOnOff
 order by sorder

 select * from vWeekDaysOnOff

 select a.*, cycleNo,cycle_desc, CASE  WHEN cycleNo = 1  THEN '3'  WHEN cycleNo = 2  THEN '1'  WHEN cycleNo = 5  THEN '2'  WHEN cycleNo = 20 
  THEN '4'  WHEN cycleNo = 31 THEN '5'  ELSE '6'  END AS sorder,  ct.CityName, Format(cycleStartTime, 'HH:mm') as cycleStartTime, 
  Format(cycleEndTime, 'HH:mm') as cycleEndTime from vCycleEndDiff a, cycles b, City ct where -- a.minutediff > 0  and 
  a.cycleNo = b.cycle_no --and a.cityid=10 and MinuteDiff between 50 and 54
  and a.BankCode = 54
  and a.cityid = ct.CityID  order by sorder

  update vCycleEndDiff set cycleEndTime='11:00'
--  select * from vCycleEndDiff
  where cid=919 and BankCode=54 and cityid=40 and cycleNo=2

  update vcycleEndDiff set cycleEndTime='20:00'
  where cID=925 and BankCode=54 and cityid=10 and cycleNo=5

  select * from vDefferEndDiff
  where cycleNo=5 and cityid=10 and BankCode=54

  update vDefferEndDiff
  set cycleEndTime='1900-01-01 12:00:00.000'
    where cycleNo=5 and cityid=10 and BankCode=54
  
  select * from Return_Reasons

  update Return_Reasons set IsActive=1

  Exec SP_DefferClose 5, 54, 10

  select * from ClearingDate where ProcessDate ='2022-12-01 00:00:00.000'

  update ClearingDate set ProcessDate ='2022-12-01 00:00:00.000'
  where ProcessDate = '2022-11-29 00:00:00.000' 

  update vhostnibc set templateid = 'C01'
  --select * from vhostnibc
  where Processdate ='2022-12-01 00:00:00.000' and receiverbank=54
  --cycleno=5 
    order by Processdate desc

  update vhostnibc set cityid=10 where hostid=55077737

  select * from City
  select * from Institution where InstName like '%baraka%'

  select * from ibcslogs
  order by logid desc

  select * from UploadICLData
  order by RecDateTime desc

  select * from cycles

  update vhostnibc set cycleno=05
  where Processdate ='2022-12-01 00:00:00.000' and receiverbank=54

  select * from vhostnibc 
where Processdate = '2023-01-30 00:00:00.000'
    order by processdate desc

  insert into clearingdate
  select '2023-02-03 00:00:00.000'

  select * from clearingdate

  select * from Merchant

  select * from Tickets

  select * from Users where userid=21

  update tickets set AssigneeID=1 where Ticketno=1005

  select * from (select st.Status_Description as Status,TicketNo,convert(varchar, ComplaintDate, 106) as ComplaintDate, FullName, inst.InstID, 
  inst.InstName, Nature, Wk.Description as Workcode, convert(varchar, LastUpdated,113) as LastUpdated, EmailAddress, ContactNumber
  from Tickets as tk join Complaint_Status st on st.Status_Code=tk.status join WorkCode Wk on Wk.WorkCode = tk.WorkCode 
  join Institution inst on inst.InstID=tk.InstID) D where  D.InstID =014 
  order by Status desc, LastUpdated desc,ComplaintDate desc

  select * from Complaint_Status

  select * from vCycleEndDiff
  where BankCode=54 and cycleNo=2

  update vCycleEndDiff
  set cycleEndTime='1900-01-01 15:30:00.000'
  where cID=919 and BankCode=54 and cityid=86 and cycleNo=2


  update users set CertSerialNumber = '773dbc03fa484eac'
where userid=28839


select * from tickets
select MerchID,FirstName+' '+ LastName as fullname from Merchant where InstID = @instid and BranchID =@Brid
select * from Merchant

update merchant set instid=17 , branchid=2 where merchid=2051

select * from Users

select * from User_Role where userid=16

select * from Role
insert into user_role
select '16','2',GETDATE()

select case Status when '3' then 'OPEN' when '2' then 'OPEN' when '0' then 'CLOSED' when '1' then 'OPEN' end as Status,TicketNo,
convert(varchar, ComplaintDate, 106) as ComplaintDate, FullName , merc.FirstName+' '+merc.LastName as InstName, Nature, Wk.Description as Workcode, 
convert(varchar, LastUpdated,113) as LastUpdated, EmailAddress, ContactNumber from Tickets as tk join Merchant merc on merc.MerchID=tk.AssigneeID 
join WorkCode Wk on Wk.WorkCode = tk.WorkCode Where AssigneeID=2051 order by tk.Status desc, tk.LastUpdated desc,tk.ComplaintDate desc

select * from Tickets

select * from Users
update users set ismerchant=0

Select p.URL as URL from users a join User_Role b on b.UserID = a.UserID join Role_Page c on c.RoleID = b.RoleID join Page p on p.PageID = c.PageID 
where a.UserID = '4' and lower(ltrim(rtrim(p.title))) like 'Adminmain%'

select * from user_role where userid=4
select * from role_page where roleid=2

update user_role set roleid=3
where roleid=2 and userid=4

insert into role_page
select '2','13',null,getdate()


select a.userid,a.username,a.firstname+' '+a.lastname fullname,
case IsAdmin when 1 then 'Administrator' when 2  then 'Operations' when 3 then 'Merchant' when 4 then 'Bank user' end as usertype,
 case isactive 
 when 1 then 'Yes' 
 when 0 then 'No' 
 end isactive
 ,c.instname bankname 
 from [users] a 
 inner join institution c on  a.instid=c.instid 
 order by a.Isactive desc, a.CreationDateTime desc, fullname asc

 select userid ,UserName from Users where IsActive=1 and IsAdmin=3 order by userid desc

 select *,case isactive when 1 then 'yes' when 0 then 'no' end active from [users] where [userid]=

 update users set isadmin =1
 where userid=4

 select * from merchant
 order by merchid desc

 delete from merchant where merchid between 2023 and 2050

 select * from Users

 select * from User_Role

 select convert(varchar,UserID)+ ' - ' + username from merchant

 update merchant set username ='abc'

 select * from Institution
 insert into Institution
 select '888','Merchant',getdate(),0