USE [NIBCIMG]
GO
/****** Object:  UserDefinedFunction [dbo].[vTransactionwise]    Script Date: 9/30/2023 4:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

select * from HostNets

update hostnets set loadDate='20230802',pdate='20230802'

select * from vTransactionwise('20230928','54')

select * from HostNets

ALTER FUNCTION [dbo].[vTransactionwise] '20230928','54'
(	
	@pdate date,
	@bkcode int
	
)

RETURNS TABLE 
AS



RETURN
(
 
-- 004 Transaction wise
select a.hostID,a.senderbank as SBkId,ii.InstName as SBkNm,a.senderbranch as SBrId,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as SBrNm,a.receiverbank as RBkId,i.InstName as RBkNm,
a.receiverbranch as RBrId,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as RBrNm,a.SequenceNo as TrCode,c.cycle_no as CycleId,c.cycle_desc as CycleDesc,a.ChequeNo as ChqNo,
a.AccountNo as AccNo,a.TransCode as TrId,
0 as IWOWID,'Inward' as ClgType,ct.CityId,ct.CityName,a.Amount,
'Yes' as IQA,'Yes' as UV,'No' as Bar,'Yes' as MICR,case when  a.TransCode = 9 then 'No' else 'Yes' end as [Std],0 as Dup,
isDeffer,
'No' as WMark,
isFraud,
TemplateID,UVPercent,
0.00 as AvgChqSize,0 as TChq,0 as TChqR

  from vhostnibc a, Institution i,Institution ii, cycles c, city ct, branch br--, branch brr
where a.Processdate = @pdate
and c.cycle_no = a.cycleno
and ct.CityID = a.CityID 
and a.receiverbank = @bkcode
and a.onus = 'D'
and i.InstID = a.receiverbank 
and br.instid = a.receiverbank 
and br.branchid = a.receiverbranch
and br.cityid = a.CityID 
and br.isOpen = 1
and ii.InstID = a.senderbank 
--and brr.instid = a.senderbank 
--and brr.branchid = a.senderbranch 
--and brr.cityid = a.CityID 
--and brr.isOpen = 1
group by a.hostID,a.senderbank,a.senderbranch,a.receiverbank,ii.InstName,i.InstName,a.receiverbranch,br.branch_name--,brr.branch_name
,c.cycle_no,c.cycle_desc,a.SequenceNo,
a.ChequeNo,a.AccountNo,a.TransCode,a.Amount,ct.CityID,ct.CityName,a.TemplateID,a.UVPercent,a.isDeffer,isFraud


union all

select a.hostID,a.senderbank as SBkId,i.InstName as SBkNm,a.senderbranch as SBrId,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as SBrNm,a.receiverbank as RBkId,ii.InstName as RBkNm,
a.receiverbranch as RBrId,ltrim(rtrim(REPLACE(br.branch_name, ',',' '))) as RBrNm,a.SequenceNo as TrCode,c.cycle_no as CycleId,c.cycle_desc as CycleDesc,a.ChequeNo as ChqNo,
a.AccountNo as AccNo,a.TransCode as TrId,
1 as IWOWID,'Outward' as ClgType,ct.CityId,ct.CityName,a.Amount,
'Yes' as IQA,'Yes' as UV,'No' as Bar,'Yes' as MICR,case when  a.TransCode = 9 then 'No' else 'Yes' end as [Std],0 as Dup,
isDeffer,
'No' as WMark,
isFraud,
TemplateID,UVPercent
,0.00 as AvgChqSize,0 as TChq,0 as TChqR
  from vHostNIBC a, Institution i,Institution ii, cycles c, city ct, branch br--, branch brr
where a.Processdate = @pdate
and c.cycle_no = a.cycleno
and ct.CityID = a.CityID 
and a.senderbank = @bkcode
and a.onus = 'D'
and i.InstID = a.senderbank 
and br.instid = a.senderbank 
and br.branchid = a.senderbranch 
and br.cityid = a.CityID 

and br.isOpen = 1
and ii.InstID = a.receiverbank 
--and brr.instid = a.receiverbank 
--and brr.branchid = a.receiverbranch 
--and brr.cityid = a.CityID 
--and brr.isOpen = 1
group by a.hostID,a.senderbank,a.senderbranch,a.receiverbank,ii.InstName,i.InstName,a.receiverbranch,br.branch_name--,brr.branch_name
,c.cycle_no,c.cycle_desc,a.SequenceNo,a.ChequeNo,
a.AccountNo,a.TransCode,a.Amount,ct.CityID,ct.CityName,a.TemplateID,a.UVPercent,a.isDeffer,isFraud

--order by c.cycle_no,ct.CityID,a.senderbank,a.senderbranch,a.receiverbank,a.receiverbranch ,a.SequenceNo,a.ChequeNo
);
