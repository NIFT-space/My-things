/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Bookid]
      ,[Bookname]
      ,[BookTitle]
      ,[AuthorName]
      ,[PublisherName]
      ,[Categoryid]
      ,[Update_date]
      ,[BookQty]
  FROM [LMS].[dbo].[Books]


  update books
  set BookQty=0
  where bookid=3012

  select * from Books

  select * from Borrower

  select * from Members

  Select bk.Bookid,bk.Bookname,AuthorName,br.borrowdate,br.End_date,br.Days,bcat.Category_name,bc.Book_image 
  from Borrower br, books bk, BooksCapture bc, BookCategories bcat 
  where bk.Bookid = bc.Bookid and br.bookid = bk.bookid and bk.Bookid=bc.Bookid
  and bk.Categoryid = bcat.Categoryid and br.memberid = 3
  
  select bk.Bookid,bk.Bookname,AuthorName,br.borrowdate,br.End_date,br.Days--,bcat.Category_name,bc.Book_image 
  from Borrower br, Books bk, BooksCapture bc--, BookCategories bcat
  where br.memberid=3 and br.Bookid= bk.Bookid and bk.Bookid=bc.Bookid

  select [Formid],[memberid],[Fullname],[cnic],[Emailaddress],[Phoneno],[borrowdate],[End_date],[Days],[Bookid],[Bookname],[Createdby],[ReqStatus]
 from Borrower br where br.ReqStatus = 0
 Order by br.borrowdate desc,br.Fullname asc

 select * from Borrower where formid=1006

 SELECT Formid,borrowdate,GETDATE(),days, days - (DATEDIFF(DAY,borrowdate, getdate())) AS DateDiff2  from Borrower

 select DATEDIFF(DAY,borrowdate, getdate()) AS DateDiff2  from Borrower

 update Borrower set formactivestatus=1 where Formid=1006

  select * from Books where bookid=3012
  update books
  set BookQty= bookqty +1
  where bookid=3012

  update borrower
  set bookid=3012
  where Formid=1006

