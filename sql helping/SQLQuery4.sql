USE NIBC
GRANT EXEC ON NIBC TO PUBLIC


CREATE ROLE db_executor;
GRANT EXECUTE TO db_executor;
EXEC sp_addrolemember 'db_executor', 'ibcs2'

select * from return_reasons

sp_helptext sp_get_Inward_Clearing_Cycle_Timing sp_get_Branch_Data_Files '26901','10','7' ,'2023-06-27 00:00.000','2023-06-27 23:00.000','54'

select * from cycleend
where bankcode=999

delete from clearingdate where processdate = '2023-10-20 10:01:45.190'

  select * from return_reasons

  delete from return_reasons where reasondesc='Pay'

  insert into return_reasons
  select '','Pay',1
  
  insert into clearingdate
  select getdate()


  select * from users

  update users set locktime=null
  where userid=26901

  
CREATE PROCEDURE [dbo].[sp_get_Branch_Data_Files]  
(  
@UserId int,   
@CityID int,  
@CycleNo int,  
@DateFrom varchar(50),  
@DateTo varchar(50),  
@InstID int  
)  
AS  
  
BEGIN   
if @CityID = 0  
 BEGIN  
  Select a.bUpdated,a.repid,a.repname,a.repdesc,a.repsize,a.tocitycode,cc.cityname cityname,a.reptype,a.bDownload,  
             convert(varchar(20),  
             reploadtime,120) reploadtime,convert(varchar(20),repmodified,105) repmodified ,cy.cycle_desc cycle_desc,  
             convert(varchar(20),repcreationdate,105) repcreationdate,a.reppath,c.InstName InstName,  
             convert(varchar(20), reploadtime,105) Fileupdatedate, convert(varchar(10), CAST(reploadtime AS TIME), 0) Fileupdatetime,   
             tt.branch_name branch_name  From Report a inner join cycles cy on a.cycle_no=cy.cycle_no   
             inner join reporttype b on a.RTID=b.RTID   
             inner join institution c on a.InstID=c.InstID   
             inner join city cc on a.tocitycode=cc.cityid inner join   
             BankBranch tt on   
             a.branchid=tt.branchid   
             and a.tocitycode=tt.cityid and a.tocitycode in   
             (select distinct e.cityid CityID from [users] a,user_role b,[role] c,[roletype] d ,  
     role_city e where  a.userid=b.userid and  b.RoleID=c.RoleID and    
     c.roletypeid=d.roletypeid and   b.roleid=e.roleid and c.roleid=e.roleid and    
     a.UserID = 26901)   
     and a.cycle_no = 7  
     and cy.cycle_no= 7  
     and a.InstID=tt.InstID and a.branchid<>0  
     and a.bVisible=1 and reptype='.zip'  
     and a.repcreationdate between convert(datetime,'2023-06-27 00:00.000') and convert(datetime, '2023-06-27 23:00.000')   
     and a.instid = 54  
     order by InstName asc,branch_name asc,cityname,a.reploadtime desc,RTName desc  
  
 END  
else   
BEGIN  
  Select a.bUpdated,a.repid,a.repname,a.repdesc,a.repsize,a.tocitycode,cc.cityname cityname,a.reptype,a.bDownload,  
             convert(varchar(20),  
             reploadtime,120) reploadtime,convert(varchar(20),repmodified,105) repmodified ,cy.cycle_desc cycle_desc,  
             convert(varchar(20),repcreationdate,105) repcreationdate,a.reppath,c.InstName InstName,  
             convert(varchar(20), reploadtime,105) Fileupdatedate, convert(varchar(10), CAST(reploadtime AS TIME), 0) Fileupdatetime,   
             tt.branch_name branch_name  From Report a inner join cycles cy on a.cycle_no=cy.cycle_no   
             inner join reporttype b on a.RTID=b.RTID   
             inner join institution c on a.InstID=c.InstID   
             inner join city cc on a.tocitycode=cc.cityid inner join   
             BankBranch tt on   
             a.branchid=tt.branchid   
             and a.tocitycode=tt.cityid and a.tocitycode in   
             (@CityId)   
     and a.cycle_no = @CycleNo  
     and cy.cycle_no= @CycleNo  
     and a.InstID=tt.InstID and a.branchid<>0  
     and a.bVisible=1 and reptype='.zip'  
     and a.repcreationdate between convert(datetime,@DateFrom) and convert(datetime,@DateTo)   
     and a.instid = @InstId  
     order by InstName asc,branch_name asc,cityname,a.reploadtime desc,RTName desc  
 END  
END   




  
  
  
  
  
CREATE PROCEDURE [dbo].[sp_get_Inward_Clearing_Cycle_Timing]  
(  
@BankCode varchar(3)  
)  
AS  
BEGIN   
  
if(@BankCode != '999')  
 BEGIN  
  select cycleNo as cycleNo,cycle_desc,  
             CASE   
             WHEN cycleNo = 1  THEN '3'   
             WHEN cycleNo = 2  THEN '1'   
             WHEN cycleNo = 5  THEN '2'   
             WHEN cycleNo = 20 THEN '4'   
             WHEN cycleNo = 31 THEN '5'   
             ELSE '6'   
             END AS sorder,  ct.CityName,  
             Format(cycleStartTime, 'HH:mm') as cycleStartTime,  
             Format(cycleEndTime, 'HH:mm') as cycleEndTime,MinuteDiff  
             from vCycleEndDiff a, cycles b, City ct  
             where a.cycleNo = b.cycle_no  
              and a.cityid = ct.CityID   
              and a.BankCode = @BankCode  
         order by sorder  
 END  
ElSE  
 BEGIN  
  select cycleNo as cycleNo,cycle_desc,  
             CASE   
             WHEN cycleNo = 1  THEN '3'   
             WHEN cycleNo = 2  THEN '1'   
             WHEN cycleNo = 5  THEN '2'   
             WHEN cycleNo = 20 THEN '4'   
             WHEN cycleNo = 31 THEN '5'   
             ELSE '6'   
             END AS sorder,  ct.CityName,  
             Format(cycleStartTime, 'HH:mm') as cycleStartTime,  
             Format(cycleEndTime, 'HH:mm') as cycleEndTime,MinuteDiff  
             from vCycleEndDiff a, cycles b, City ct  
             where a.cycleNo = b.cycle_no  
              and a.cityid = ct.CityID   
         order by sorder  
 END  
END   