-- Pratybos 5 --

-- 1. 
SELECT `authors`.`authorId`, `authors`.`name` FROM `authors` UNION SELECT `books`.`authorId`, `books`.`title` FROM `books`;