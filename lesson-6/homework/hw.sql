Puzzle 1: Finding Distinct Values

SELECT DISTINCT 
LEAST(col1, col2) AS col1_sorted,
GREATEST(col1, col2) AS col2_sorted
FROM InputTbl


LEAST and GREATEST ensure that each pair is always represented in the same order (('a', 'b'), never ('b', 'a')).

Then DISTINCT eliminates duplicate rows.

SELECT DISTINCT
  CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1_sorted,
  CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2_sorted,
FROM InputTb1;


CASE WHEN col1 < col2 THEN col1 ELSE col2	Picks the smaller of the two
CASE WHEN col1 < col2 THEN col2 ELSE col1	Picks the larger of the two
DISTINCT	Removes duplicate normalized pairs

Puzzle 2: Removing Rows with All Zeroes

SELECT * FROM TestMultipleZero
WHERE NOT(A = 0 AND B = 0 AND C = 0)

Puzzle 3: Find those with odd ids

SELECT NAME, id
FROM section1
WHERE id = (SELECT MIN(id) FROM section1);

SELECT NAME, id
FROM section1
WHERE id = (SELECT MAX(id) FROM section1);

SELECT * FROM section1
WHERE NAME LIKE 'b%'

SELECT * FROM ProductCodes
WHERE Code LIKE '%[_]%'
