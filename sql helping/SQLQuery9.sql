USE [NIBC]
GO

/****** Object:  Table [dbo].[ClearingDate]    Script Date: 8/30/2023 12:41:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ClearingDate](
	[ProcessDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClearingDate] PRIMARY KEY CLUSTERED 
(
	[ProcessDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

update report set repname='BRTS017000270010082923180006.zip' where repid= 40549

select * from ClearingDate

insert into ClearingDate
select '2023-08-29 00:13:00.000'

delete from ClearingDate where ProcessDate > '2023-08-29 00:13:00.000'

select * from vnetscore ('2023-08-12' , '54')
 Select * from vNetScore_Pakwise ('2023-08-30 00:00:00',54)

  Select * from vNetScore_citywise ('2023-08-30 00:00:00',54)

  Select * from vNetScore_branchwise ('2023-08-30 00:00:00',54)

sp_helptext vNetScore_Pakwise

update hostnets set pdate = '2023-08-30 00:00:00.000' , loaddate='2023-08-30 00:00:00.000' 

sp_get_BrReport_Files 

select * from hostnets

select * from Report order by repid desc

select * from Institution where instid=86
sp_get_BkReport_Files 26887, 10, 7, '2023-08-29 00:00:00', '2023-08-30 23:59:00', '86', 'bkts%'

CREATE FUNCTION [dbo].[vNetScore_Pakwise]   
(   
 @pdate date,  
 @bkcode int  
)  
  
RETURNS TABLE   
AS  
  
RETURN  
(  
--002 Citywise new  
select t.BankID,t.BankName,t.CycleID,t.cycle_desc,  
t.IWOWID,t.Clgtype,sum(t.Items) as Items,sum(t.Amount)as Amount from (  
select i.instid as BankID,i.InstName as BankName,c.cycle_no as CycleID,c.cycle_desc,  
1 as IWOWID,'Outward' as Clgtype,sum(a.outitems) as [Items],sum(a.outamt) as Amount from HostNets a, vInstitution i, cycles c  
where loaddate = @pdate  
and i.InstID = a.bank_code   
and c.cycle_no = a.cycleno   
and a.bank_code = @bkcode  
group by i.instid,i.InstName,c.cycle_no,c.cycle_desc,a.outitems,a.outamt  
union all  
select i.instid as BankID,i.InstName as BankName,c.cycle_no as CycleID,c.cycle_desc,  
0 as IWOWID,'Inward' as Clgtype,sum(a.initems) as [Items],sum(a.inamt) as Amount  from HostNets a, vInstitution i, cycles c  
where loaddate = @pdate  
and i.InstID = a.bank_code   
and c.cycle_no = a.cycleno   
and a.bank_code = @bkcode  
group by i.instid,i.InstName,c.cycle_no,c.cycle_desc,a.outitems,a.outamt  
)t  
group by t.BankID,t.BankName,t.CycleID,t.cycle_desc,t.IWOWID,t.Clgtype   
--order by t.BankID,t.BankName,t.CycleID,t.cycle_desc,t.CityCode  
  
);  
  
