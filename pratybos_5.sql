-- Pratybos 5 --

-- 1. 
SELECT `Authors`.`authorId`, `Authors`.`name` FROM `Authors` UNION SELECT `Books`.`authorId`, `Books`.`title` FROM `Books`;