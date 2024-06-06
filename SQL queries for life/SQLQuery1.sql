
aqib.azad@mobilinkbank.com 


insert into bankemail 
select userid,userpwd, 'aqib.azad','aqib.azad','mobilinkbank.com', '','' , 'tba', 'tba', 'mobilinkbank.com', '', '', bankcode, BranchCode, CityID , getdate(), 0
from bankemail where regid in
(select regid from bankemail
where domain1 like '%mobilink%'
and bankcode=107)

select top 64 * from bankemail order by regid desc

select * from IBCSLogs
where Updatedatetime between '2023-02-17 00:00:00.000' and '2023-02-17 23:59:59.000'
order by logid desc

select * from bankemail where BankCode=107 and BranchCode=4329

select * from bankbranch where branchid=4329

select * from users where InstID=023 and BranchID=1001

select * from user_role order by CreationDateTime desc
where userid in (113,470,1742,4528,4935)

insert into user_role
select '4935','58864',getdate()

update user_role set roleid= 2312 where userid=4935

select * from role_page where roleid=2312 and pageid in (125,146)

select * from page where title like '%upload%'

select * from UploadICLData
order by fileID desc

update UploadICLData
set RecDateTime='2023-02-10 17:26:23.373'
where fileid=30322

 Select Top 50 a.fileid,a.fileName, a.bankID, a.branchID, a.cycleNo,  d.cycle_desc, a.cityCode, ct.CityName,  a.WebID,a.RecDateTime,a.userEmail,  
 convert(varchar(20), a.RecDateTime, 105) Fileupdatedate, convert(varchar(10), CAST(a.RecDateTime AS TIME), 0) Fileupdatetime, b.InstName, c.branch_name 
 from UploadICLData a, Institution b, branch c, cycles d , City ct where a.bankID = b.InstID and a.bankID = c.instid and a.branchID = c.branchid 
 and a.cityCode = ct.CityID and a.cycleNo = d.cycle_no and b.InstID = c.instid and a.bankID = '023' and a.branchID = '1001' 
 and RecDateTime between convert(datetime,'2023-02-10 00:00:00') and convert(datetime, '2023-02-10 23:59:00') order by a.RecDateTime desc