

 SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a INNER JOIN Branch b ON a.InstID = b.instid 
 INNER JOIN (  select a.branchid,a.instid,a.locality cityid,b.branch_name from [users] a,branch b  
 where a.userid='26245' and a.branchid=b.branchid and a.instid=b.instid and a.locality=b.cityid  ) tt 
 ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid WHERE (a.InstID = 64) AND(b.cityid = 86) 
 ORDER BY b.isopen desc,b.branch_name

 select isBranchUser from [users] a where (a.UserID='26245')

 select * from branch where 
-- cityid=86 
 branchid=16 and instid=64

 select * from users where InstID=43 and BranchID=630

 select a.branchid,a.instid,rc.CityID cityid,b.branch_name from [users] a,branch b ,User_Role ur, Role_City rc
 where a.userid='26451' and a.branchid=b.branchid and a.instid=b.instid and ur.UserID=a.userid and ur.RoleID=rc.RoleID and rc.CityID=b.cityid

 select a.branchid,a.instid,a.locality cityid,b.branch_name from [users] a,branch b  
 where a.userid='26245' and a.branchid=b.branchid and a.instid=b.instid and a.locality=b.cityid

 SELECT a.InstID, a.InstName, b.branchid, b.branch_name FROM Institution a 
 INNER JOIN Branch b ON a.InstID = b.instid INNER JOIN (  select a.branchid,a.instid,a.locality cityid,b.branch_name from [users] a,branch b  
 where a.userid='26451' and a.branchid=b.branchid and a.instid=b.instid and a.locality=b.cityid  ) tt 
 ON b.instid = tt.InstID AND b.branchid = tt.BranchID AND b.cityid = tt.cityid WHERE (a.InstID = 43) AND(b.cityid = 71) 
 ORDER BY b.isopen desc,b.branch_name

 select * from User_Role
 where UserID=26245

 select * from Role_City where RoleID=784

 select * from bankemail2


