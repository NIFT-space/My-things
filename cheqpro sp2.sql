USE [ChequePro]
GO
/****** Object:  StoredProcedure [dbo].[SP_ChequeRecordList]    Script Date: 3/1/2024 2:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_ChequeRecordList] --86,1574,'109000290239762'
	@bankcode int,
	@branchcode int,
	@account varchar(20)

AS
BEGIN
	
/*CHeque listing SP*/
select top 10 
	vh.hostid, 
	REPLICATE('0',8-LEN(vh.ChequeNo))+CAST(vh.ChequeNo AS varchar) as ChequeNo, 
	REPLICATE('0',16-LEN(vh.AccountNo))+CAST(vh.AccountNo AS varchar) as AccountNo, 
	vh.Amount, 
	vh.Processdate, 
	REPLICATE('0',3-LEN(vh.receiverbank))+CAST(vh.receiverbank AS varchar) as receiverbank , 
	REPLICATE('0',4-LEN(vh.receiverbranch))+CAST(vh.receiverbranch AS varchar) as receiverbranch, 
	REPLICATE('0',3-LEN(vh.senderbank))+CAST(vh.senderbank AS varchar) as senderbank, 
	REPLICATE('0',4-LEN(vh.senderbranch))+CAST(vh.senderbranch AS varchar) as senderbranch, 
	vh.reasonid,
	vh.reason,
	i.instname + ' ' + b.branch_name as ReceiverBankBranchName
from NIBCIMG.dbo.vHostNIBC vh
inner Join NIBCIMG.dbo.institution i
on i.Instid = vh.receiverbank
Inner Join NIBCIMG.dbo.Branch b
on vh.receiverbranch = b.branchid and b.instid = i.Instid and b.cityid = vh.CityID
--join HOSTNIBCIMG img on img.DinNo = vh.SequenceNo
--and img.Processdate = vh.Processdate
--and img.cycleno = vh.cycleno  
where receiverbank=@bankcode and receiverbranch=@branchcode and accountno =@account
order by hostid desc

END