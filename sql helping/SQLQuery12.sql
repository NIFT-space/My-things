
select * from users

update users set Password = 'NVZVX/k5Yzxm9/TCwyxi8rIAScjs6aH11f8zS82owdg=' where userid=26901

select * from bankemail

select REPLICATE('0',3-LEN(BankCode))+CAST(BankCode AS varchar) + ' - ' + REPLICATE('0',4-LEN(BranchCode))+CAST(BranchCode AS varchar) as Branch , c.CityName as City
, a.Email1 + '@'+ a.Domain1 as Email1 ,a.Email2 + '@'+ a.Domain2 as Email2 

from BankEmail a, City c
where a.CityID = c.CityID
order by BankCode asc

 i.InstName, bb.branch_name
from bankemail a
, Institution i , bankbranch bb
where a.BankCode = i.InstID and bb.branchid = a.BranchCode



