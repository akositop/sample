DROP PROCEDURE IF EXISTS spPalindromeChecker;
-- USAGE: 
-- CALL spPalindromeChecker('rossor', @isReverse);
-- SELECT @isReverse;
CREATE DEFINER = 'root'@'localhost'
PROCEDURE testdb.gilbert_procedure(
  IN name varchar(255),
  OUT isReverse varchar(255))
BEGIN
  DECLARE reverseString VARCHAR(255);
  DECLARE originalString VARCHAR(255);

  SELECT 
    REVERSE(person_name),person_name INTO @reverseString,@originalString 
  FROM 
    person 
  WHERE 
    person_name = name;

  IF @reverseString = @originalString THEN
    SET isReverse = 'Palindrome';
  ELSE
    SET isReverse = 'Not Palindrome';
  END IF;
END
