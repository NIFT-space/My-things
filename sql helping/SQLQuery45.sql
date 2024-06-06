
update users set UserName='yawer.aijaz@mcb.com.pk' where userid = 26895

select * from users
where userid = 26895

select * from User_Role where userid=26901

select * from role

insert into user_role
select '26895','68',getdate()

update users set islogged=1

sp_helptext sp_get_FirstTime_UserTotalInfo

sp_get_FirstTime_UserTotalInfo 'yawer.aijaz@mcb.com.pk','1566546545464560','07/08/1999','','1','Yellow'

Select userid from users  
   where islogged = 0   
   AND UserName = @userid  
   and cnic = @cnic and  
   dob = convert(varchar(10), convert(date, @dob , 105), 23) and  
   ResQuestion = @ques and  
   ResAnswer = @ans  


  
Alter PROCEDURE [dbo].[sp_get_FirstTime_UserTotalInfo]   
 @userid varchar(50),  
 @cnic varchar(20),  
 @dob varchar(20),  
 @pass varchar(50),  
 @ques varchar(1),  
 @ans varchar(50)  
AS  
BEGIN   
  ,'1566546545464','08/07/1999','','2','Yellow'

   Select * from users  
   where --islogged = 0   
    UserName = 'yawer.aijaz@mcb.com.pk'  
   and cnic = '1566546545464560' and  
   dob = convert(varchar(10), convert(date, '07/08/1999' , 105), 23) and  
   ResQuestion = 1 and  
   ResAnswer = 'Yellow'  
  update users set cnic = '55555' 
END

 update hostNIBC set  Comment2 = 'abcd nift', Comment2By = '26901', Comment2Date =GetDate() where hostid='32713'

 select * from RoleType

select * from Role_Inst_Branch where roleid=68
  
  insert into Role_Inst_Branch
  select '68',instid,branchid,GETDATE() from branch where instid=62

  update cycleend set cycleEndTime='1900-01-01 22:00:00.000' where cid in
 ( select cid from CycleEnd where bankcode=54)

 select * from users


select * from CycleEnd where cycleno=20 and BankCode=999 and weekdayName='Sat'

update CycleEnd set cycleEndTime='1900-01-01 00:00:00.000'
where cid=1739


 insert into ClearingDate
 select GETDATE()

 update vhostnibc set Processdate = '2023-09-28' where hostid in
 (select hostid from vHostNIBC where Processdate = '2023-08-02' and receiverbank=54 and cityid=72)

  select * from Report

  select * from vHostNIBC where Processdate='2023-08-02' and receiverbank=62 and CityID=20

  select * from hostnets

  update hostnets set loaddate ='20230928',pdate= '20230928' 
  
CREATE PROCEDURE [dbo].[sp_get_Inst_UserID]  
(  
@UserId varchar(10),  
@InstId varchar  
)  
AS  
DECLARE @UserInstId int  
SET @UserInstId = (select distinct top 1  e.Instid from [users] a,user_role b,[role] c,[roletype] d , role_inst_branch e   
     where  a.userid=b.userid and  b.RoleID=c.RoleID and   c.roletypeid=d.roletypeid and   b.roleid=e.roleid and c.roleid=e.roleid and   a.UserID='26895')  
    
BEGIN   
if @UserInstId IS NULL or @UserInstId = 0  
BEGIN  
 select distinct instid,instname from bankbranch   
             where instID in  (62)  
             order by instname asc  
END  
else   
select distinct instid,instname from bankbranch   
             where instID in  
    (select distinct e.Instid from [users] a,user_role b,[role] c,[roletype] d , role_inst_branch e   
     where  a.userid=b.userid and  b.RoleID=c.RoleID and   c.roletypeid=d.roletypeid and   b.roleid=e.roleid and c.roleid=e.roleid and   a.UserID=@UserId)  
             order by instname asc  
END   