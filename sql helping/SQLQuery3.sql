USE [NIBCIMG]
GO
/****** Object:  StoredProcedure [dbo].[SP_SummeryReturn_Inward]    Script Date: 8/22/2023 11:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  -- Author:  <Author,,Name>  -- Create date: <Create Date,,>  -- Description: <Description,,>  -- =============================================  

select * from users

sp_helptext SP_TransactionwiseInward_isAuthSumm '2023-06-15 00:00:00','54','2365','5','81'
select * from vHostNIBC
ALTER PROCEDURE [dbo].[SP_SummeryReturn_Inward] '2023-06-15' ,'54','81','5'   (   
@pdate date,  
@bkcode int,   
@citycode int,  
@cycleno int  ) 
AS  
BEGIN    
if @cycleno <> 20 and @cycleno <> 22   

--Inward   
select t.BankID,t.BankName,t.BranchID,t.BranchName,t.CycleID,t.cycle_desc,   sum(t.ClgItems)as ClgItems,sum(t.ClgAmount)as ClgAmount,sum(t.Rtn_items)as Rtn_items,  
sum(t.Rtn_Amount)as Rtn_Amount,t.CityCode,t.CityName,   --sum(t.PayCount) as PayCount,sum(t.ClgAmount) - sum(t.Rtn_Amount) as PayAmount,sum(t.NonPayCount) as NonPayCount,
SUM(t.NonPayAmount)as NonPayAmount,   
--15-09-2021 sum(t.PayCount) as Pay,sum(t.ClgAmount) as PayAmount,sum(t.NonPayCount) as NonPayCount,SUM(t.NonPayAmount)as NonPayAmount,   
sum(t.ClgItems) - sum(t.Rtn_items) as Pay,sum(t.ClgAmount) - sum(t.Rtn_Amount) as PayAmount,sum(t.NonPayCount) as NonPayCount,SUM(t.NonPayAmount)as NonPayAmount,   
sum(t.Reject) as Reject,sum(t.RejectAmount) as RejectAmount,sum(t.NonSettled) as NoAction,   sum(t.NonSettledAmount) as NoActionAmount,   sum(t.Auth) as Authorize,
sum(t.AuthAmount) as AuthorizeAmount  ,sum(t.NonAuth) as NonAuth   ,sum(t.NonAuthAmount) as NonAuthAmount,sum(t.Defer) as Defer,sum(t.DeferAmount) as DeferAmount from ( 

--clg   
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,
count(a.sequenceno) as ClgItems,sum(a.amount) as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   count(a.reason)as PayCount,0 as PayAmount,0 as NonPayCount,
0 as NonPayAmount,0 as Reject,0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,0  as NonAuth,0 as NonAuthAmount, 0 as Defer,0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranch_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode   
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   
--and a.reasonid = 0   and a.onus = 'D'   
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth    

union all     

select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,   
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,
COUNT(cast(a.settled as int)) as Reject,SUM(a.Amount) as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,0 as NonAuth,0 as NonAuthAmount, 
0 as Defer,0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranch_RTGS br  
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode   
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   
--and a.reasonid = 0   and a.onus = 'D'    and a.settled <> 0    
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth     

union All     
--NonSettledCount and Amount   
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,   
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,0 as Reject,
0 as RejectAmount , count(cast(a.settled as int)) as NonSettled   , sum(a.Amount) as NonSettledAmount,   0 as Auth,0 as AuthAmount,0 as NonAuth,0 as NonAuthAmount, 0 as Defer,
0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranch_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode   
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   
--and a.reasonid = 0   and a.onus = 'D'    and a.settled = 0      and a.isauth = 0     --and a.reasonid <> 0     and a.reasonid not in (0,900)   
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth       

union all   
--Auth Count and Amount     
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,   
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,0 as Reject,
0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   COUNT(CAST(a.isauth as int)) as Auth,SUM(a.Amount)as AuthAmount,0 as NonAuth,0 as NonAuthAmount, 0 as Defer,
0 as DeferAmount
from vhostnibc a, vInstitution i, cycles c, city ct, vBranch_RTGS br   where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode  
and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode   and ct.CityID = a.cityid     and br.instid = a.receiverbank   
and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   
--and a.reasonid = 0   and a.onus = 'D'    and a.isauth = 1   
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth       

union All     
-- NonAuth Count and Amount   
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,0 as Reject,
0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,COUNT(CAST(a.isauth as int)) as NonAuth,SUM(a.Amount) as NonAuthAmount, 0 as Defer,
0 as DeferAmount
from vhostnibc a, vInstitution i, cycles c, city ct, vBranch_RTGS br  
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank   
and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode   and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch   
and br.cityid = a.cityid    and br.isOpen = 1 
--and a.reasonid = 0   and a.onus = 'D'    and a.isauth = 0    
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth      

union all   
--rtn   
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,   
0 as ClgItems,0 as ClgAmount,count(a.sequenceno) as Rtn_items,sum(a.amount) as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,
count(a.reason) as NonPayCount,sum(a.amount) as NonPayAmount,0 as Reject,0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,0 as NonAuth,
0 as NonAuthAmount, 0 as Defer,0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranch_RTGS br  
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no =  a.cycleno   and a.receiverbank = @bkcode   
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   and a.reasonid <> 0   
and a.onus = 'D'   group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason      

union all  
--Defer  
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,  
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,0 as Reject,
0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,0 as NonAuth,0 as NonAuthAmount, count(a.reason) as Defer,sum(a.amount) as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranch_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no =  a.cycleno   and a.receiverbank = @bkcode
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   and a.reasonid = '900'   
and a.onus = 'D'   group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason      )t   

group by t.BankID,t.BankName,t.BranchID,t.BranchName,t.CycleID,t.cycle_desc,t.CityCode,t.CityName    

else     
--For Dollar Clearing and Return   
--Inward   
select t.BankID,t.BankName,t.BranchID,t.BranchName,t.CycleID,t.cycle_desc,   sum(t.ClgItems)as ClgItems,sum(t.ClgAmount)as ClgAmount,sum(t.Rtn_items)as Rtn_items,  
sum(t.Rtn_Amount)as Rtn_Amount,t.CityCode,t.CityName,   
--sum(t.PayCount) as PayCount,sum(t.ClgAmount) - sum(t.Rtn_Amount) as PayAmount,sum(t.NonPayCount) as NonPayCount,SUM(t.NonPayAmount)as NonPayAmount,   
--15-09-2021 sum(t.PayCount) as Pay,sum(t.ClgAmount) as PayAmount,sum(t.NonPayCount) as NonPayCount,SUM(t.NonPayAmount)as NonPayAmount,
sum(t.ClgItems) - sum(t.Rtn_items) as Pay,sum(t.ClgAmount) - sum(t.Rtn_Amount) as PayAmount,sum(t.NonPayCount) as NonPayCount,SUM(t.NonPayAmount)as NonPayAmount,  
sum(t.Reject) as Reject,sum(t.RejectAmount) as RejectAmount,sum(t.NonSettled) as NoAction,   sum(t.NonSettledAmount) as NoActionAmount,   sum(t.Auth) as Authorize,
sum(t.AuthAmount) as AuthorizeAmount  ,sum(t.NonAuth) as NonAuth   ,sum(t.NonAuthAmount) as NonAuthAmount,sum(t.Defer) as Defer,sum(t.DeferAmount) as DeferAmount from (     

--clg   
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,   
count(a.sequenceno) as ClgItems,sum(a.amount) as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   count(a.reason)as PayCount,0 as PayAmount,0 as NonPayCount,
0 as NonPayAmount,0 as Reject,0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,0  as NonAuth,0 as NonAuthAmount, 0 as Defer,0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranchDollar_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode   
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   
--and a.reasonid = 0   and a.onus = 'D'   
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth     

union all    
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,   
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,
COUNT(cast(a.settled as int)) as Reject,SUM(a.Amount) as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,0 as NonAuth,0 as NonAuthAmount, 
0 as Defer,0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranchDollar_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode   
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   
--and a.reasonid = 0   and a.onus = 'D'    and a.settled <> 0    
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth    

union All     
--NonSettledCount and Amount  
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,0 as Reject,
0 as RejectAmount , count(cast(a.settled as int)) as NonSettled   , sum(a.Amount) as NonSettledAmount,   0 as Auth,0 as AuthAmount,0 as NonAuth,0 as NonAuthAmount, 0 as Defer,
0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranchDollar_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode   
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   
--and a.reasonid = 0   and a.onus = 'D'    and a.settled = 0      and a.isauth = 0     --and a.reasonid <> 0     and a.reasonid not in (0,900)   
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth       

union all   
--Auth Count and Amount     
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,   
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,0 as Reject,
0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   COUNT(CAST(a.isauth as int)) as Auth,SUM(a.Amount)as AuthAmount,0 as NonAuth,0 as NonAuthAmount, 0 as Defer,
0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranchDollar_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode  
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   
--and a.reasonid = 0   and a.onus = 'D'    and a.isauth = 1    
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth       

union All     
-- NonAuth Count and Amount     
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,  
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,0 as Reject,
0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,COUNT(CAST(a.isauth as int)) as NonAuth,SUM(a.Amount) as NonAuthAmount, 0 as Defer,
0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranchDollar_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no = a.cycleno    and a.receiverbank = @bkcode 
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1  
--and a.reasonid = 0   and a.onus = 'D'    and a.isauth = 0    
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason,a.isauth       

union all   
--rtn   
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,  
0 as ClgItems,0 as ClgAmount,count(a.sequenceno) as Rtn_items,sum(a.amount) as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,count(a.reason) as NonPayCount
,sum(a.amount) as NonPayAmount,0 as Reject,0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,0 as NonAuth,0 as NonAuthAmount, 0 as Defer,
0 as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranchDollar_RTGS br 
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   
and i.InstID = a.receiverbank    and c.cycle_no =  a.cycleno   and a.receiverbank = @bkcode   and ct.CityID = a.cityid     and br.instid = a.receiverbank   
and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   and a.reasonid <> 0   and a.onus = 'D'  
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason     

union all   
--Defer  
select i.instid as BankID,i.InstName as BankName,a.receiverbranch as BranchID,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as BranchName,c.cycle_no as CycleID,c.cycle_desc,  
0 as ClgItems,0 as ClgAmount,0 as Rtn_items,0 as Rtn_Amount,ct.CityID as CityCode,ct.CityName,   0 as PayCount,0 as PayAmount,0 as NonPayCount,0 as NonPayAmount,0 as Reject,
0 as RejectAmount , 0 as NonSettled,   0  as NonSettledAmount,   0 as Auth,0 as AuthAmount,0 as NonAuth,0 as NonAuthAmount, count(a.reason) as Defer,sum(a.amount) as DeferAmount 
from vhostnibc a, vInstitution i, cycles c, city ct, vBranchDollar_RTGS br   
where Processdate = @pdate   and a.cycleno = @cycleno   and a.cityid = @citycode   and i.InstID = a.receiverbank    and c.cycle_no =  a.cycleno   and a.receiverbank = @bkcode 
and ct.CityID = a.cityid     and br.instid = a.receiverbank    and br.branchid = a.receiverbranch    and br.cityid = a.cityid    and br.isOpen = 1   and a.reasonid = '900'  
and a.onus = 'D'   
group by i.instid,i.InstName,a.receiverbranch,br.branch_name,c.cycle_no,c.cycle_desc,ct.CityID,ct.CityName,a.reason      )t   
group by t.BankID,t.BankName,t.BranchID,t.BranchName,t.CycleID,t.cycle_desc,t.CityCode,t.CityName    

END  




