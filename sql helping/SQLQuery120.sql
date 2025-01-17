USE [NIBC]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_BrReport_Files]    Script Date: 8/30/2023 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

update report set rtid = 742 where repid=40549

select * from Report where repname like '%BrTS%'

sp_get_BrReport_Files 26887, 10, 7, '2023-08-29 00:00:00', '2023-08-30 23:59:00', '17', 'brts%', 'BrTrSc'
sp_get_BrReport_Files 26887, 10, 7, '2023-08-29 00:00:00', '2023-08-29 23:59:00', '17', 'brts%', 'BrTrSc'
select * from ReportType where rtname like '%brts%'

set identity_insert reporttype OFF
insert into reporttype 
select 'BRTS' , '100','BRTS.pdf','','9999',getdate()

select * from Report a
inner join reporttype b on a.RTID=b.RTID 
        and RTName like 'brts%'
        inner join institution c on a.InstID=c.InstID 
        inner join city cc on a.tocitycode=cc.cityid inner join #BankBranch tt on 
        a.branchid=tt.branchid 
        and a.tocitycode=tt.cityid and a.tocitycode in 
        ( select distinct e.cityid CityID from [users] a,user_role b,[role] c,[roletype] d ,
				 role_city e where  a.userid=b.userid and  b.RoleID=c.RoleID and  
				 c.roletypeid=d.roletypeid and   b.roleid=e.roleid and c.roleid=e.roleid and  
				 a.UserID = @UserId ) 
        and a.InstID=tt.InstID 
        and a.bVisible=1 and a.cycle_no = @CycleNo 
        and a.repcreationdate between convert(datetime,@DateFrom)
        and convert(datetime,@DateTo)
        and bspecial=0 
        and a.instid = @InstID
        order by InstName asc,branch_name asc,cityname,a.reploadtime desc

Select a.bUpdated,a.repid,a.repname,a.repdesc,a.bDownload,
        convert(varchar(20), RepLoadTime,105) Fileupdatedate, convert(varchar(10), CAST(RepLoadTime AS TIME), 0) Fileupdatetime, 
        a.repsize,a.tocitycode,cc.cityname cityname,a.reptype,convert(varchar(20),reploadtime,120) reploadtime,convert(varchar(20),repmodified,105) repmodified ,
        convert(varchar(20),repcreationdate,105) repcreationdate,a.reppath,c.InstName InstName,
        tt.branch_name branch_name  From Report a inner join reporttype b on a.RTID=b.RTID 
        and lower(RTName) like 'brts%'
        inner join institution c on a.InstID=c.InstID 
        inner join city cc on a.tocitycode=cc.cityid inner join BankBranch tt on 
        a.branchid=tt.branchid 
        and a.tocitycode=tt.cityid and a.tocitycode in 
        (10) 
        and a.InstID=tt.InstID 
        and a.bVisible=1 and a.cycle_no = 7 
        and a.repcreationdate between convert(datetime,'2023-08-29 00:00:00')
        and convert(datetime,'2023-08-30 23:59:00')
        and bspecial=0 
        and a.instid = 17
        order by InstName asc,branch_name asc,cityname,a.reploadtime desc


ALTER PROCEDURE [dbo].[sp_get_BrReport_Files] '',
(
@UserId int, 
@CityID int,
@CycleNo int,
@DateFrom varchar(50),
@DateTo varchar(50),
@InstID int,
@Repname varchar (10),
@URL varchar(10)
)
AS
DROP TABLE IF EXISTS #BankBranch
DECLARE @isBranchUser bit
DECLARE @branchid int
DECLARE @Bankid int

SET @isBranchUser = (select isBranchUser from [users] a where (a.UserID=@UserId))

Create TABLE #BankBranch(
	InstID int, 
	Branchid int,
	branch_name varchar(500),
	cityid int
)

IF @isBranchUser = 0
	BEGIN
		select @Bankid = e.instid, @branchid = e.BranchID from [users] a,user_role b,[role] c,[roletype] d , role_inst_branch e 
		where a.userid=b.userid and  b.RoleID=c.RoleID and  c.roletypeid=d.roletypeid 
		and b.roleid=e.roleid and c.roleid=e.roleid and  a.UserID=@UserId
		
		IF @Bankid IS NULL
			Insert into #BankBranch(InstID, Branchid, branch_name,cityid) 
			(select InstID,Branchid,branch_name,cityid from branch)

		IF @BankId IS NOT NULL and @branchid IS NULL
			Insert into #BankBranch(InstID, Branchid, branch_name,cityid) 
			(select InstID,Branchid ,branch_name,cityid from branch where InstID=@Bankid) 

		IF @BankId IS NOT NULL and @branchid IS NOT NULL
			Insert into #BankBranch(InstID, Branchid, branch_name,cityid) 
			(select e.instid,e.branchid,f.branch_name,f.cityid  from [users] a, 
              user_role b,[role] c,[roletype] d ,  role_inst_branch e,branch f,role_page g,page h 
              where  a.userid=b.userid 
              and c.roleid=g.roleid 
              and  b.RoleID=c.RoleID and 
              c.roletypeid=d.roletypeid  and   b.roleid=e.roleid and 
              c.roleid=e.roleid and e.branchid=f.branchid and 
              e.instid=f.instid   and  a.UserID = @UserID  
              and b.roleid=g.roleid
              and g.pageid=h.pageid
              and url like '%' + @URL + '%'
              Group By e.branchid,e.instid,f.branch_name,f.cityid)
	END
ELSE
	Insert into #BankBranch(InstID, Branchid, branch_name,cityid) 
	(select a.instid,a.branchid,b.branch_name,a.locality cityid from [users] a,branch b 
     where a.userid=@UserId and a.branchid=b.branchid and a.instid=b.instid and a.locality=b.cityid)

BEGIN	
if @CityID = 0
	BEGIN
		Select a.bUpdated,a.repid,a.repname,a.repdesc,a.bDownload,
        convert(varchar(20), RepLoadTime,105) Fileupdatedate, convert(varchar(10), CAST(RepLoadTime AS TIME), 0) Fileupdatetime, 
        a.repsize,a.tocitycode,cc.cityname cityname,a.reptype,convert(varchar(20),reploadtime,120) reploadtime,convert(varchar(20),repmodified,105) repmodified ,
        convert(varchar(20),repcreationdate,105) repcreationdate,a.reppath,c.InstName InstName,
        tt.branch_name branch_name  From Report a inner join reporttype b on a.RTID=b.RTID 
        and lower(RTName) like @RepName
        inner join institution c on a.InstID=c.InstID 
        inner join city cc on a.tocitycode=cc.cityid inner join #BankBranch tt on 
        a.branchid=tt.branchid 
        and a.tocitycode=tt.cityid and a.tocitycode in 
        ( select distinct e.cityid CityID from [users] a,user_role b,[role] c,[roletype] d ,
				 role_city e where  a.userid=b.userid and  b.RoleID=c.RoleID and  
				 c.roletypeid=d.roletypeid and   b.roleid=e.roleid and c.roleid=e.roleid and  
				 a.UserID = @UserId ) 
        and a.InstID=tt.InstID 
        and a.bVisible=1 and a.cycle_no = @CycleNo 
        and a.repcreationdate between convert(datetime,@DateFrom)
        and convert(datetime,@DateTo)
        and bspecial=0 
        and a.instid = @InstID
        order by InstName asc,branch_name asc,cityname,a.reploadtime desc

	END
else 
BEGIN
		Select a.bUpdated,a.repid,a.repname,a.repdesc,a.bDownload,
        convert(varchar(20), RepLoadTime,105) Fileupdatedate, convert(varchar(10), CAST(RepLoadTime AS TIME), 0) Fileupdatetime, 
        a.repsize,a.tocitycode,cc.cityname cityname,a.reptype,convert(varchar(20),reploadtime,120) reploadtime,convert(varchar(20),repmodified,105) repmodified ,
        convert(varchar(20),repcreationdate,105) repcreationdate,a.reppath,c.InstName InstName,
        tt.branch_name branch_name  From Report a inner join reporttype b on a.RTID=b.RTID 
        and lower(RTName) like @RepName
        inner join institution c on a.InstID=c.InstID 
        inner join city cc on a.tocitycode=cc.cityid inner join #BankBranch tt on 
        a.branchid=tt.branchid 
        and a.tocitycode=tt.cityid and a.tocitycode in 
        (@CityID) 
        and a.InstID=tt.InstID 
        and a.bVisible=1 and a.cycle_no = @CycleNo 
        and a.repcreationdate between convert(datetime,@DateFrom)
        and convert(datetime,@DateTo)
        and bspecial=0 
        and a.instid = @InstID
        order by InstName asc,branch_name asc,cityname,a.reploadtime desc
	END

END 
EXEC sp_CPUusers @myid=26895
.


select * from tickets

update tickets set sbankname = '062'