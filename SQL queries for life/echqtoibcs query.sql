
update vhostnibc set Processdate='2022-04-16 00:00:00.000'
where hostid in
(select hostID from vHostNIBC where --cycleno=51 and 
Processdate = '2022-06-16 00:00:00.000')
order by Processdate desc

select * from vHostNIBC where receiverbank=014
--where cycleno=52 and 
--Processdate = '2022-06-16 00:00:00.000'
order by hostid desc

select * from UploadICLData where bankID=014

select * from hostpro where --cycleno=51 and 
Processdate = '2022-06-16 00:00:00.000'

H:\Optima\Optimanew\Panini_20220616_5110.bin

status 5A accept echeque
status 5R reject echq
status 1 unauthorize 1A accept 1R reject - digital cheque

Update vhostnibc set --trunctime='1900-01-01 00:00:00.000',settime='1900-01-01 00:00:00.000'
--reasonid=0,reason='Pay',truncby=0,setby=0,bDownload=0, 
--capturedate='2022-04-16 00:00:00.000' 
 --,Prodate='16-04-2022'
--,processdate='2022-04-16 00:00:00.000'
--,ChequeNo='',AccountNo='',Amount='',cycleno= '51',reasonid=0, receiverbank=,receiverbranch=,senderbank=,senderbranch=
where hostid =  55059335 ,55059336)

55054793
in
(55054791,
55054792,
55054793,
55044776)

exec sp_updatestats

insert into ClearingDate
select '2022-06-16 00:00:00.000'

select * from vCycleClearing

select * from cycles

insert into cycles
select '62','Digital Cheque Return','12'

update cycles set cycle_desc='eCheque Return'--,cycle_no=51
where cycle_no= 61

51	eCheque Clearing
52	Digital Cheque Clearing
61	eCheque Returns
62	Digital Cheque Return

select * from vCycleEndDiff where cycleNo=51

select * from cycles

