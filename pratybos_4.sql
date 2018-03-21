-- Pratybos 4 --

-- 1.1. 
SELECT `Authors`.`name`, Count(`Books`.`bookId`) FROM `Books` INNER JOIN `Authors` ON `Authors`.`authorId` = `Books`.`authorId` GROUP BY `Books`.`authorId`;
-- 1.2. 
SELECT `Authors`.`name`, Count(`Books`.`bookId`) FROM `Authors` LEFT JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId` GROUP BY `Authors`.`authorId`; 
-- 2. 
DELETE Authors FROM `Authors` LEFT JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId` WHERE `Books`.`authorId` IS NULL; 