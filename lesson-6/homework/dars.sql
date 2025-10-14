-- Puzzle 1: Finding Distinct Values

SELECT DISTINCT 
    LEAST(col1, col2) AS col1,
    GREATEST(col1, col2) AS col2
FROM InputTbl;

-- Puzzle 2: Removing Rows with All Zeroes

SELECT *
FROM TestMultipleZero
WHERE NOT (A = 0 AND B = 0 AND C = 0 AND D = 0);

-- Puzzle 3: Find those with odd ids

SELECT *
FROM section1
WHERE id % 2 = 1;

-- Puzzle 4: Person with the smallest id (use the table in puzzle 3)

SELECT *
FROM section1
WHERE id = (SELECT MIN(id) FROM section1);

-- Puzzle 5: Person with the highest id (use the table in puzzle 3)

SELECT *
FROM section1
WHERE id = (SELECT MAX(id) FROM section1);

-- Puzzle 6: People whose name starts with b (use the table in puzzle 3)

SELECT *
FROM section1
WHERE LOWER(name) LIKE 'b%';

-- Puzle 7: Write a query to return only the rows where the code contains the literal underscore _ (not as a wildcard).

SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';

