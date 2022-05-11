create database Library;
use Library;
create table Bookdetails(bookno int primary key,bookname varchar(30),bookauthor varchar(30));
create table issuedetails(issueid int primary key,bookno int,issuedate date,returnstatus char(5));
create table returndetails(returnid int primary key,issueid int,bookno int,returndate date);
insert into Bookdetails(bookno,bookname,bookauthor)values(123,'Introduction to C','Balaguruswami');
insert into Bookdetails(bookno,bookname,bookauthor)values(124,'Advanced Operating System','Niranjan');
insert into Bookdetails(bookno,bookname,bookauthor)values(125,'Advanced Data Structures','Stephen');
insert into Bookdetails(bookno,bookname,bookauthor)values(126,'Database System Concepts','Abhraham Silberschatz');
insert into Bookdetails(bookno,bookname,bookauthor)values(127,'Introduction to Java','E.Balagurusami');
DELIMITER //
CREATE PROCEDURE orderofbooktitle()
BEGIN
select * from Bookdetails order by bookname asc;
END //
DELIMITER ;
call orderofbooktitle();


DELIMITER //
drop procedure if exists bookreturn//
CREATE PROCEDURE bookreturn()
BEGIN
insert into returndetails values(5,4,4,curdate());
update issuedetails set returnstatus = 'yes' where issueID =7;
select * from issuedetails;
END //
DELIMITER ;
call bookreturn();