-- Pratybos 7 --

-- 1. 
CREATE TABLE `book_authors` ( `bookId` INT(11) NOT NULL , `authorId` INT(11) NOT NULL , PRIMARY KEY (`bookId`, `authorId`));
-- 2. 
ALTER TABLE `Books` DROP `authorId`;
INSERT INTO `book_authors` (`bookId`, `authorId`) VALUES ('1', '1'), ('1', '2'), ('1', '6'), ('2', '4');
-- 3.
SELECT `Books`.`title`, GROUP_CONCAT(`Authors`.`name`) FROM `Books` INNER JOIN `book_authors` ON `Books`.`bookId` = `Book_authors`.`bookId` INNER JOIN `Authors` ON `Authors`.`authorId` = `book_authors`.`authorId` GROUP BY `Books`.`bookId`;
-- 4. 
ALTER TABLE `Books` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;