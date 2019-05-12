select CAST(RAND(CRYPT_GEN_RANDOM(5)) * 1000 AS INTEGER);


/*
example loop
*/
DECLARE @cnt INT = 0;

WHILE @cnt < 10
BEGIN
   
	select CAST(RAND(CRYPT_GEN_RANDOM(5)) * 1000 AS INTEGER) AS RandomNum;
   
   SET @cnt = @cnt + 1;
END;



/*
example if/else
*/

DECLARE @site_value INT;
SET @site_value = 15;

IF @site_value < 25
   PRINT 'TechOnTheNet.com';
ELSE
   PRINT 'CheckYourMath.com';

GO


/*
concat string
*/

SELECT CONCAT('TechOnTheNet', '.com');
-- Result: 'TechOnTheNet.com'

SELECT CONCAT('Tech', 'On', 'The', 'Net', '.com');
-- Result: 'TechOnTheNet.com'

SELECT CONCAT('Tech ', 'On ', 'The ', 'Net');
-- Result: 'Tech On The Net'





SELECT SUBSTRING('TechOnTheNet.com', 1, 4);
Result: 'Tech'

SELECT SUBSTRING('TechOnTheNet.com', 5, 2);
Result: 'On'

SELECT SUBSTRING('TechOnTheNet.com', 9, 1);
Result: 'e'



SELECT 'TechOnTheNet' + '.com';
Result: 'TechOnTheNet.com'

SELECT 'Tech' + 'On' + 'The' + 'Net' + '.com';
Result: 'TechOnTheNet.com'

SELECT 'Tech ' + 'On ' + 'The ' + 'Net';
Result: 'Tech On The Net'






SELECT CHARINDEX('t', 'TechOnTheNet.com');
Result: 1          (search is not case-sensitive so it will match on 'T')

SELECT CHARINDEX('t', 'TechOnTheNet.com', 2);
Result: 7

SELECT CHARINDEX('t', 'TechOnTheNet.com', 8);
Result: 12

SELECT CHARINDEX('ON', 'TechOnTheNet.com');
Result: 5          (search is not case-sensitive so it will match on 'On')

SELECT CHARINDEX('z', 'TechOnTheNet.com');
Result: 0




SELECT SUBSTRING('TechOnTheNet.com', 1, 4);
Result: 'Tech'

SELECT SUBSTRING('TechOnTheNet.com', 5, 2);
Result: 'On'

SELECT SUBSTRING('TechOnTheNet.com', 9, 1);
Result: 'e'



