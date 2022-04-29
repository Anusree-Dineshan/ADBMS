create database programs;
use programs;
DELIMITER // 
drop procedure if exists factorial //  
CREATE PROCEDURE factorial(in n int)                     
BEGIN         
DECLARE fact,num,i  INT ;	 
 set num=n;
 set fact=1;
 while (num > 0)do
set fact := fact * num;  
set num   := num - 1;  
end while ;
SELECT CONCAT('fact= ', fact);                        
END //      
DELIMITER ;  
 call factorial(5);

