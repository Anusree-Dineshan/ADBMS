create database programs;
use programs;
DELIMITER // 
drop procedure if exists oddeven //  
CREATE PROCEDURE oddeven(in n int)                     
BEGIN         
DECLARE  num int;	 
 if mod(n,2)=0
then
select concat(n,'number is even');
else
select concat(n,'number is odd');
end if;
END //      
DELIMITER ;  
 call oddeven(2);
