--PRETTIER SOLUTION
SELECT id,
       name, 
       split_part(characteristics, ',', 1) as characteristic
  FROM monsters
ORDER BY id;


-- MY SOLUTION
SELECT id, name, 
    CASE POSITION(',' IN characteristics)
      WHEN 0 THEN characteristics
      ELSE SUBSTRING(characteristics, 1, position(',' IN characteristics) - 1) 
  END
AS characteristic
FROM monsters
ORDER BY id;
