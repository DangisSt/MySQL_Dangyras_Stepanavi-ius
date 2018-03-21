-- Pratybos 1 --

-- 1. 
SELECT * FROM `books`;
-- 2. 
SELECT `title` FROM `books` ORDER BY `title` ASC;
-- 3. 
SELECT `authorId`, count(*) AS `author` FROM `books` GROUP BY `authorId`;