-- Pratybos 1 --

-- 1. 
SELECT * FROM `Books`;
-- 2. 
SELECT `title` FROM `Books` ORDER BY `title` ASC;
-- 3. 
SELECT `authorId`, count(*) AS `Author` FROM `Books` GROUP BY `authorId`;