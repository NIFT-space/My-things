
select * from chkbranch

insert into chkbranch
select '070','142','Main i.i chundrigarh road','','10','1',1,'adaadad', '3324234','234234',1,1

insert into ChkBkType
select '070','1','Islamic','1'

select * from ChkBkType

delete from ChkBkRequest

select * from ChkBkRequest

update ChkBkRequest set isReported=0

insert into ChkBkRequest
select '070','142' ,'1','000000002','ABCD',GETDATE(),'26887','Main i.i chundrigarh road','',0,getdate(),'10','2451111','2','PKHAB848'


select a.instid,b.instname,c.branchid,c.branch_name  from users a,institution b,branch c  where a.instid=b.instid and a.branchid=c.branchid and  b.instid=c.instid and a.instid=999 and a.branchid=0999 and a.emailaddress='nift.cops@nift.pk'


 select Convert(varchar(200),a.reqid) + '|' + Convert(varchar(200),a.chktypeid) + '|' +Convert(varchar(10),a.reqdatetime,105) +'|'+Convert(varchar(200),a.instid) + '|' + 
 Convert(varchar(200),a.branchid) + '|' +  Convert(varchar(200),a.accno) +'|'+   Convert(varchar(200),a.acctitle) +'|'+  Convert(varchar(200),a.Branch_Name) + '|' + 
 Convert(varchar(200),a.Branch_Addr)  + '|'+  STUFF( '00000000', 8 - LEN( isnull(chkno,0)) + 1, LEN( isnull(chkno,0) ),  isnull(chkno,0)) + '|'+   Convert(varchar(200),
 isnull(ChkBkNos,1))  + '|'+  STUFF( '00000000', 8 - LEN( isnull(chkIBAN,0)) + 1, LEN( isnull(chkIBAN,0) ), isnull(chkIBAN,0)) +  STUFF( '0000000000000000', 16 - LEN( isnull(a.accno,0)) + 
 1, LEN( isnull(a.accno,0) ), isnull(a.accno,0))  reqid from chkbkrequest a ,chkbktype b,chkbranch c ,  
 (  select e.branchid,e.instid,f.branch_name,f.cityid  from [users] a,user_role b,[role] c,[roletype] d ,  role_inst_branch e,branch f  where  a.userid=b.userid and  b.RoleID=c.RoleID 
 and    c.roletypeid=d.roletypeid  and   b.roleid=e.roleid and c.roleid=e.roleid and e.branchid=f.branchid and e.instid=f.instid   and  a.UserID='26887' ) tt  
 where a.chktypeid=b.chktypeid and a.instid=b.instid and a.InstID=c.InstID and a.branchid=c.branchid and b.instid=c.InstID and isreported=0 and a.branchid=tt.branchid  
 and a.InstID=tt.InstID  and a.userid=26887 group by a.ReqID,a.chktypeid,a.reqdatetime, a.instid, a.branchid, a.accno, a.acctitle, a.Branch_Name, a.Branch_Addr, a.chkno 
 ,a.chkIBAN,a.ChkBkNos order by  a.ReqID desc 


