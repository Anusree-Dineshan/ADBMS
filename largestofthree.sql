use programs;
DELIMITER //
CREATE PROCEDURE largestofthree()
BEGIN
DECLARE a,b,c INT;
SET a=10;
SET b=20;
SET c=30;
if(a>=b)then
if(a>=c)then
select concat(a,'is the largest number');
end if;
else
if(b>=c)then
select concat(b,'is the largest number');
else
select concat(c,'is the largest number');
end if;
end if;
END //
DELIMITER ;
call largestofthree();



