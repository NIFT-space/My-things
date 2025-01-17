USE [ChequePro]
GO
/****** Object:  StoredProcedure [dbo].[SP_Cheque_Details]    Script Date: 3/1/2024 2:37:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Cheque_Details] --305904
	@hostid bigint

AS
BEGIN
	
	/*Cheque Details SP*/
	select --top 10
		hostid, 
		REPLICATE('0',8-LEN(vh.ChequeNo))+CAST(vh.ChequeNo AS varchar) as ChequeNo, 
		REPLICATE('0',16-LEN(vh.AccountNo))+CAST(vh.AccountNo AS varchar) as AccountNo, 
		vh.SequenceNo,
		vh.Amount, 
		vh.Processdate,
		vh.cycleno,
		vh.CityID, 
		REPLICATE('0',3-LEN(vh.receiverbank))+CAST(vh.receiverbank AS varchar) as receiverbank, 
		REPLICATE('0',4-LEN(vh.receiverbranch))+CAST(vh.receiverbranch AS varchar) as receiverbranch, 
		vh.reasonid,
		vh.reason, 
		case when vh.isDeffer = 0 then 'Non-Deferred' when vh.isDeffer = 1 then 'Deferred' end as isDeffer, 
		vh.isauth, 
		case when vh.Undersize_Image = 0 then 'Not Available' when vh.Undersize_Image = 1 then 'not ok' when vh.Undersize_Image = 2 then 'ok' end as Undersize_Image, 
		case when vh.Folded_or_Torn_Document_Corners = 0 then 'Not Available' when vh.Folded_or_Torn_Document_Corners = 1 then 'not ok' when vh.Folded_or_Torn_Document_Corners = 2 then 'ok' end as FoldedDocCorners,
		case when vh.Folded_or_Torn_Document_Edges = 0 then 'Not Available' when vh.Folded_or_Torn_Document_Edges = 1 then 'not ok' when vh.Folded_or_Torn_Document_Edges = 2 then 'ok' end as FoldedDocEdges, 
		case when vh.Framing_Error = 0 then 'Not Available' when vh.Framing_Error = 1 then 'not ok' when vh.Framing_Error = 2 then 'ok' end as Framing_Error,
		case when vh.Document_Skew = 0 then 'Not Available' when vh.Document_Skew = 1 then 'not ok' when vh.Document_Skew = 2 then 'ok' end as DocSkew, 
		case when vh.Oversize_Image = 0 then 'Not Available' when vh.Oversize_Image = 1 then 'not ok' when vh.Oversize_Image = 2 then 'ok' end as Oversize_Image,
		case when vh.Piggy_Back = 0 then 'Not Available' when vh.Piggy_Back = 1 then 'not ok' when vh.Piggy_Back = 2 then 'ok' end as Piggy_Back,
		case when vh.Image_Too_Light = 0 then 'Not Available' when vh.Image_Too_Light = 1 then 'not ok' when vh.Image_Too_Light = 2 then 'ok' end as Image_Too_Light, 
		case when vh.Image_Too_Dark = 0 then 'Not Available' when vh.Image_Too_Dark = 1 then 'not ok' when vh.Image_Too_Dark = 2 then 'ok' end as Image_Too_Dark, 
		case when vh.Horizontal_Streaks = 0 then 'Not Available' when vh.Horizontal_Streaks = 1 then 'not ok' when vh.Horizontal_Streaks = 2 then 'ok' end as Horizontal_Streaks,
		case when vh.Below_Minimum_Compressed_Image_Size = 0 then 'Not Available' when vh.Below_Minimum_Compressed_Image_Size = 1 then 'not ok' when vh.Below_Minimum_Compressed_Image_Size = 2 then 'ok' end as BelowMinImgsize,
		case when vh.Above_Maximum_Compressed_Image_Size = 0 then 'Not Available' when vh.Above_Maximum_Compressed_Image_Size = 1 then 'not ok' when vh.Above_Maximum_Compressed_Image_Size = 2 then 'ok' end as AboveMaxImgsize, 
		vh.Spot_Noise, 
		case when vh.Front_Rear_Dimension_Mismatch = 0 then 'Not Available' when vh.Front_Rear_Dimension_Mismatch = 1 then 'not ok' when vh.Front_Rear_Dimension_Mismatch = 2 then 'ok' end as FrontRearMismatch,
		case when vh.Carbon_Strip = 0 then 'Not Available' when vh.Carbon_Strip = 1 then 'not ok' when vh.Carbon_Strip = 2 then 'ok' end as Carbon_Strip,
		case when vh.Out_of_Focus = 0 then 'Not Available' when vh.Out_of_Focus = 1 then 'not ok' when vh.Out_of_Focus = 2 then 'ok' end as Out_of_Focus,
		case when vh.IQATag = 0 then 'Not Available' when vh.IQATag = 1 then 'not ok' when vh.IQATag = 2 then 'ok' end as IQATag,
		case when vh.barcodeMatch = 0 then 'Not Available' when vh.barcodeMatch = 1 then 'not ok' when vh.barcodeMatch = 2 then 'ok' end as barcodeMatch,
		--case when vh.UVStr = 0 then 'Not Available' when vh.UVStr = 1 then 'not ok' when vh.UVStr = 2 then 'ok' when vh.UVStr = 3 then 'missing' end as UVStr,
		case when vh.UVStr = 0 then 'N/A' when vh.UVStr = 1 then 'B.Avg/Chk%' when vh.UVStr = 2 then 'A.Avg/Chk%' end as UVStr,
		case when vh.Duplicate = 0 then 'Not Available' when vh.Duplicate = 1 then 'Duplicate' when vh.Duplicate = 2 then 'Not Duplicate' end as Duplicate,
		case when vh.MICR_Present = 1 then 'No' when vh.MICR_Present = 2 then 'YES' when vh.MICR_Present = 0 then 'Not Available' end as MICR_Present,
		vh.Average_Amount,
		case when vh.STD_Non_STD = 0 then 'Not Available' when vh.STD_Non_STD = 1 then 'Non-Standard' when vh.STD_Non_STD = 2 then 'Standard' end as STD_Non_STD,
		vh.Water_Mark,
		case when vh.isFraud = 0 then 'Non-Fraud History' when vh.isFraud = 1 then 'Fraud History' when vh.isFraud = 2 then 'Not Available' end as isFraud, 
		img.FrontImage,
		img.BackImage, 
		img.UVImage,
		i.instname as ReceiverBankName,
		b.branch_name as ReceiverBranchName,
		right('000' + cast(vh.TransCode as varchar(5)),3) as TransCode,
		vh.UVPercent,
		vh.TemplateID as UVTemplateID
	from NIBCIMG.dbo.vhostnibc vh
	join NIBCIMG.dbo.HOSTNIBCIMG img 
		on img.DinNo = vh.SequenceNo
		and img.Processdate = vh.Processdate
		and img.cycleno = vh.cycleno  
	inner Join NIBCIMG.dbo.institution i
		on i.Instid = vh.receiverbank
	Inner Join NIBCIMG.dbo.Branch b
		on vh.receiverbranch = b.branchid 
		and b.instid = i.Instid 
		and b.cityid = vh.CityID
	where hostid=@hostid

END