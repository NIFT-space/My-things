
proID
sequenceNo
recbank
recbranch
imagefile

select * from HostNIBC


select * from Cheques
order by pdate desc

select * from ImageData
where pdate = '2022-03-30'
order by pdate desc

select * from ImageData where seqno=100100155
and pdate='2022-03-30'

SELECT imagedata FROM ImageData WHERE pdate = '2022-03-30' and seqno=100100052 and imagetype='R'

update ImageData set seqno='100100099' where seqno=100100002 and pdate='2022-03-30'

delete from ImageData
where seqno =200100005
and pdate='2022-03-30'